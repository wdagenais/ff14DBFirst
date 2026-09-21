using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Consommable", Schema = "Item")]
public partial class Consommable
{
    [Key]
    public int ConsommableId { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string? Nom { get; set; }

    public int? HpRegenere { get; set; }

    public int? MpRegenere { get; set; }

    [InverseProperty("Consommable")]
    public virtual ICollection<Item> Items { get; set; } = new List<Item>();
}
