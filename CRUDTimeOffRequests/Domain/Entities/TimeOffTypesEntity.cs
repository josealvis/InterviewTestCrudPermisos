using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Domain.Entities
{
    [Table(name: "TimeOffTypes", Schema = "dbo")]
    public class TimeOffTypesEntity : Core.BaseEntity
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int TimeOffTypeId { get; set; }
        public string TypeName { get; set; }
        public string Description { get; set; }

    }
}
