using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HeinrichData.Entities;

public class TrainingsSession : BaseEntity
{
    public int Duration_minutes { get; set; }
    public DateTime Session_date { get; set; }
    public int UserID { get; set; }
}
