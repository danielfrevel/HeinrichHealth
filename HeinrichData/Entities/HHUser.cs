using System.Reflection.PortableExecutable;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HeinrichData.Entities;


public class HHUser : BaseEntity
{

    public string Username { get; set; }

    public string Lastname { get; set; }

    public string Firstname { get; set; }

    public double Bodyweight { get; set; }

    public double Height { get; set; }
    public double BMI { get; set; }
    public double Bodyfat_pct { get; set; }

    public int Login { get; set; }

}
