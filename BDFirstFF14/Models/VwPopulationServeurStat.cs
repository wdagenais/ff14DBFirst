using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Models;

[Keyless]
public partial class VwPopulationServeurStat
{
    [Column("Nom du Serveur")]
    [StringLength(25)]
    [Unicode(false)]
    public string NomDuServeur { get; set; } = null!;

    [StringLength(30)]
    [Unicode(false)]
    public string Region { get; set; } = null!;

    [Column("Nom de la Grande Companie")]
    [StringLength(25)]
    [Unicode(false)]
    public string NomDeLaGrandeCompanie { get; set; } = null!;

    [Column("Nombre de personages")]
    public int? NombreDePersonages { get; set; }
}
