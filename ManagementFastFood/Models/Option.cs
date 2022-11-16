using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class Option
    {
        public int Id { get; set; }
        public int FoodId { get; set; }
        public string Size { get; set; }
        public int? Price { get; set; }
        public bool? Status { get; set; }

        public virtual Food Food { get; set; }
    }
}
