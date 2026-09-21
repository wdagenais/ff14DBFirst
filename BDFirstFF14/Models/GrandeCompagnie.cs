using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("GrandeCompagnie", Schema = "SGC")]
public partial class GrandeCompagnie
{
    [Key]
    public int GrandeCompagnieId { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string Nom { get; set; } = null!;

    [StringLength(40)]
    [Unicode(false)]
    public string Leaders { get; set; } = null!;

    [InverseProperty("GrandeCompagnie")]
    public virtual ICollection<Personnage> Personnages { get; set; } = new List<Personnage>();
}
