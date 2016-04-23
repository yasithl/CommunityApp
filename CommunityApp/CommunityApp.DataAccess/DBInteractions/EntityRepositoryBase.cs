using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.DataAccess.DBInteractions
{
    public abstract class EntityRepositoryBase<T> where T : class
    {
        private CommunityAppDbEntities _dataContext;
        private readonly IDbSet<T> dbset;
        protected EntityRepositoryBase(IDBFactory databaseFactory)
        {
            DatabaseFactory = databaseFactory;
            dbset = DataContext.Set<T>();
        }

        protected IDBFactory DatabaseFactory
        {
            get; private set;
        }

        protected CommunityAppDbEntities DataContext
        {
            get { return _dataContext ?? (_dataContext = DatabaseFactory.Get()); }
        }
        public virtual void Add(T entity)
        {
            _dataContext.Set<T>().Add(entity);
        }
        public virtual void Update(T entity)
        {
            _dataContext.Set<T>().Attach(entity);
            _dataContext.Entry(entity).State = EntityState.Modified;
        }
        public virtual void Delete(T entity)
        {
            var entry = _dataContext.Entry(entity);

            if (entry != null)
            {
                entry.State = EntityState.Deleted;
            }
            else
            {
                _dataContext.Set<T>().Attach(entity);
            }

            _dataContext.Entry(entity).State = EntityState.Deleted;
        }
        public void Delete(Func<T, Boolean> where)
        {
            IEnumerable<T> objects = dbset.Where<T>(where).AsEnumerable();
            foreach (T obj in objects)
                dbset.Remove(obj);
        }
        public virtual T GetById(long id)
        {
            return dbset.Find(id);
        }

        public virtual IEnumerable<T> GetAll()
        {
            return _dataContext.Set<T>().AsQueryable();
        }

        public virtual IEnumerable<T> GetMany(Func<T, bool> where)
        {
            return _dataContext.Set<T>().Where(where).ToList();
        }

        public T Get(Func<T, Boolean> where)
        {
            return _dataContext.Set<T>().Where(where).FirstOrDefault<T>();
        }
    }
}
