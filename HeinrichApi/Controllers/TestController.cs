using HeinrichData.Db;
using HeinrichData.Entities;
using Microsoft.AspNetCore.Mvc;

namespace HeinrichApi.Controllers;


public class TestController : BaseController
{
    private readonly LoginContext context;

    public TestController(LoginContext ctx)
    {
        this.context = ctx;
    }


    [HttpGet]
    public ActionResult<IEnumerable<Login>> bruh()
    {
        return this.context.Set<Login>().ToList();
    }
}
