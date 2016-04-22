using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
using System.Collections.Generic;
using System.Linq;

namespace CommunityApp.Business.Services
{
    public class BlogService
    {
        public BlogService()
        {

        }

        public bool CreatePost(BlogPost post)
        {
            bool flag = false;
            try
            {
                using (CommunityAppDbEntities dbContext = new CommunityAppDbEntities())
                {
                    dbContext.BlogPosts.Add(post);
                    dbContext.SaveChanges();
                    flag = true;
                }
            }
            catch { }
            
            return flag;
        }

        public IEnumerable<BlogPost> GetAllPosts()
        {
            IEnumerable<BlogPost> allPosts = null;

            using(CommunityAppDbEntities dbContext = new CommunityAppDbEntities())
            {
                allPosts = dbContext.BlogPosts.AsEnumerable().ToList();
            }

            return allPosts;
        }

        public BlogItemDto GetById(long id)
        {
            BlogPost post = null;
            BlogItemDto postViewModel = new BlogItemDto();

            using (CommunityAppDbEntities dbContext = new CommunityAppDbEntities())
            {
                post = dbContext.BlogPosts.Where(x => x.PostId == id).SingleOrDefault();
                postViewModel.CreatedBy = post.CreatedBy;
                postViewModel.CreatedDate = post.CreatedDate;
                postViewModel.Description = post.Description;
                postViewModel.IsActive = post.IsActive;
                postViewModel.PostId = post.PostId;
                postViewModel.Title = post.Title;
                postViewModel.UpdatedBy = post.UpdatedBy;
                postViewModel.UpdatedDate = post.UpdatedDate;

                if(post.BlogPostComments != null)
                {
                    postViewModel.BlogPostComments = new List<BlogItemCommentDto>();
                    var postComments = post.BlogPostComments.ToList();

                    for (int i = 0; i < postComments.Count; i++)
                    {
                        postViewModel.BlogPostComments.Add(new BlogItemCommentDto
                        {
                            Comment = postComments[i].Comment,
                            CreatedBy = postComments[i].CreatedBy,
                            CreatedDate = postComments[i].CreatedDate,
                            ID = postComments[i].ID,
                            PostID = postComments[i].PostID,
                            UpdatedBy = postComments[i].UpdatedBy,
                            UpdatedDate = postComments[i].UpdatedDate
                        });
                    }
                }
            }
            
            return postViewModel;
        }

        public bool CreatePostComment(BlogPostComment postComment)
        {
            bool flag = false;
            try
            {
                using (CommunityAppDbEntities dbContext = new CommunityAppDbEntities())
                {
                    dbContext.BlogPostComments.Add(postComment);
                    dbContext.SaveChanges();
                    flag = true;
                }
            }
            catch { }

            return flag;
        }
    }
}
