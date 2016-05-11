using CommunityApp.Business.ServiceContracts;
using CommunityApp.Entity;
using CommunityApp.Models;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Controllers
{
    public class EventController : Controller
    {
        private readonly IEventService _eventService;

        public EventController(IEventService eventService)
        {
            _eventService = eventService;
        }

        // GET: Event
        public ActionResult Index()
        {
            return View(_eventService.GetAllEvents());
        }

        [Authorize]
        public ActionResult Create()
        {
            return View();
        }

        [Authorize]
        [HttpPost]
        public ActionResult Create(EventViewModel eventModel)
        {
            try
            {
                EventInfo newEvent = new EventInfo();

                if (ModelState.IsValid)
                {
                    newEvent.Name = eventModel.Name;
                    newEvent.Description = eventModel.Description;
                    newEvent.Capacity = eventModel.Capacity;
                    newEvent.Location = eventModel.Location;
                    newEvent.StartDate = eventModel.StartDate;
                    newEvent.EndDate = eventModel.EndDate;
                    newEvent.CreatedBy = User.Identity.GetUserName();
                    newEvent.CreatedDate = DateTime.Now;
                    newEvent.IsActive = true;
                    newEvent.UpdatedBy = User.Identity.GetUserName();
                    newEvent.UpdatedDate = newEvent.CreatedDate;

                    if (_eventService.CreateEvent(newEvent))
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
    }
}