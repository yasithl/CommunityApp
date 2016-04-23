using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.DBInteractions
{
    public partial class CommunityAppDbEntities : DbContext
    {
        public virtual void Commit()
        {
            base.SaveChanges();
        }
    }
}
