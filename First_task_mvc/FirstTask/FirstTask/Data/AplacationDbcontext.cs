using Microsoft.EntityFrameworkCore;
using System.Numerics;
using System;
using FirstTask.Models;

namespace FirstTask.Data
{
    public class AplacationDbcontext : DbContext
    {
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            var doctors = new List<Doctor>
            {
            new Doctor { Id = 1, Name = "Dr. John Smith", Specialization = "Cardiology", Img = "doctor1.jpg" },
            new Doctor { Id = 2, Name = "Dr. Sarah Johnson", Specialization = "Pediatrics", Img = "doctor2.jpg" },
            new Doctor { Id = 3, Name = "Dr. Emily Davis", Specialization = "Dermatology", Img = "doctor4.jpg" },
             new Doctor { Id = 4, Name = "Dr. Michael Lee", Specialization = "Orthopedics", Img = "doctor3.jpg" },
            new Doctor { Id = 5, Name = "Dr. William Clark", Specialization = "Neurology", Img = "doctor5.jpg" },
            };
            modelBuilder.Entity<Doctor>().HasData(doctors);
            base.OnModelCreating(modelBuilder);
        }
        public DbSet<Doctor> Doctors { get; set; }
        public DbSet<Pactiont> pactionts { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);

            optionsBuilder.UseSqlServer("Data Source=.; Initial Catalog=test122; Integrated Security=True; TrustServerCertificate=True");
        }
    }
}
    

