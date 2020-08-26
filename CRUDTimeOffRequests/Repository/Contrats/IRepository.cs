using System;
using System.Collections.Generic;
using System.Text;

namespace Repository.Contrats
{
    public interface IRepository<TModel> where TModel : class
    {
        TModel GetById(int modelId);
        void Save(TModel model);
        void Remove(int modelId);
        List<TModel> GetAll();
    }
}
