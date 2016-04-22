using CommunityApp.Business.Services;
using CommunityApp.Entity;
using CommunityApp.Models;
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
            BlogService service = new BlogService();

            return View(service.GetAllPosts());
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(BlogPostViewModel post)
        {
            try
            {
                BlogPost newPost = new BlogPost();

                if (ModelState.IsValid)
                {
                    newPost.Title = post.Title;
                    newPost.Description = post.Description;
                    newPost.CreatedBy = "admin";
                    newPost.CreatedDate = DateTime.Now;
                    newPost.IsActive = true;
                    newPost.UpdatedBy = newPost.CreatedBy;
                    newPost.UpdatedDate = newPost.CreatedDate;

                    BlogService service = new BlogService();

                    if (service.CreatePost(newPost))
                    {
                        RedirectToActionPermanent("Index", "Home");
                    }
                }

            }
            catch (Exception ex)
            {
                Logger.Log.GetLogger().Error(ex);
            }

            return View();
        }

        public ActionResult Item(long id)
        {
            BlogService service = new BlogService();

            return View(service.GetById(id));
        }

    }
}