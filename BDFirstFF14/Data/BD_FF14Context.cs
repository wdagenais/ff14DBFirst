using System;
using System.Collections.Generic;
using BDFirstFF14.Models;
using Microsoft.EntityFrameworkCore;

namespace BDFirstFF14.Data;

public partial class BD_FF14Context : DbContext
{
    public BD_FF14Context()
    {
    }

    public BD_FF14Context(DbContextOptions<BD_FF14Context> options)
        : base(options)
    {
    }

    public virtual DbSet<Changelog> Changelogs { get; set; }

    public virtual DbSet<Client> Clients { get; set; }

    public virtual DbSet<Consommable> Consommables { get; set; }

    public virtual DbSet<GrandeCompagnie> GrandeCompagnies { get; set; }

    public virtual DbSet<Item> Items { get; set; }

    public virtual DbSet<Personnage> Personnages { get; set; }

    public virtual DbSet<PersonnageItem> PersonnageItems { get; set; }

    public virtual DbSet<Profilpic> Profilpics { get; set; }

    public virtual DbSet<Server> Servers { get; set; }

    public virtual DbSet<VwDetailPerso> VwDetailPersos { get; set; }

    public virtual DbSet<VwPopulationServeurStat> VwPopulationServeurStats { get; set; }

    public virtual DbSet<Weapon> Weapons { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        => optionsBuilder.UseSqlServer("Name=BD_FF14");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Changelog>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__changelo__3213E83FAAE631F5");

            entity.Property(e => e.InstalledOn).HasDefaultValueSql("(getdate())");
        });

        modelBuilder.Entity<Client>(entity =>
        {
            entity.HasKey(e => e.ClientId).HasName("PK_ClientID");
        });

        modelBuilder.Entity<Consommable>(entity =>
        {
            entity.HasKey(e => e.ConsommableId).HasName("PK_ConsommableId");

            entity.Property(e => e.HpRegenere).HasDefaultValue(0);
            entity.Property(e => e.MpRegenere).HasDefaultValue(0);
        });

        modelBuilder.Entity<GrandeCompagnie>(entity =>
        {
            entity.HasKey(e => e.GrandeCompagnieId).HasName("PK_GrandeCompagnieId");
        });

        modelBuilder.Entity<Item>(entity =>
        {
            entity.HasKey(e => e.ItemId).HasName("PK_ItemId");

            entity.HasOne(d => d.Consommable).WithMany(p => p.Items)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_Consommable_ConsommableId");

            entity.HasOne(d => d.Weapon).WithMany(p => p.Items)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_Weapon_WeaponId");
        });

        modelBuilder.Entity<Personnage>(entity =>
        {
            entity.HasKey(e => e.PersonnageId).HasName("PK_PersonnageId");

            entity.HasOne(d => d.GrandeCompagnie).WithMany(p => p.Personnages)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_GrandeCompagnie_GrandeCompagnieId");

            entity.HasOne(d => d.Server).WithMany(p => p.Personnages)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_Server_ServerId");
        });

        modelBuilder.Entity<PersonnageItem>(entity =>
        {
            entity.HasKey(e => e.PersonnageItemId).HasName("PK_PersonnageItemId");

            entity.HasOne(d => d.Item).WithMany(p => p.PersonnageItems).HasConstraintName("FK_Item_ItemId");

            entity.HasOne(d => d.Personnage).WithMany(p => p.PersonnageItems)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_Personnage_PersonnageId");
        });

        modelBuilder.Entity<Profilpic>(entity =>
        {
            entity.HasKey(e => e.ProfilpicId).HasName("PK_Proficlpic_ProfilpicID");

            entity.Property(e => e.Identifiant).HasDefaultValueSql("(newid())");

            entity.HasOne(d => d.Personnage).WithOne(p => p.Profilpic)
                .OnDelete(DeleteBehavior.Cascade)
                .HasConstraintName("FK_Profilpic_PersonnageId");
        });

        modelBuilder.Entity<Server>(entity =>
        {
            entity.HasKey(e => e.ServerId).HasName("PK_ServerId");
        });

        modelBuilder.Entity<VwDetailPerso>(entity =>
        {
            entity.ToView("VW_DetailPerso", "Personnage");
        });

        modelBuilder.Entity<VwPopulationServeurStat>(entity =>
        {
            entity.ToView("vw_PopulationServeurStat", "Personnage");
        });

        modelBuilder.Entity<Weapon>(entity =>
        {
            entity.HasKey(e => e.WeaponId).HasName("PK_WeaponId");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
