using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GigaParseTestDemo.Startup))]
namespace GigaParseTestDemo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
