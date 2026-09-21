using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Profilpic", Schema = "Personnage")]
[Index("Identifiant", Name = "UC_Personnage_Identifiant", IsUnique = true)]
[Index("PersonnageId", Name = "UQ_Profilpic_PersonnageId", IsUnique = true)]
public partial class Profilpic
{
    [Key]
    [Column("ProfilpicID")]
    public int ProfilpicId { get; set; }

    public int? PersonnageId { get; set; }

    [StringLength(100)]
    public string Nom { get; set; } = null!;

    public Guid Identifiant { get; set; }

    public byte[]? Photo { get; set; }

    [ForeignKey("PersonnageId")]
    [InverseProperty("Profilpic")]
    public virtual Personnage? Personnage { get; set; }
}
