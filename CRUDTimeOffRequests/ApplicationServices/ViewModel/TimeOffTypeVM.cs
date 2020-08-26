using ApplicationServices.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace ApplicationServices.ViewModel
{
    public class TimeOffTypeVM
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Desc { get; set; }

        public Status Estatus { get; set; }
    }
}
