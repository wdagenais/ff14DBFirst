using Microsoft.AspNetCore.Mvc.Rendering;

namespace BDFirstFF14.ViewModel
{
    public class ChangerGrandeCompanieVM
    {

        public int GrandeCompanieId { get; set; }

        public int PersonnageId { get; set; }

        //public string GrandeCompanie { get; set; } = "Toutes";

        public List<SelectListItem> GrandeCompanies { get; set; } = new List<SelectListItem>
        {
            new SelectListItem{ Value = "1", Text = "Maelstrom"},
            new SelectListItem{ Value = "2", Text = "Twin Adder"},
            new SelectListItem{ Value = "3", Text = "Immortal Flames"},
        };


    }
}
