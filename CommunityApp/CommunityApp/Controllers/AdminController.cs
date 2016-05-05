using CommunityApp.Business.ServiceContracts;
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
            return View();
        }
    }
}