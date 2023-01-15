using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace Rp3.Test.Mvc
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {

            var cultureInfo = new CultureInfo("es-MX");
            // set the format based on the component format property value

            cultureInfo.DateTimeFormat.ShortDatePattern = "MM/dd/yyyy";

            CultureInfo.DefaultThreadCurrentCulture = cultureInfo;

            CultureInfo.DefaultThreadCurrentUICulture = cultureInfo;

            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

        }
    }
}
