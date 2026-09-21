using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BDFirstFF14.Data;
using BDFirstFF14.Models;
using BDFirstFF14.ViewModel;
using System.Security.Principal;
using System.Security.Claims;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Data.SqlClient;

namespace BDFirstFF14.Controllers
{
    public class PersonnagesController : Controller
    {
        private readonly BD_FF14Context _context;

        public PersonnagesController(BD_FF14Context context)
        {
            _context = context;
        }



        public async Task<IActionResult> UserDejaAuthentifier(FiltrePersoVM fpvm)
        {

            ViewData["client"] = TempData["client"];

            IQueryable<VwDetailPerso> personnages = _context.VwDetailPersos.AsQueryable();


            if (fpvm.Classe != "Toutes")
            {
                personnages = personnages.Where(p => p.Classe == fpvm.Classe);
            }

            if (fpvm.GrandeCompanie != "Toutes")
            {
                personnages = personnages.Where(p => p.GrandeCompagnie == fpvm.GrandeCompanie);
            }

            if (fpvm.Race != "Toutes")
            {
                personnages = personnages.Where(p => p.Race == fpvm.Race);
            }

            if (fpvm.Serveur != "Toutes")
            {
                personnages = personnages.Where(p => p.Serveur == fpvm.Serveur);
            }

            personnages = personnages.Skip((fpvm.Page - 1) * 30).Take(30);
            fpvm.PersoVMs = await personnages.ToListAsync();

            return View(fpvm);

        }

        [HttpGet]
        public async Task<IActionResult> ChangeGrandeCompagnie(int id)
        {
            Personnage? personnage = await _context.Personnages.Include(p => p.GrandeCompagnie).Include(s => s.Server).FirstOrDefaultAsync(p => p.PersonnageId == id);
            if(personnage == null)
            {
                return NotFound();
            }

            ChangerGrandeCompanieVM cgVM = new ChangerGrandeCompanieVM
            {
                PersonnageId = id,
                GrandeCompanieId = (int)personnage.GrandeCompagnieId,

            };
                
            return View(cgVM);
        }



        [HttpPost]
        public async Task<IActionResult> ChangeGrandeCompagnie(ChangerGrandeCompanieVM cgVM)
        {

            Personnage? personnage  = await _context.Personnages.FirstOrDefaultAsync(p => p.PersonnageId == cgVM.PersonnageId);
            if(personnage == null)
            {
                return NotFound();
            }


            string query = "EXEC Personnage.usp_changerGrandeCompagnie @PersonnageId, @GrandeCompagnieId";


            List<SqlParameter> parameters = new List<SqlParameter>()
            {
                new SqlParameter("@PersonnageId", cgVM.PersonnageId),
                new SqlParameter("@GrandeCompagnieId", cgVM.GrandeCompanieId)

            };



            await _context.Database.ExecuteSqlRawAsync(query, parameters.ToArray());
            return RedirectToAction("Index");
        }




        public async Task<IActionResult> StatPopServeur()
        {

            IEnumerable<VwPopulationServeurStat> serverPop = await _context.VwPopulationServeurStats.ToListAsync();
            return View(serverPop);
        }



        // GET: Personnages
        public async Task<IActionResult> Index()
        {
            TempData["client"] = "Visiteur";
            IIdentity? identity = HttpContext.User.Identity;
            if (identity != null && identity.IsAuthenticated)
            {
                string courriel = HttpContext.User.FindFirstValue(ClaimTypes.Name);
                Client? client = await _context.Clients.FirstOrDefaultAsync(c => c.Courriel == courriel);  //Vérifier pk le bool n'est pas true, mismatch entre les nom, il faut des caps ou pas etc.
                if (client != null)
                {
                    TempData["client"] = client.Nom;
                    return RedirectToAction("UserDejaAuthentifier");
                }
            } 
            IQueryable<Personnage> personnages = _context.Personnages.Include(p => p.GrandeCompagnie).Include(p => p.Server).AsQueryable();
            personnages = personnages.OrderByDescending(p => p.PersonnageId).Take(30);
            List<Personnage> listPerso = await personnages.ToListAsync();

            ViewData["client"] = TempData["client"];

            return View(listPerso);
        }


        [HttpGet]
        public async Task<IActionResult> AjouterImage(int id)
        {
            var vm = new ImageUploadVM
            {
                PersonnageId = id,
            };

            return View(vm);
        }


        [HttpPost]
        public async Task<IActionResult> AjouterImage(ImageUploadVM ivm)
        {
            if (ModelState.IsValid)
            {
                Profilpic? profilpic = await _context.Profilpics.FirstOrDefaultAsync(p => p.PersonnageId == ivm.PersonnageId);

                if(profilpic == null)
                {
                    profilpic = new Profilpic
                    {
                        PersonnageId = ivm.PersonnageId,
                        Nom = ivm.NomImage,
                        Identifiant = Guid.NewGuid(),
                    };

                    _context.Profilpics.Add(profilpic);
                }

                else
                {
                    profilpic.Nom = ivm.NomImage;
                }

                if (ivm.FormFile != null && ivm.FormFile.Length >= 0)
                {
                    MemoryStream stream = new MemoryStream();
                    await ivm.FormFile.CopyToAsync(stream);
                    byte[] fichierImage = stream.ToArray();
                    profilpic.Photo = fichierImage;

                }

                await _context.SaveChangesAsync();
                return RedirectToAction("VueImage", new { id = ivm.PersonnageId, nomImg = profilpic.Nom });
            }

            return View(ivm);
        }



        [HttpGet]
        public async Task<IActionResult> GetProfilpicImage(string nomImg)
        {
            var profilpic = await _context.Profilpics
                .FirstOrDefaultAsync(p => p.Nom == nomImg);

            string mimeType = GetMimeType(nomImg);

            if (profilpic?.Photo != null)
            {
                return File(profilpic.Photo, mimeType); 
            }

            var placeholderPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "uploads", "placeholder.jpg");
            var bytes = await System.IO.File.ReadAllBytesAsync(placeholderPath);
            return File(bytes, mimeType);
        }

        private string GetMimeType(string nomImg)
        {
            var extension = Path.GetExtension(nomImg)?.ToLowerInvariant();

            return extension switch
            {
                ".jpg" or ".jpeg" => "image/jpeg",
                ".png" => "image/png",
                ".gif" => "image/gif",
                ".bmp" => "image/bmp",
                ".webp" => "image/webp",
                _ => "application/octet-stream" // default if unknown
            };
        }

        public async Task<IActionResult> VueImage(int? id, string nomImg)
        {
            if (id == null)
            {
                return NotFound();
            }

            var userpic = await _context.Profilpics.FirstOrDefaultAsync(p => p.Nom == nomImg);

            if (userpic == null)
            {
                nomImg = "placeholder.jpg";
            }

            var personnage = await _context.Personnages
                .Include(p => p.GrandeCompagnie)
                .Include(p => p.Server)
                .FirstOrDefaultAsync(m => m.PersonnageId == id);
            if (personnage == null)
            {
                return NotFound();
            }

            RacePrefVM racePrefVM = new RacePrefVM()
            {
                PersonnageId = personnage.PersonnageId,
                Race = personnage.Race,
                NomImage = nomImg,
                Nom = personnage.Pseudo
            };

            return View(racePrefVM);
        }

        // GET: Personnages/Create
        public IActionResult Create()
        {
            ViewData["GrandeCompagnieId"] = new SelectList(_context.GrandeCompagnies, "GrandeCompagnieId", "GrandeCompagnieId");
            ViewData["ServerId"] = new SelectList(_context.Servers, "ServerId", "ServerId");
            return View();
        }

        // POST: Personnages/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("PersonnageId,GrandeCompagnieId,ServerId,DateCreation,Pseudo,Race,Classe")] Personnage personnage)
        {
            if (ModelState.IsValid)
            {
                _context.Add(personnage);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["GrandeCompagnieId"] = new SelectList(_context.GrandeCompagnies, "GrandeCompagnieId", "GrandeCompagnieId", personnage.GrandeCompagnieId);
            ViewData["ServerId"] = new SelectList(_context.Servers, "ServerId", "ServerId", personnage.ServerId);
            return View(personnage);
        }

        // GET: Personnages/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var personnage = await _context.Personnages.FindAsync(id);
            if (personnage == null)
            {
                return NotFound();
            }
            ViewData["GrandeCompagnieId"] = new SelectList(_context.GrandeCompagnies, "GrandeCompagnieId", "GrandeCompagnieId", personnage.GrandeCompagnieId);
            ViewData["ServerId"] = new SelectList(_context.Servers, "ServerId", "ServerId", personnage.ServerId);
            return View(personnage);
        }

        // POST: Personnages/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("PersonnageId,GrandeCompagnieId,ServerId,DateCreation,Pseudo,Race,Classe")] Personnage personnage)
        {
            if (id != personnage.PersonnageId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(personnage);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!PersonnageExists(personnage.PersonnageId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["GrandeCompagnieId"] = new SelectList(_context.GrandeCompagnies, "GrandeCompagnieId", "GrandeCompagnieId", personnage.GrandeCompagnieId);
            ViewData["ServerId"] = new SelectList(_context.Servers, "ServerId", "ServerId", personnage.ServerId);
            return View(personnage);
        }

        // GET: Personnages/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var personnage = await _context.Personnages
                .Include(p => p.GrandeCompagnie)
                .Include(p => p.Server)
                .FirstOrDefaultAsync(m => m.PersonnageId == id);
            if (personnage == null)
            {
                return NotFound();
            }

            return View(personnage);
        }

        // POST: Personnages/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var personnage = await _context.Personnages.FindAsync(id);
            if (personnage != null)
            {
                _context.Personnages.Remove(personnage);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool PersonnageExists(int id)
        {
            return _context.Personnages.Any(e => e.PersonnageId == id);
        }
    }
}
