using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Fashion_Website.Startup))]
namespace Fashion_Website
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
