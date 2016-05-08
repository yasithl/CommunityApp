using CommunityApp.Business.ServiceContracts;
using CommunityApp.DataAccess.DBInteractions;
using CommunityApp.DataAccess.RepositoryContracts;
using CommunityApp.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CommunityApp.Business.Services
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _userRepository;
        private readonly IUnitOfWork _unitOfWork;

        public UserService(IUserRepository userRepository, IUnitOfWork unitOfWork)
        {
            _userRepository = userRepository;
            _unitOfWork = unitOfWork;
        }

        public IEnumerable<AspNetUser> GetAllUsers()
        {
            return _userRepository.GetAll();
        }

        public AspNetUser GetUserById(string id)
        {
            return _userRepository.Get(x => x.Id == id);
        }
    }
}
