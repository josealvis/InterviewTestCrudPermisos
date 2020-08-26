using ApplicationServices.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApplicationServices.Contrats
{
    public interface IBaseService<TModel> where TModel : class
    {
        ServiceResult GetAll();

        ServiceResult GetById(int Id);
        ServiceResult Create(TModel model);
        ServiceResult Delete(int Id);
        ServiceResult Find(TModel model);
        ServiceResult Update(TModel model);
    }
}
