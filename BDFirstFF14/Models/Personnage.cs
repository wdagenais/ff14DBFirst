using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Personnage", Schema = "Personnage")]
[Index("Race", Name = "IX_Personnage_Race")]
public partial class Personnage
{
    [Key]
    public int PersonnageId { get; set; }

    public int? GrandeCompagnieId { get; set; }

    public int? ServerId { get; set; }

    public DateOnly DateCreation { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string? Pseudo { get; set; }

    [StringLength(15)]
    [Unicode(false)]
    public string? Race { get; set; }

    [StringLength(15)]
    [Unicode(false)]
    public string? Classe { get; set; }

    [ForeignKey("GrandeCompagnieId")]
    [InverseProperty("Personnages")]
    public virtual GrandeCompagnie? GrandeCompagnie { get; set; }

    [InverseProperty("Personnage")]
    public virtual ICollection<PersonnageItem> PersonnageItems { get; set; } = new List<PersonnageItem>();

    [InverseProperty("Personnage")]
    public virtual Profilpic? Profilpic { get; set; }

    [ForeignKey("ServerId")]
    [InverseProperty("Personnages")]
    public virtual Server? Server { get; set; }
}
