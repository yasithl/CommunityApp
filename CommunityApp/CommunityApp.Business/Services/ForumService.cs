using CommunityApp.Business.ServiceContracts;
using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.DataAccess.RepositoryContracts;
using CommunityApp.Entity;
using CommunityApp.Entity.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.Services
{
    public class ForumService : IForumService
    {
        private readonly IForumCategoryRepository _forumCategoryRepository;
        private readonly IForumMessageRepository _forumMessageRepository;
        private readonly IForumRepository _forumRepository;
        private readonly IUnitOfWork _unitOfWork;

        public ForumService(IForumCategoryRepository forumCategoryRepository, IForumMessageRepository forumMessageRepository, IForumRepository forumRepository, IUnitOfWork unitOfWork)
        {
            _forumCategoryRepository = forumCategoryRepository;
            _forumMessageRepository = forumMessageRepository;
            _forumRepository = forumRepository;
            _unitOfWork = unitOfWork;
        }

        public bool CreateForumCategory(ForumCategory forumCategory)
        {
            bool flag = false;

            try
            {
                _forumCategoryRepository.Add(forumCategory);
                _unitOfWork.Commit();
                flag = true;
            }
            catch { }

            return flag;
        }

        public IEnumerable<ForumCategory> GetlAllForumCategories()
        {
            return _forumCategoryRepository.GetAll().ToList();
        }

        public bool CreateForum(Forum forum)
        {
            bool flag = false;

            try
            {
                _forumRepository.Add(forum);
                _unitOfWork.Commit();
                flag = true;
            }
            catch { }

            return flag;
        }

        public Forum ForumGetById(long id)
        {
            return _forumRepository.GetById(id);
        }

        public IEnumerable<Forum> GetAllForums()
        {
            return _forumRepository.GetAll().Where(x=>x.IsActive).ToList();
        }

        public ForumItemDto GetForumDtoById(long id)
        {
            Forum forum = ForumGetById(id);

            ForumItemDto itemDto = new ForumItemDto
            {
                CreatedBy = forum.CreatedBy,
                CreatedDate = forum.CreatedDate,
                QuestionDescription = forum.QuestionDescription,
                IsActive = forum.IsActive,
                ForumId = forum.ForumId,
                QuestionTitle = forum.QuestionTitle,
                UpdatedBy = forum.UpdatedBy,
                UpdatedDate = forum.UpdatedDate,
                IsAnswered = forum.IsAnswered,
                ForumCategoryId = forum.ForumCategoryId,
                Votes = forum.Votes
            };

            if (forum.ForumMessages.Any())
            {
                var existingAnswers = forum.ForumMessages.ToList();

                itemDto.ForumMessages = new List<ForumMessageDto>();

                for (int i = 0; i < existingAnswers.Count; i++)
                {
                    itemDto.ForumMessages.Add(new ForumMessageDto
                    {
                        MessageDescription = existingAnswers[i].MessageDescription,
                        CreatedBy = existingAnswers[i].CreatedBy,
                        CreatedDate = existingAnswers[i].CreatedDate,
                        ForumMessageId = existingAnswers[i].ForumMessageId,
                        ForumId = existingAnswers[i].ForumId,
                        UpdatedBy = existingAnswers[i].UpdatedBy,
                        UpdatedDate = existingAnswers[i].UpdatedDate,
                        IsActive = existingAnswers[i].IsActive,
                        IsCorrectAnswer = existingAnswers[i].IsCorrectAnswer
                    });
                }

            }

            return itemDto;
        }

        public bool CreateForumAnswer(ForumMessage forumAnswer)
        {
            bool flag = false;
            try
            {
                _forumMessageRepository.Add(forumAnswer);
                _unitOfWork.Commit();
                flag = true;
            }
            catch { }

            return flag;
        }
    }
}
