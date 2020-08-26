using Microsoft.EntityFrameworkCore;
using System;

namespace Context.Contrats
{
    public interface  IDataContextBase
    {
        DbSet<TEntity> CreateSet<TEntity>() where TEntity : class;
    }
}
