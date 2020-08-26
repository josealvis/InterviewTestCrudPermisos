using Context.Contrats;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;

namespace Repository.Core
{
    public class BaseRepository<TEntity> where TEntity : class
    {
        private IDataContextBase context;

        private DbSet<TEntity> Entity { get; set; }

        public BaseRepository(IDataContextBase contextDb)
        {
            if (contextDb == null) throw new ArgumentNullException("The data base is not provided.");

            context = contextDb;
            Entity = context.CreateSet<TEntity>();
        }

        public virtual IQueryable<TEntity> Search(Expression<Func<TEntity, bool>> predicate = null)
        {
            return Entity.Where(predicate);
        }

        public virtual BaseRepository<TEntity>  Include(Expression<Func<TEntity, bool>> predicate = null)
        {
            Entity.Include(predicate);
            return this;
        }

        public virtual void Add(TEntity item)
        {
            Entity.Add(item);
        }

        public virtual void Update(TEntity entity)
        {
            if (entity != (TEntity)null)
                context.SetModified(entity);
        }


        public virtual TEntity Find(Expression<Func<TEntity, bool>> predicate)
        {
            return Entity.SingleOrDefault(predicate);

        }


    }
}
