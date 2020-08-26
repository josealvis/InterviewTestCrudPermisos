using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Domain.Entities
{
    [Table(name: "TimeOffRequests", Schema = "dbo")]
    public class TimeOffRequestsEntity : Core.BaseEntity
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int TimeOffRequestId { get; set; }
        public string EmployeeName { get; set; }
        public string EmployeeLastname { get; set; }

        [ForeignKey("TimeOffTypesEntity")]
        public int TimeOffTypeId { get; set; }

        //[ForeignKey("TimeOffTypeId")]
        public virtual TimeOffTypesEntity TimeOffType { get; set; }
        public DateTime RequestDate { get; set; }
    }
}
