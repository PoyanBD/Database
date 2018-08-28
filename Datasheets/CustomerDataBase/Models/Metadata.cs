using System;
using System.ComponentModel.DataAnnotations;

namespace CustomerDataBase.Models
{
    public class Metadata
    {
        [StringLength(50)]
        [Display(Name = "Last Name")]
        public string LastName;

        [StringLength(50)]
        [Display(Name = "First Name")]
        public string FirstName;

        [StringLength(50)]
        [Display(Name = "Email")]
        public string Email; 
        
    }
}