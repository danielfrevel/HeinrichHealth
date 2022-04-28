using HeinrichData.Db;
using HeinrichData.Entities;
using HeinrichData.Manager;
using Microsoft.AspNetCore.Mvc;

namespace HeinrichApi.Controllers;


public class TestController : BaseController
{
    private readonly IBaseManager<Login> manager;

    public TestController(IBaseManager<Login> manager)
    {
        this.manager = manager;
    }

    [HttpGet]
    public ActionResult<IEnumerable<Login>> bruh()
    {
        return this.manager.GetAll().ToList();
    }
}
