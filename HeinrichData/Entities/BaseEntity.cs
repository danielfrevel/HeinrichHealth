using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace HeinrichData.Entities;
public class BaseEntity
{
    [Key]
    public int Id { get; protected set; }
}