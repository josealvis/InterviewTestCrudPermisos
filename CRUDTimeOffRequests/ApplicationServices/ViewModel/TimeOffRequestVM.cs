using ApplicationServices.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApplicationServices.ViewModel
{
    public class TimeOffRequestVM
    {
        public int Id { get; set; }
        public string EmployeeName { get; set; }
        public string EmployeeLastname { get; set; }

        public TimeOffTypeVM Type { get; set; }

        public DateTime RequestDate { get; set; }

    }
}
