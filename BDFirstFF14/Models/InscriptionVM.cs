using System.ComponentModel.DataAnnotations;

namespace BDFirstFF14.Models
{
    public class InscriptionVM
    {

        [Required(ErrorMessage = "Un nom est requis")]
        public string Nom { get; set; }

        [Required(ErrorMessage = "Un Prenom est requis")]
        public string Prenom { get; set; }


        [Required(ErrorMessage = "Un Courriel est nécessaire")]
        [DataType(DataType.EmailAddress)]
        public string Courriel { get; set; }


        [Required(ErrorMessage = "Veuillez entrer votre mot de passe")]
        [DataType(DataType.Password)]
        [StringLength(50, MinimumLength = 6, ErrorMessage ="Le mot de passe doit être entre 6 et 50 caractères")]
        public string MotDePasse { get; set; }


        [Required(ErrorMessage = "Veuillez confirmer votre mot de passe")]
        [Compare(nameof(MotDePasse), ErrorMessage = "Les deux mots de passes sont différents")]
        public string ConfirmMotDePasse { get; set; }






    }
}
