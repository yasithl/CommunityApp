using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
    }
}
