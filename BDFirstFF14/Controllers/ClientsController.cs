using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BDFirstFF14.Data;
using BDFirstFF14.Models;

using BDFirstFF14.Data;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.Data.SqlClient;
using System.Security.Claims;
using System.Security.Principal;
using BDFirstFF14.ViewModel;


namespace BDFirstFF14.Controllers
{

    public class ClientsController : Controller
{
    readonly BD_FF14Context _context;
    public ClientsController(BD_FF14Context context)
    {
        _context = context;
    }

        public async Task<IActionResult> Index()
        {
            ViewData["client"] = "Visiteur";
            IIdentity? identity = HttpContext.User.Identity;
            if(identity != null && identity.IsAuthenticated)
            {
                string pseudo = HttpContext.User.FindFirstValue(ClaimTypes.Name);
                Client? client = await _context.Clients.FirstOrDefaultAsync(c => c.Nom == pseudo);
                if(client != null)
                {
                    ViewData["client"] = client.Nom;
                }

            }

            return View();

        }

        [HttpGet]
        public IActionResult Inscription()
        {
            return View();
        }


        //Controlleur deux action importantes
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Inscription(InscriptionVM inscriptionVM)
        {
            bool existeDeja = await _context.Clients.AnyAsync(c => c.Courriel == inscriptionVM.Courriel);
            if (existeDeja)
            {
                ModelState.AddModelError("Courriel", "Ce couriel à déjà un compte");
                return View(inscriptionVM);
            }


            string query = "EXEC Clients.USP_CreerClient @Nom, @Prenom, @Courriel, @MotDePasse";

            List<SqlParameter> parameters = new List<SqlParameter>
            {
                new SqlParameter{ParameterName = "@Nom", Value = inscriptionVM.Nom},
                new SqlParameter{ParameterName = "@Prenom", Value = inscriptionVM.Prenom},
                new SqlParameter{ParameterName = "@Courriel", Value = inscriptionVM.Courriel},
                new SqlParameter{ParameterName = "@MotDePasse", Value = inscriptionVM.MotDePasse}
            };


            try
            {
                await _context.Database.ExecuteSqlRawAsync(query, parameters.ToArray());
            }
            catch (Exception)
            {
                ModelState.AddModelError("", "Une erreur est survenue veuillez réesayez");
                return View(inscriptionVM);
            }
            return RedirectToAction("Connexion", "Clients");
        }



        [HttpGet]
        public IActionResult Connexion()
        {
            return View();
        }


        [HttpPost]
        public async Task<IActionResult> Connexion(ConnexionVM connexionVM)
        {
            string query = "EXEC Clients.USP_AuthClient @Courriel, @MotDePasse";
            List<SqlParameter> parameters = new List<SqlParameter>
            {
                new SqlParameter{ParameterName = "@Courriel", Value = connexionVM.Courriel},
                new SqlParameter{ParameterName = "@MotDePasse", Value = connexionVM.MotDePasse}
            };


            Client? client = (await _context.Clients.FromSqlRaw(query, parameters.ToArray()).ToListAsync()).FirstOrDefault();

            if (client == null)
            {
                ModelState.AddModelError("", "Nom d'utilisateur ou mot de passe invalide");
                return View(connexionVM);
            }

            List<Claim> claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, client.ClientId.ToString()),
                new Claim(ClaimTypes.Name, client.Courriel)
            };


            ClaimsIdentity identity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
            ClaimsPrincipal principal = new ClaimsPrincipal(identity);
            await HttpContext.SignInAsync(principal);

            return RedirectToAction("Index", "Personnages");
        }



        [HttpGet]
        public async Task<IActionResult> Deconnexion()
        {
            await HttpContext.SignOutAsync();
            return RedirectToAction("Index", "Personnages");
        }
    }
}