using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HeinrichData.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

namespace HeinrichData.Db;



public class BaseContext : DbContext
{
    public BaseContext()
    {

    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder
        .UseNpgsql();

}

