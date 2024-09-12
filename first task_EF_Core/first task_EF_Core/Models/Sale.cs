using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first_task_EF_Core.Models
{
    public class Sale
    {
        public int Id { get; set; }
        public string 	Product { get; set; }


        public string 	Customer { get; set; }
        public string 	Store { get; set; }
        public DateTime date { get; set; }

    }
}
