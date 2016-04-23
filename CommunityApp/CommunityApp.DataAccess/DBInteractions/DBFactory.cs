using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.DBInteractions
{
    public class DBFactory : Disposable, IDBFactory
    {
        public DBFactory()
        {
            Database.SetInitializer<CommunityAppDbEntities>(null);
        }
        private CommunityAppDbEntities dataContext;
        public CommunityAppDbEntities Get()
        {
            return dataContext ?? (dataContext = new CommunityAppDbEntities());
        }
        protected override void DisposeCore()
        {
            if (dataContext != null)
                dataContext.Dispose();
        }
    }
}
