using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class Table
    {
        public Table()
        {
            Bills = new HashSet<Bill>();
        }

        public int TableId { get; set; }
        public string TableName { get; set; }
        public bool? Status { get; set; }

        public virtual ICollection<Bill> Bills { get; set; }
    }
}
