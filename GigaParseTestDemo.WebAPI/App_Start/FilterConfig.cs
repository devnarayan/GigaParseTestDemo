using System.Web;
using System.Web.Http.Filters;
using System.Web.Mvc;

namespace GigaParseTestDemo.WebAPI
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
    //public class AllowCrossSiteJsonAttribute : ActionFilterAttribute
    //{
    //    public override void OnActionExecuted(HttpActionExecutedContext actionExecutedContext)
    //    {
    //        if (actionExecutedContext.Response != null)
    //            actionExecutedContext.Response.Headers.Add("Access-Control-Allow-Origin", "*");

    //        base.OnActionExecuted(actionExecutedContext);
    //    }
    //}
}
