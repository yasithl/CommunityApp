using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Models
{
    public class BlogCommentViewModel
    {
        [UIHint("tinymce_comment"), AllowHtml]
        public string Comment { get; set; }
    }
}