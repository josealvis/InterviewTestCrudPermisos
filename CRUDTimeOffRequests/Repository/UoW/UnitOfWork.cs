using Microsoft.EntityFrameworkCore;
using Repository.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Repository.UoW
{
    public class UnitOfWork : IUnitOfWork, IDisposable
    {
        private DbContext _context;
        private Dictionary<string, object> repositories;


        public UnitOfWork(DbContext contextDb)
        {
            if (contextDb == null) throw new ArgumentException("The data base context is not provided.");
            _context = contextDb;
        }


        /// <summary>
        /// Create a repository for a single entity.
        /// </summary>
        /// <typeparam name="TEntity">Entity attach to thw context/domain</typeparam>
        /// <returns></returns>
        public BaseRepository<TEntity> Repository<TEntity>() where TEntity : class
        {
            if (repositories == null)
            {
                repositories = new Dictionary<string, object>();
            }

            var type = typeof(TEntity).Name;

            if (!repositories.ContainsKey(type))
            {
                var repositoryType = typeof(BaseRepository<>);
                object repositoryInstance = null;

                repositoryInstance = Activator.CreateInstance(repositoryType.MakeGenericType(typeof(TEntity)), this._context);
                repositories.Add(type, repositoryInstance);

            }
            return (BaseRepository<TEntity>)repositories[type];
        }

        public DbContext Db => _context;
        public void Commit() => _context.SaveChanges();

        public void RollbackChanges() => _context.ChangeTracker.Entries().ToList().ForEach(entry => entry.State = EntityState.Unchanged);


        #region"dispose implementation"

        private bool _disposed = false;
        public void Dispose()
        {
            this.Dispose(true);
            GC.SuppressFinalize(this);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!this._disposed)
            {
                if (disposing)
                {
                    // Dispose managed resources.
                    _context.Dispose();
                }
                this._disposed = true;
            }
        }
        #endregion
    }
}
