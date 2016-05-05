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
    public class UserRepository : EntityRepositoryBase<AspNetUser>, IUserRepository
    {
        public UserRepository(IDBFactory databaseFactory)
            : base(databaseFactory)
        {
        }
    }
}
