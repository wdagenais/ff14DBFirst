using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("PersonnageItem", Schema = "Personnage")]
public partial class PersonnageItem
{
    [Key]
    public int PersonnageItemId { get; set; }

    public int? PersonnageId { get; set; }

    public int? ItemId { get; set; }

    [ForeignKey("ItemId")]
    [InverseProperty("PersonnageItems")]
    public virtual Item? Item { get; set; }

    [ForeignKey("PersonnageId")]
    [InverseProperty("PersonnageItems")]
    public virtual Personnage? Personnage { get; set; }
}
