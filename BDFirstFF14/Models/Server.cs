using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Server", Schema = "SGC")]
[Index("Nom", Name = "IX_Serveur_Nom")]
public partial class Server
{
    [Key]
    public int ServerId { get; set; }

    [StringLength(25)]
    [Unicode(false)]
    public string Nom { get; set; } = null!;

    [StringLength(30)]
    [Unicode(false)]
    public string Region { get; set; } = null!;

    [InverseProperty("Server")]
    public virtual ICollection<Personnage> Personnages { get; set; } = new List<Personnage>();
}
