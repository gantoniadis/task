using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OrderezeTask.Startup))]
namespace OrderezeTask
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
