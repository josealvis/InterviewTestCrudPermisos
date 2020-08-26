using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApplicationServices.Contrats;
using ApplicationServices.ViewModel;
using Domain.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Repository.Contrats;
using Repository.Repositories;

namespace CRUDTimeOffRequests.Controllers
{

    public class TimeOffRequesController : Controller
    {

        private IBaseService<TimeOffRequestVM> _timeOffRequestService;

        public TimeOffRequesController(ILogger<TestController> logger, IBaseService<TimeOffTypeVM> timeOffTypesService, IBaseService<TimeOffRequestVM> timeOffRequestService)
        {
            _timeOffRequestService = timeOffRequestService;
        }

        [HttpGet]
        public IEnumerable<TimeOffRequestVM> GetAll() => _timeOffRequestService.GetAll().Data;

        [HttpGet]
        public IEnumerable<TimeOffRequestVM> Get(int id) => _timeOffRequestService.GetById(id).Data;

        [HttpPost]
        public void Post([FromBody]TimeOffRequestVM data) => _timeOffRequestService.Update(data);
    }
}
