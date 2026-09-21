using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Keyless]
public partial class VwDetailPerso
{
    [StringLength(25)]
    [Unicode(false)]
    public string? Pseudo { get; set; }

    public DateOnly DateCreation { get; set; }

    [StringLength(15)]
    [Unicode(false)]
    public string? Classe { get; set; }

    [StringLength(15)]
    [Unicode(false)]
    public string? Race { get; set; }

    [Column("Grande Compagnie")]
    [StringLength(25)]
    [Unicode(false)]
    public string GrandeCompagnie { get; set; } = null!;

    [StringLength(25)]
    [Unicode(false)]
    public string Serveur { get; set; } = null!;

    public int PersonnageId { get; set; }

    public int GrandeCompagnieId { get; set; }

    public int ServerId { get; set; }
}
