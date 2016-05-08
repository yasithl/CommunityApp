using CommunityApp.Business.ServiceContracts;
using CommunityApp.Entity;
using CommunityApp.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Controllers
{
    public class AdminController : Controller
    {
        private IUserService _userService;

        public AdminController(IUserService userService)
        {
            _userService = userService;
        }

        // GET: Admin
        [Authorize]
        public ActionResult Index()
        {
            return View(_userService.GetAllUsers().ToList());
        }

        [Authorize]
        public ActionResult Details(string id)
        {
            AspNetRole[] allRolesArr = new AspNetRole[2];

            allRolesArr[0] = new AspNetRole { Id = "Admin", Name = "Admin" };
            allRolesArr[1] = new AspNetRole { Id = "Editor", Name = "Editor" };

            ViewBag.AllRoles = allRolesArr;

            var t = _userService.GetUserById(id);
            return View(t);
        }

        [HttpPost]
        public ActionResult Details(string id, string[] SelectedRoles)
        {
            AspNetRole[] allRolesArr = new AspNetRole[2];

            allRolesArr[0] = new AspNetRole { Id = "Admin", Name = "Admin" };
            allRolesArr[1] = new AspNetRole { Id = "Editor", Name = "Editor" };

            ViewBag.AllRoles = allRolesArr;
            AspNetUser user = null;

            if (ModelState.IsValid)
            {
                try
                {
                    //Check existing roles
                    user = _userService.GetUserById(id);

                    List<AspNetRole> existRoles = user.AspNetRoles.ToList();

                    if (existRoles != null && existRoles.Count > 0)
                    {
                        string[] existRoleNames = existRoles.Select(x => x.Id).ToArray();

                        //Check for Delete
                        string[] deleteRoles = existRoleNames.Except(SelectedRoles).ToArray();

                        if (deleteRoles != null && deleteRoles.Length > 0)
                        {
                            UserManager.RemoveFromRoles(id, deleteRoles);
                        }

                        //Check for Insert
                        string[] insertRoles = SelectedRoles.Except(existRoleNames).ToArray();

                        if (insertRoles != null && insertRoles.Length > 0)
                        {
                            UserManager.AddToRoles(id, insertRoles);
                        }

                        return RedirectToActionPermanent("Index");
                    }
                    else
                    {
                        //Just Insert
                        if (SelectedRoles != null && SelectedRoles.Length > 0)
                        {
                            UserManager.AddToRoles(id, SelectedRoles);

                            return RedirectToActionPermanent("Index");
                        }
                    }

                }catch(Exception ex)
                {
                    Logger.Log.GetLogger().Error(ex);
                }

            }

            return View(user);
        }

        private ApplicationUserManager _userManager;

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }
    }
}