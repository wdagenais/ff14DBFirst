using BDFirstFF14.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace BDFirstFF14.ViewModel
{
    public class FiltrePersoVM
    {
        public List<VwDetailPerso> PersoVMs { get; set; } = null;

        [Range(1, int.MaxValue)]
        public int Page { get; set; } = 1;


        public string GrandeCompanie { get; set; } = "Toutes";

        public List<SelectListItem> GrandeCompanies { get; } = new List<SelectListItem>
        {
            new SelectListItem{ Value = "Toutes", Text = "Toutes"},
            new SelectListItem{ Value = "Maelstrom", Text = "Maelstrom"},
            new SelectListItem{ Value = "Twin Adder", Text = "Twin Adder"},
            new SelectListItem{ Value = "Immortal Flames", Text = "Immortal Flames"},
        };



        public string Race { get; set; } = "Toutes";
        public List<SelectListItem> Races { get; } = new List<SelectListItem>
        {
            new SelectListItem{ Value = "Toutes", Text = "Toutes"},
            new SelectListItem{ Value = "Au Ra", Text = "Au Ra"},
            new SelectListItem{ Value = "Elezen", Text = "Elezen"},
            new SelectListItem{ Value = "Hrothgar", Text = "Hrothgar"},
            new SelectListItem{ Value = "Hyur", Text = "Hyur"},
            new SelectListItem{ Value = "Lalafell", Text = "Lalafell"},
            new SelectListItem{ Value = "Miqo'te", Text = "Miqo'te"},
            new SelectListItem{ Value = "Roegadyn", Text = "Roegadyn"},
            new SelectListItem{ Value = "Viera", Text = "Viera"},
        };


        public string Classe { get; set; } = "Toutes";

        public List<SelectListItem> Classes { get; } = new List<SelectListItem>
        {
            new SelectListItem{ Value = "Toutes", Text = "Toutes"},
            new SelectListItem{ Value = "Astrologian", Text = "Astrologian"},
            new SelectListItem{ Value = "Bard", Text = "Bard"},
            new SelectListItem{ Value = "Black Mage", Text = "Black Mage"},
            new SelectListItem{ Value = "Blue Mage", Text = "Blue Mage"},
            new SelectListItem{ Value = "Dancer", Text = "Dancer"},
            new SelectListItem{ Value = "Dark Knight", Text = "Dark Knight"},
            new SelectListItem{ Value = "Dragoon", Text = "Dragoon"},
            new SelectListItem{ Value = "Gunbreaker", Text = "Gunbreaker"},
            new SelectListItem{ Value = "Machinist", Text = "Machinist"},
            new SelectListItem{ Value = "Monk", Text = "Monk"},
            new SelectListItem{ Value = "Ninja", Text = "Ninja"},
            new SelectListItem{ Value = "Paladin", Text = "Paladin"},
            new SelectListItem{ Value = "Red Mage", Text = "Red Mage"},
            new SelectListItem{ Value = "Samurai", Text = "Samurai"},
            new SelectListItem{ Value = "Scholar", Text = "Scholar"},
            new SelectListItem{ Value = "Summoner", Text = "Summoner"},
            new SelectListItem{ Value = "Warrior", Text = "Warrior"},
            new SelectListItem{ Value = "White Mage", Text = "White Mage"},
        };




        public string Serveur { get; set; } = "Toutes";
        public List<SelectListItem> Serveurs { get; } = new List<SelectListItem>
        {
            new SelectListItem{ Value = "Toutes", Text = "Toutes"},
            new SelectListItem{ Value = "Behemoth", Text = "Behemoth"},
            new SelectListItem{ Value = "Cactuar", Text = "Cactuar"},
            new SelectListItem{ Value = "Chocobo", Text = "Chocobo"},
            new SelectListItem{ Value = "Moogle", Text = "Moogle"},
            new SelectListItem{ Value = "Odin", Text = "Odin"},
            new SelectListItem{ Value = "Phoenix", Text = "Phoenix"},
            new SelectListItem{ Value = "Ragnarok", Text = "Ragnarok"},
            new SelectListItem{ Value = "Shiva", Text = "Shiva"},
            new SelectListItem{ Value = "Tonberry", Text = "Tonberry"},
            new SelectListItem{ Value = "Ultros", Text = "Ultros"},
        };





    }
}
