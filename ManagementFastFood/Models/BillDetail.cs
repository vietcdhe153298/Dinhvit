using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class BillDetail
    {
        public int Id { get; set; }
        public int BillId { get; set; }
        public int? FoodId { get; set; }
        public string Size { get; set; }
        public byte? Amount { get; set; }

        public virtual Bill Bill { get; set; }
        public virtual Food Food { get; set; }
    }
}
