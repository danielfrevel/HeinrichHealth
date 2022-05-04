using HeinrichData.Db;
using HeinrichData.Entities;
using HeinrichData.Manager;
using Microsoft.AspNetCore.Mvc;

namespace HeinrichApi.Controllers;


public class WeightTrainingController : BaseController
{
    private readonly IBaseManager<Login> loginManager;
    private readonly IBaseManager<HHUser> userManager;
    private readonly IBaseManager<TrainingsSession> sessionManager;

    public WeightTrainingController(IBaseManager<Login> loginManager, IBaseManager<HHUser> userManager, IBaseManager<TrainingsSession> sessionManager)
    {
        this.loginManager = loginManager;
        this.userManager = userManager;
        this.sessionManager = sessionManager;
    }

    [HttpGet]
    public ActionResult<IEnumerable<Login>> bruh()
    {
        return this.loginManager.GetAll().ToList();
    }

    [HttpGet]
    public ActionResult<IEnumerable<HHUser>> bruh1()
    {
        return this.userManager.GetAll().ToList();
    }

    [HttpGet]
    public ActionResult<IEnumerable<TrainingsSession>> bruh2()
    {
        return this.sessionManager.GetAll().ToList();
    }
}
