using System;
using System.Collections.Generic;
using System.Text;

namespace Repository.UoW
{
    public interface IUnitOfWork
    {
        void Commit();
        void RollbackChanges();
    }
}
