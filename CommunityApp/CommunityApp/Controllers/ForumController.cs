using CommunityApp.Business.ServiceContracts;
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
    public class ForumController : Controller
    {
        private readonly IForumService _forumService;

        public ForumController(IForumService forumService)
        {
            _forumService = forumService;
        }

        // GET: Forum
        public ActionResult Index()
        {
            return View(_forumService.GetAllForums());
        }

        public ActionResult Create()
        {
            ForumViewModel post = new ForumViewModel();
            List<ForumCategory> categoryList = _forumService.GetlAllForumCategories().ToList();

            post.ForumCategoryList = new List<SelectListItem>();

            foreach (var item in categoryList)
            {
                post.ForumCategoryList.Add(new SelectListItem { Text = item.ForumCategoryName, Value = item.ForumCategoryId.ToString() });
            }

            return View(post);
        }

        [HttpPost]
        public ActionResult Create(ForumViewModel post)
        {
            Forum forum = new Forum();

            if (ModelState.IsValid)
            {
                forum.CreatedBy = "admin";
                forum.CreatedDate = DateTime.Now;
                forum.ForumCategoryId = post.ForumCategoryId;
                forum.IsActive = true;
                forum.IsAnswered = false;
                forum.QuestionDescription = post.QuestionDescription;
                forum.QuestionTitle = post.QuestionTitle;
                forum.UpdatedBy = "admin";
                forum.UpdatedDate = DateTime.Now;

                if (_forumService.CreateForum(forum))
                {
                    return RedirectToActionPermanent("Index", "Forum");
                }
            }

            List<ForumCategory> categoryList = _forumService.GetlAllForumCategories().ToList();

            post.ForumCategoryList = new List<SelectListItem>();

            foreach (var item in categoryList)
            {
                post.ForumCategoryList.Add(new SelectListItem { Text = item.ForumCategoryName, Value = item.ForumCategoryId.ToString() });
            }

            return View(post);
        }

        public ActionResult Item(long id)
        {
            ForumItemDto itemDto = _forumService.GetForumDtoById(id);

            return View(itemDto);
        }

        [HttpPost]
        public ActionResult Item(long id, string Answer)
        {
            if (string.IsNullOrEmpty(Answer))
                ModelState.AddModelError("Answer", "Answer is required.");
            if (ModelState.IsValid)
            {
                ForumMessage forumAnswer = new ForumMessage();
                forumAnswer.ForumId = id;
                forumAnswer.MessageDescription = Answer;
                forumAnswer.CreatedBy = "admin";
                forumAnswer.CreatedDate = DateTime.Now;
                forumAnswer.UpdatedBy = "admin";
                forumAnswer.UpdatedDate = DateTime.Now;

                if (_forumService.CreateForumAnswer(forumAnswer))
                {
                    return RedirectToActionPermanent("Index", "Forum");
                }
            }

            return View(_forumService.GetForumDtoById(id));
        }
    }
}