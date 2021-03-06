using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ApplicationServices.Contrats;
using ApplicationServices.Services;
using ApplicationServices.ViewModel;
using Domain.Entities;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Repository.Contrats;
using Repository.Repositories;
using Repository.UoW;

namespace CRUDTimeOffRequests
{
    public class Startup
    {

        readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {

            services.AddCors(options =>
            {
                options.AddDefaultPolicy(
                    builder =>
                    {
                        builder.WithOrigins("http://192.168.29.187:8080");
                    });
            });

            services.AddControllers();
            //creates and configures the context
            var connectionString = Configuration.GetConnectionString("DefaultConnection");
            var options = SqlServerDbContextOptionsExtensions.UseSqlServer(new DbContextOptionsBuilder(), connectionString).Options;
            UnitOfWork uow = new UnitOfWork(new Context.Core.DbContextBase(options));

            //adds repositories
            services.AddScoped<IRepository<TimeOffRequestsEntity>, TimeOffRequestRepository>(sp => new TimeOffRequestRepository(uow));
            services.AddScoped<IRepository<TimeOffTypesEntity>, TimeOffTypeRepository>(sp => new TimeOffTypeRepository(uow));

            //adds services
            services.AddScoped<IBaseService<TimeOffTypeVM>, TimeOffTypeServices>();
            services.AddScoped<IBaseService<TimeOffRequestVM>, TimeOffRequestServices>();

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseDefaultFiles();
            app.UseStaticFiles();

            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseCors();

            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
        name: "default",
        pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
