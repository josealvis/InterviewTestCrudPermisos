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
 
    public class TimeOffTypeController : Controller
    {


        private readonly ILogger<TestController> _logger;
        private IBaseService<TimeOffTypeVM> _timeOffTypesService;
        private IBaseService<TimeOffRequestVM> _timeOffRequestService;

        public TimeOffTypeController(ILogger<TestController> logger, IBaseService<TimeOffTypeVM> timeOffTypesService, IBaseService<TimeOffRequestVM> timeOffRequestService)
        {
            _logger = logger;
            _timeOffTypesService = timeOffTypesService;
            _timeOffRequestService = timeOffRequestService;
        }

        [HttpGet]
        public IEnumerable<TimeOffTypeVM> GetAll() => _timeOffTypesService.GetAll().Data;

        [HttpGet]
        public IEnumerable<TimeOffTypeVM> Get(int id ) => _timeOffTypesService.GetById(id).Data;
    }
}
