using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CommunityApp.Startup))]
namespace CommunityApp
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
