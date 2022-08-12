using HeinrichData.Db;
using HeinrichData.Entities;
using HeinrichData.Manager;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using HeinrichApplication;
var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<BaseContext>(options => options.UseNpgsql(builder.Configuration.GetConnectionString("default")));
builder.Services.AddScoped<IBaseManager<Login>, Manager<Login>>();
builder.Services.AddScoped<IBaseManager<TrainingsSession>, Manager<TrainingsSession>>();
builder.Services.AddScoped<ISessionService, SessionService>();
builder.Services.AddScoped<IBaseManager<HHUser>, Manager<HHUser>>();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}


// app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
