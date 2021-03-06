﻿using ApplicationServices.Contrats;
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
    public class TimeOffRequestServices : IBaseService<TimeOffRequestVM>
    {

        private IRepository<TimeOffRequestsEntity> _timeOffRequestRepo;
        private IRepository<TimeOffTypesEntity> _timeOffTypeRepo;
        public TimeOffRequestServices(IRepository<TimeOffRequestsEntity> timeOffRequestRepo, IRepository<TimeOffTypesEntity> timeOffTypeRepo)
        {
            _timeOffRequestRepo = timeOffRequestRepo;
            _timeOffTypeRepo = timeOffTypeRepo;
        }

        public ServiceResult Create(TimeOffRequestVM model)
        {
            throw new NotImplementedException();
        }

        public ServiceResult Delete(int Id)
        {
            ServiceResult result = new ServiceResult();

            try
            {
              _timeOffRequestRepo.Remove(Id);

            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }

        public ServiceResult Find(TimeOffRequestVM model)
        {
            throw new NotImplementedException();
        }

        public ServiceResult GetAll()
        {
            ServiceResult result = new ServiceResult();

            try
            {
                var results = _timeOffRequestRepo.GetAll();

                foreach (var car in results) {
                    car.TimeOffType = _timeOffTypeRepo.GetById(car.TimeOffTypeId);
                }

                result.Data = results.ConvertToViewModel();
                
            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }

        public ServiceResult GetById(int Id)
        {
            ServiceResult result = new ServiceResult();

            try
            {
                var results = _timeOffRequestRepo.GetById(Id);
                results.TimeOffType = _timeOffTypeRepo.GetById(results.TimeOffTypeId);
                result.Data = results.ConvertToViewModel();
            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }

        public ServiceResult Update(TimeOffRequestVM model)
        {
            ServiceResult result = new ServiceResult();

            try
            {
                if (model.Id == 0)
                {
                    _timeOffRequestRepo.Save(model.ConvertToEntity());
                }
                else {
                    _timeOffRequestRepo.Update(model.ConvertToEntity());
                }
            }
            catch (Exception ex)
            {
                result.addError(ex);
            }

            return result;
        }
    }
}
