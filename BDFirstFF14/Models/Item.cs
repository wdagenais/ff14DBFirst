using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Item", Schema = "Item")]
public partial class Item
{
    [Key]
    public int ItemId { get; set; }

    public int? WeaponId { get; set; }

    public int? ConsommableId { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string? Nom { get; set; }

    [StringLength(12)]
    [Unicode(false)]
    public string? TypeItem { get; set; }

    [StringLength(65)]
    [Unicode(false)]
    public string? Description { get; set; }

    [ForeignKey("ConsommableId")]
    [InverseProperty("Items")]
    public virtual Consommable? Consommable { get; set; }

    [InverseProperty("Item")]
    public virtual ICollection<PersonnageItem> PersonnageItems { get; set; } = new List<PersonnageItem>();

    [ForeignKey("WeaponId")]
    [InverseProperty("Items")]
    public virtual Weapon? Weapon { get; set; }
}
