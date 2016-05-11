using CommunityApp.Business.ServiceContracts;
using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.DataAccess.RepositoryContracts;
using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.Services
{
    public class EventService : IEventService
    {
        private readonly IEventInfoRepository _eventRepository;
        private readonly IUnitOfWork _unitOfWork;

        public EventService(IEventInfoRepository eventRepository, IUnitOfWork unitOfWork)
        {
            _eventRepository = eventRepository;
            _unitOfWork = unitOfWork;
        }

        public bool CreateEvent(EventInfo eventInfo)
        {
            bool flag = false;
            try
            {
                _eventRepository.Add(eventInfo);
                _unitOfWork.Commit();

                flag = true;
            }
            catch { }

            return flag;
        }

        public IEnumerable<EventInfo> GetAllEvents()
        {
            return _eventRepository.GetAll().ToList();
        }

        public EventInfo GetById(long id)
        {
            return _eventRepository.GetById(id);
        }

    }
}
