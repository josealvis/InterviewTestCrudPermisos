using Domain.Entities;
using Repository.Contrats;
using Repository.UoW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Repository.Repositories
{
    public class TimeOffRequestRepository : IRepository<TimeOffRequestsEntity>
    {


        private UnitOfWork unitOfWork;

        public UnitOfWork UnitOfWork { get => unitOfWork; set => unitOfWork = value; }

        public TimeOffRequestRepository(UnitOfWork uow)
        {
            if (uow == null) throw new ArgumentNullException("The unit of work is not provided");
            unitOfWork = uow;
        }
        public List<TimeOffRequestsEntity> GetAll()
        {
            return unitOfWork.Repository<TimeOffRequestsEntity>().Search(cd => cd.Active == true).ToList();
        }

        public TimeOffRequestsEntity GetById(int modelId)
        {
            return unitOfWork.Repository<TimeOffRequestsEntity>().Find(cd => cd.TimeOffRequestId == modelId);
        }

        public void Remove(int modelId)
        {
            var entity = GetById(modelId);
            entity.Active = false;
            unitOfWork.Repository<TimeOffRequestsEntity>().Update(entity);
            this.unitOfWork.Commit();
        }

        public void Save(TimeOffRequestsEntity model)
        {
            unitOfWork.Repository<TimeOffRequestsEntity>().Add(model);
            unitOfWork.Commit();
        }
    }
}
