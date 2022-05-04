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
    public BaseContext(DbContextOptions options) : base(options)
    {
    }


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Login>()
            .HasKey(b => b.Id)
            .HasName("Id");
        modelBuilder.Entity<HHUser>()
        .HasKey(b => b.Id)
        .HasName("Id");
        modelBuilder.Entity<TrainingsSession>()
            .HasKey(b => b.Id)
            .HasName("Id");

    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder
        .UseNpgsql();

}

