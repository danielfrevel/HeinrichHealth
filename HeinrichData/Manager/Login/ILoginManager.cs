using HeinrichData.Entities;

namespace HeinrichData.Manager;


public interface ILoginManager
{
    IEnumerable<Login> GetAllLogins();

    Login GetById();

    void Add();
}