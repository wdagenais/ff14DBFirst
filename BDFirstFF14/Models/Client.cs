using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Table("Client", Schema = "Clients")]
[Index("Courriel", Name = "UQ__Client__14DF3635C6B0E119", IsUnique = true)]
public partial class Client
{
    [Key]
    [Column("ClientID")]
    public int ClientId { get; set; }

    [StringLength(50)]
    public string? Nom { get; set; }

    [StringLength(50)]
    public string Prenom { get; set; } = null!;

    [StringLength(256)]
    public string Courriel { get; set; } = null!;

    [MaxLength(32)]
    public byte[] MotDePasseHache { get; set; } = null!;

    [MaxLength(16)]
    public byte[] Sel { get; set; } = null!;
}
