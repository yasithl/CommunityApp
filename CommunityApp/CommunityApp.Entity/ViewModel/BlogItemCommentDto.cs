using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Entity.ViewModel
{
    public class BlogItemCommentDto
    {
        public long ID { get; set; }
        public long PostID { get; set; }
        public string Comment { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public System.DateTime UpdatedDate { get; set; }

    }
}
