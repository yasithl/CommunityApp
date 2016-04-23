using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.DBInteractions
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly IDBFactory _databaseFactory;
        private CommunityAppDbEntities _dataContext;

        public UnitOfWork(IDBFactory databaseFactory)
        {
            this._databaseFactory = databaseFactory;
        }

        protected CommunityAppDbEntities DataContext
        {
            get { return _dataContext ?? (_dataContext = _databaseFactory.Get()); }
        }

        public void Commit()
        {
            DataContext.Commit();
        }
    }
}
