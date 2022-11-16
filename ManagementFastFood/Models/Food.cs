using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class Food
    {
        public Food()
        {
            BillDetails = new HashSet<BillDetail>();
            Options = new HashSet<Option>();
        }

        public int FoodId { get; set; }
        public string FoodName { get; set; }
        public int? CategoryId { get; set; }

        public virtual Category Category { get; set; }
        public virtual ICollection<BillDetail> BillDetails { get; set; }
        public virtual ICollection<Option> Options { get; set; }
    }
}
