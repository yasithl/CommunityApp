using CommunityApp.Business.ServiceContracts;
using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.DataAccess.RepositoryContracts;
using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
using System.Collections.Generic;
using System.Linq;

namespace CommunityApp.Business.Services
{
    public class BlogService : IBlogService
    {
        private readonly IBlogPostRepository _blogRepository;
        private readonly IBlogPostCommentRepository _blogCommentRepository;
        private readonly IUnitOfWork _unitOfWork;

        public BlogService(IBlogPostRepository blogRepository, IBlogPostCommentRepository blogCommentRepository, IUnitOfWork unitOfWork)
        {
            _blogRepository = blogRepository;
            _blogCommentRepository = blogCommentRepository;
            _unitOfWork = unitOfWork;
        }

        public bool CreatePost(BlogPost post)
        {
            bool flag = false;
            try
            {
                _blogRepository.Add(post);
                _unitOfWork.Commit();

                flag = true;
            }
            catch { }
            
            return flag;
        }

        public IEnumerable<BlogPost> GetAllPosts()
        {
            var tt = _blogRepository.GetAll().ToList();

            return tt;
        }

        public BlogPost GetById(long id)
        {
            return _blogRepository.GetById(id);
        }

        public bool CreatePostComment(BlogPostComment postComment)
        {
            bool flag = false;
            try
            {
                _blogCommentRepository.Add(postComment);
                _unitOfWork.Commit();
                flag = true;
            }
            catch { }

            return flag;
        }
    }
}
