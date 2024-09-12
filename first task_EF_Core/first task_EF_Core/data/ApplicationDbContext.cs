using first_task_EF_Core.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first_task_EF_Core.data
{
   public class ApplicationDbContext : DbContext
    {

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);

            optionsBuilder.UseSqlServer("Data Source=.;" +
            "Initial Catalog=Sales_Database;" +
           "Integrated Security=True;" +
              "TrustServerCertificate=True");
        }

        DbSet<Coustmer> coustmerSet { set; get; }
        DbSet<Product> productSet { set; get; }
        DbSet<Sale> sales { set; get; }
        DbSet<Store> stores { set; get; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Product>()
       .Property(b => b.Name)
       .HasColumnType("varchar(50)");

            modelBuilder.Entity<Coustmer>()
    .Property(b => b.Name)
    .HasColumnType("varchar(100)");

            modelBuilder.Entity<Coustmer>()
.Property(b => b.Email)
.HasColumnType("varchar(80)");

            modelBuilder.Entity<Coustmer>()
.Property(b => b.Email)
.IsUnicode(false);

            modelBuilder.Entity<Store>()
                 .Property(b => b.Name)
                 .HasColumnType("varchar(80)");

        }
    }
  
}
