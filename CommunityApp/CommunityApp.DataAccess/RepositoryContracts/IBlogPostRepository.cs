using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.RepositoryContracts
{
    public interface IBlogPostRepository : IEntityRepository<BlogPost>
    {
    }
}
