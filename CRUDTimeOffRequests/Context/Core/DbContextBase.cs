using Context.Contrats;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Context.Core
{
    public partial class DbContextBase : DbContext, IDataContextBase
    {
        public DbContextBase(DbContextOptions options) : base(options)
        {
        }
        public DbSet<TEntity> CreateSet<TEntity>() where TEntity : class
        {
            return base.Set<TEntity>();
        }
        public void SetModified<TEntity>(TEntity Item) where TEntity : class
        {
            base.Entry<TEntity>(Item).State = EntityState.Modified;
        }
    }
}
