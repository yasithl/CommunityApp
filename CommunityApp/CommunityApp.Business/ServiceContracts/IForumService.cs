using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.ServiceContracts
{
    public interface IForumService
    {
        bool CreateForumCategory(ForumCategory forumCategory);
        IEnumerable<ForumCategory> GetlAllForumCategories();
        bool CreateForum(Forum forum);
        Forum ForumGetById(long id);
        IEnumerable<Forum> GetAllForums();
        ForumItemDto GetForumDtoById(long id);
        bool CreateForumAnswer(ForumMessage forumAnswer);
    }
}
