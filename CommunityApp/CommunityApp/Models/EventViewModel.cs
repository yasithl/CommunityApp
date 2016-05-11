using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Models
{
    public class EventViewModel
    {
        [Required]
        public string Name { get; set; }
        [Required]
        [UIHint("tinymce_full"), AllowHtml]
        public string Description { get; set; }
        [Required]
        public string Location { get; set; }
        [Required]
        public DateTime StartDate { get; set; }
        [Required]
        public DateTime EndDate { get; set; }
        public Nullable<int> Capacity { get; set; }
    }
}