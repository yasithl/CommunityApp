using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.ServiceContracts
{
    public interface IBlogService
    {
        bool CreatePost(BlogPost post);

        IEnumerable<BlogPost> GetAllPosts();

        BlogPost GetById(long id);

        BlogItemDto GetBlogDtoById(long id);

        bool CreatePostComment(BlogPostComment postComment);
    }
}
