using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CommunityApp.Models
{
    public class ForumViewModel
    {
        [Required]
        public long ForumCategoryId { get; set; }
        [Required]
        public string QuestionTitle { get; set; }
        [UIHint("tinymce_full"), AllowHtml]
        [Required]
        public string QuestionDescription { get; set; }

        public List<SelectListItem> ForumCategoryList { get; set; }
    }
}