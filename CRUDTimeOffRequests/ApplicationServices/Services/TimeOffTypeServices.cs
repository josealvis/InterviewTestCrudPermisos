using ApplicationServices.Contrats;
using ApplicationServices.ConvertMethods;
using ApplicationServices.Core;
using ApplicationServices.ViewModel;
using Domain.Entities;
using Repository.Contrats;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApplicationServices.Services
{
    public class TimeOffTypeServices : IBaseService<TimeOffTypeVM>
    {
        private IRepository<TimeOffTypesEntity> _timeOffTypesRepo;
        public TimeOffTypeServices(IRepository<TimeOffTypesEntity> timeOffTypesRepo) {
            _timeOffTypesRepo = timeOffTypesRepo;
        }

        public ServiceResult Create(TimeOffTypeVM model)
        {
            ServiceResult result = new ServiceResult();

            try
            {
                _timeOffTypesRepo.Save(model.ConvertToEntity());
            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }

        public ServiceResult Delete(TimeOffTypeVM model)
        {
            throw new NotImplementedException();
        }

        public ServiceResult Find(TimeOffTypeVM model)
        {
            throw new NotImplementedException();
        }

        public ServiceResult GetAll()
        {
            ServiceResult result = new ServiceResult();

            try
            {
                result.Data =  _timeOffTypesRepo.GetAll().ConvertToViewModel();
            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }

        public ServiceResult GetById(int Id)
        {
            throw new NotImplementedException();
        }

        public ServiceResult Update(TimeOffTypeVM model)
        {
            throw new NotImplementedException();
        }
    }
}
