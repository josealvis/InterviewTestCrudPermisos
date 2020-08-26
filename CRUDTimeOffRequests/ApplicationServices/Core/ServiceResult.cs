using System;
using System.Collections.Generic;
using System.Text;

namespace ApplicationServices.Core
{
    public class ServiceResult
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public dynamic Data { get; set; }
        public ServiceResult() => this.Success = true;

        public void addError(Exception ex) {
            this.Success = false;
            this.Message = ex.Message;
        }
    }
}
