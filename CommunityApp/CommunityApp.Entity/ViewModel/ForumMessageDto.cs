using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Entity.ViewModel
{
    public class ForumMessageDto
    {
        public long ForumMessageId { get; set; }
        public string MessageDescription { get; set; }
        public Nullable<long> ForumId { get; set; }
        public Nullable<bool> IsCorrectAnswer { get; set; }
        public bool IsActive { get; set; }
        public string CreatedBy { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public Nullable<System.DateTime> UpdatedDate { get; set; }
    }
}
