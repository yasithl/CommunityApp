using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Models
{
    public class BlogPostViewModel
    {
        public string Title { get; set; }
        [UIHint("tinymce_full"), AllowHtml]
        public string Description { get; set; }
    }
}