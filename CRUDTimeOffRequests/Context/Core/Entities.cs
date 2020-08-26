using Domain.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace Context.Core
{
    public partial class DbContextBase
    {
        //Entidades desde la capa domain
        public DbSet<TimeOffRequestsEntity> TimeOffRequestsEntity { get; private set; }
        public DbSet<TimeOffTypesEntity> TimeOffTypesEntity { get; private set; }

    }
}
