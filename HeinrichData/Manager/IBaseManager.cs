using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using HeinrichData.Entities;

namespace HeinrichData.Manager;

public interface IBaseManager<T>
{
    T GetBy(int id);
    IEnumerable<T> GetAll();
    IEnumerable<T> GetAll(Expression<Func<T, bool>> predicate);
    void Add(T entity);
    void Delete(T entity);

}