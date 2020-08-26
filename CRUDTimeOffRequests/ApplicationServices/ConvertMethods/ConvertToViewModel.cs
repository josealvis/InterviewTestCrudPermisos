using Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ApplicationServices.ConvertMethods
{
    public static partial class CovertMethods
    {
        public static ViewModel.TimeOffTypeVM ConvertToViewModel(this TimeOffTypesEntity entity)
        {

            return new ViewModel.TimeOffTypeVM()
            {
                Id = entity.TimeOffTypeId,
                Name = entity.TypeName,
                Estatus = entity.Active ? Core.Status.active : Core.Status.inactive
            };

        }

        public static List<ViewModel.TimeOffTypeVM> ConvertToViewModel(this List<TimeOffTypesEntity> entity)
        {
            return entity.Select(cd => cd.ConvertToViewModel()).ToList();
        }

        public static ViewModel.TimeOffRequestVM ConvertToViewModel(this TimeOffRequestsEntity entity)
        {

            
            return new ViewModel.TimeOffRequestVM()
            {
                Id = entity.TimeOffRequestId,
                EmployeeName = entity.EmployeeName,
                EmployeeLastname = entity.EmployeeLastname,
                RequestDate = entity.RequestDate,
                Type = entity.TimeOffType.ConvertToViewModel()
            };
        }

        public static List<ViewModel.TimeOffRequestVM> ConvertToViewModel(this List<TimeOffRequestsEntity> entity)
        {
            return entity.Select(cd => cd.ConvertToViewModel()).ToList();
        }
    }
}
