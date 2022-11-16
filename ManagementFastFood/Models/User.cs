using System;
using System.Collections.Generic;

#nullable disable

namespace ManagementFastFood.Models
{
    public partial class User
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FullName { get; set; }
        public bool? Gender { get; set; }
        public DateTime? Dob { get; set; }
        public string Address { get; set; }
        public string Mobile { get; set; }
        public string Avatar { get; set; }
        public bool? RoleId { get; set; }
    }
}
