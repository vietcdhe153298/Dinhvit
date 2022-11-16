using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class Bill
    {
        public Bill()
        {
            BillDetails = new HashSet<BillDetail>();
        }

        public int BillId { get; set; }
        public int? TableId { get; set; }
        public DateTime? CheckOut { get; set; }
        public string TotalPrice { get; set; }
        public bool? Status { get; set; }

        public virtual Table Table { get; set; }
        public virtual ICollection<BillDetail> BillDetails { get; set; }
    }
}
