using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Weapon", Schema = "Item")]
public partial class Weapon
{
    [Key]
    public int WeaponId { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string? Nom { get; set; }

    [Column(TypeName = "decimal(15, 5)")]
    public decimal? AutoAttack { get; set; }

    [InverseProperty("Weapon")]
    public virtual ICollection<Item> Items { get; set; } = new List<Item>();
}
