using Domain.Entities;
using Repository.Contrats;
using Repository.UoW;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Repository.Repositories
{
    public class TimeOffTypeRepository : IRepository<TimeOffTypesEntity>
    {

        private UnitOfWork unitOfWork;

        public UnitOfWork UnitOfWork { get => unitOfWork; set => unitOfWork = value; }

        public TimeOffTypeRepository(UnitOfWork uow)
        {
            if (uow == null) throw new ArgumentNullException("The unit of work is not provided");
            unitOfWork = uow;
        }
        public List<TimeOffTypesEntity> GetAll()
        {
            return unitOfWork.Repository<TimeOffTypesEntity>().Search(cd => cd.Active == true).ToList();
        }

        public TimeOffTypesEntity GetById(int modelId)
        {
            return unitOfWork.Repository<TimeOffTypesEntity>().Find(cd => cd.TimeOffTypeId == modelId);
        }

        public void Remove(int modelId)
        {
            var entity = GetById(modelId);
            entity.Active = false;
            unitOfWork.Repository<TimeOffTypesEntity>().Update(entity);
            this.unitOfWork.Commit();
        }

        public void Save(TimeOffTypesEntity model)
        {
            unitOfWork.Repository<TimeOffTypesEntity>().Add(model);
            unitOfWork.Commit();
        }
    }
}
