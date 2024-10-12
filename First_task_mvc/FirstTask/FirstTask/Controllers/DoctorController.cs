using FirstTask.Data;
using FirstTask.Models;
using Microsoft.AspNetCore.Mvc;

namespace FirstTask.Controllers
{
    public class DoctorController : Controller
    {
        AplacationDbcontext dbContext = new AplacationDbcontext();
        public IActionResult Index()
        {
            var doctors = dbContext.Doctors.ToList();
            return View(doctors);
        }

        public IActionResult Doctor(int Id)
        {
            var doctor = dbContext.Doctors.Find(Id);
            return View(doctor);
        }

        public IActionResult AddPatient(Pactiont patient)
        {


            dbContext.pactionts.Add(patient);
            dbContext.SaveChanges();

            return RedirectToAction(nameof(Index));
        }
    }
}
