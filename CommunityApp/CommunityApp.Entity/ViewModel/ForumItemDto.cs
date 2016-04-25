using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Entity.ViewModel
{
    public class ForumItemDto
    {
        public long ForumId { get; set; }
        public Nullable<long> ForumCategoryId { get; set; }
        public string QuestionTitle { get; set; }
        public string QuestionDescription { get; set; }
        public Nullable<bool> IsAnswered { get; set; }
        public Nullable<int> Votes { get; set; }
        public bool IsActive { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }

        public virtual ICollection<ForumMessageDto> ForumMessages { get; set; }
        [Required]
        public string Answer { get; set; }
    }
}
