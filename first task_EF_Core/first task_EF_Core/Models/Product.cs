﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace first_task_EF_Core.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public string Name { get; set; }
        public int 	Quantity  { get; set; }
        public double Price { get; set; }
        public Double Sales { get; set; }

        public string Description { get; set; }


    }
}
