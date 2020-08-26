using Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ApplicationServices.ConvertMethods
{
    public static partial class CovertMethods
    {
        public static TimeOffTypesEntity ConvertToEntity(this ViewModel.TimeOffTypeVM model)
        {
            return new TimeOffTypesEntity()
            {
                TimeOffTypeId = model.Id,
                TypeName = model.Name,
                Active = model.Estatus == Core.Status.active ? true : false

            };

        }

        public static List<TimeOffTypesEntity> ConvertToEntity(this List<ViewModel.TimeOffTypeVM> models)
        {
            return models.Select(cd => cd.ConvertToEntity()).ToList();
        }


        public static TimeOffRequestsEntity ConvertToEntity(this ViewModel.TimeOffRequestVM model)
        {
            return new TimeOffRequestsEntity()
            {
                EmployeeName = model.EmployeeName,
                EmployeeLastname =  model.EmployeeLastname,
                RequestDate = model.RequestDate,
                TimeOffRequestId = model.Id,
                TimeOffTypeId = model.Type.Id
            };

        }

        public static List<TimeOffRequestsEntity> ConvertToEntity(this List<ViewModel.TimeOffRequestVM> models)
        {
            return models.Select(cd => cd.ConvertToEntity()).ToList();
        }

    }
}
