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
    [ApiController]
    [Route("[controller]")]
    public class TestController : ControllerBase
    {


        private readonly ILogger<TestController> _logger;
        private IBaseService<TimeOffTypeVM> _timeOffTypesService;
        private IBaseService<TimeOffRequestVM> _timeOffRequestService;

        public TestController(ILogger<TestController> logger, IBaseService<TimeOffTypeVM> timeOffTypesService, IBaseService<TimeOffRequestVM> timeOffRequestService)
        {
            _logger = logger;
            _timeOffTypesService = timeOffTypesService;
            _timeOffRequestService = timeOffRequestService;
        }

        [HttpGet]
        public IEnumerable<TimeOffRequestVM> Get() => _timeOffRequestService.GetAll().Data;
    }
}
