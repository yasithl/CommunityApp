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
        public long PostId { get; set; }
        [UIHint("tinymce_comment")]
        [AllowHtml]
        [Required]
        public string Comment { get; set; }
    }
}