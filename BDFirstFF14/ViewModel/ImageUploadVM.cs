using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BDFirstFF14.ViewModel
{
    public class ImageUploadVM
    {

        [Required]
        public int PersonnageId { get; set; }

        [Required(ErrorMessage ="Il faut joindre un fichier image.")]
        [NotMapped]
        public IFormFile FormFile { get; set; } = null!;

        [Required(ErrorMessage ="Il faut specifier le nom de l'image")]
        [DisplayName("Nom de l'image en minuscules")]
        public string NomImage { get; set; } = null!;



    }
}
