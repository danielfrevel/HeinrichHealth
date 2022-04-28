using HeinrichData.Db;
using HeinrichData.Entities;

namespace HeinrichData.Manager
{
    public class Manager<T> : IBaseManager<T> where T : BaseEntity
    {
        private readonly BaseContext _dbContext;

        public Manager(BaseContext dbContext)
        {
            _dbContext = dbContext;
        }

        public virtual T GetBy(int id)
        {
            //möglicher null return  
            return _dbContext.Set<T>().Find(id);
        }

        public virtual IEnumerable<T> GetAll()
        {
            return _dbContext.Set<T>().AsEnumerable();
        }

        public virtual IEnumerable<T> GetAll(System.Linq.Expressions.Expression<Func<T, bool>> predicate)
        { //das hier brauchen wir damit wir nicht i queryable zurückgeben müssen
            return _dbContext.Set<T>()
                   .Where(predicate)
                   .AsEnumerable();
        }

        public void Add(T entity)
        {
            _dbContext.Set<T>().Add(entity);
            _dbContext.SaveChanges();
        }

        public void Delete(T entity)
        {
            _dbContext.Set<T>().Remove(entity);
            _dbContext.SaveChanges();
        }
    }
}