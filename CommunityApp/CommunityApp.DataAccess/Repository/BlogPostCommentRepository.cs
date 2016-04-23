using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.DataAccess.RepositoryContracts;
using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.Repository
{
    public class BlogPostCommentRepository : EntityRepositoryBase<BlogPostComment>, IBlogPostCommentRepository
    {
        public BlogPostCommentRepository(IDBFactory databaseFactory)
            : base(databaseFactory)
        {
        }
    }
}
