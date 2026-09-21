using BDFirstFF14.Data;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();

builder.Services.AddDbContext<BD_FF14Context>(
    options => options.UseSqlServer(builder.Configuration.GetConnectionString("BD_FF14"))
    );

builder.Services.AddAuthentication(CookieAuthenticationDefaults.AuthenticationScheme).AddCookie(options =>
{
    options.LoginPath = "/Clients/Connexion";
    options.LogoutPath = "/Clients/Deconnexion";

});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}
app.UseStaticFiles();



app.UseRouting();

app.UseAuthentication();


app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Personnages}/{action=Index}/{id?}"
    );

app.MapRazorPages();

app.Run();
