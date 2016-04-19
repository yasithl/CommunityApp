using CommunityApp.Business.Services;
using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Controllers
{
    public class BlogController : Controller
    {
        // GET: Blog
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(BlogPost post)
        {
            try
            {
                post.CreatedBy = "admin";
                post.CreatedDate = DateTime.Now;
                post.IsActive = true;
                post.UpdatedBy = post.CreatedBy;
                post.UpdatedDate = post.CreatedDate;

                BlogService service = new BlogService();

                if (service.CreatePost(post))
                {
                    //success message
                }

            }
            catch (Exception ex)
            {
                Logger.Log.GetLogger().Error(ex);
            }

            return View();
        }
    }
}