using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.ServiceContracts
{
    public interface IEventService
    {
        bool CreateEvent(EventInfo eventInfo);
        IEnumerable<EventInfo> GetAllEvents();
        EventInfo GetById(long id);
    }
}
