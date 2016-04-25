using CommunityApp.Business.ServiceContracts;
using CommunityApp.Business.Services;
using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
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
        private readonly IBlogService _blogService;

        public BlogController(IBlogService blogService)
        {
            _blogService = blogService;
        }
        // GET: Blog
        public ActionResult Index()
        {
            return View(_blogService.GetAllPosts());
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

                    if (_blogService.CreatePost(newPost))
                    {
                        return RedirectToActionPermanent("Index", "Home");
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
            BlogItemDto itemDto = _blogService.GetBlogDtoById(id);

            return View(itemDto);
        }

        [HttpPost]
        public ActionResult Item(long id, string comment)
        {
            if (string.IsNullOrEmpty(comment))
                ModelState.AddModelError("Comment", "Comment is required.");
            if (ModelState.IsValid)
            {
                BlogPostComment postComment = new BlogPostComment();
                postComment.PostID = id;
                postComment.Comment = comment;
                postComment.CreatedBy = "admin";
                postComment.CreatedDate = DateTime.Now;
                postComment.UpdatedBy = "admin";
                postComment.UpdatedDate = DateTime.Now;

                if (_blogService.CreatePostComment(postComment))
                {
                    return RedirectToActionPermanent("Index", "Blog");
                }
            }
            
            return View(_blogService.GetBlogDtoById(id));
        }

    }
}