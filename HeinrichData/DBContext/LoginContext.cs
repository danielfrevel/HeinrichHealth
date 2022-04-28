using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using HeinrichData.Entities;
using Microsoft.EntityFrameworkCore;

namespace HeinrichData.Db
{
    public class LoginContext : BaseContext
    {
        public DbSet<Login>? Logins { get; set; }
    }
}