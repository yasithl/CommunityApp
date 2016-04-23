using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.DBInteractions
{
    public interface IUnitOfWork
    {
        void Commit();
    }
}
