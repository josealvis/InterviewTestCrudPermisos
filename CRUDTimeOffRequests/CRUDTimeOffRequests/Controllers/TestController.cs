using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
        private IRepository<TimeOffTypesEntity> _timeOffTypesRepo;

        public TestController(ILogger<TestController> logger, IRepository<TimeOffTypesEntity> timeOffTypesRepo)
        {
            _logger = logger;
            _timeOffTypesRepo = timeOffTypesRepo;
        }

        [HttpGet]
        public IEnumerable<TimeOffTypesEntity> Get() => _timeOffTypesRepo.GetAll();
    }
}
