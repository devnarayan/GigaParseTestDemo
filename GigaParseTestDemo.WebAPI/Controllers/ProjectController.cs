using GigaParaseTestDemo.Data.Model;
using GigaParseTestDemo.Data.Access;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace GigaParseTestDemo.WebAPI.Controllers
{
    //[Authorize]
    [RoutePrefix("api/Project")]
    public class ProjectController : ApiController
    {
        IProjectService pservice;
        public ProjectController()
        {
            pservice = new ProjectService() ;
        }

        [Route("GetAllProjects")]
        public string GetAllProjects()
        {
            List<ProjectModel> model = pservice.AllProjects();
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        [Route("GetProject")]
        public string GetProject(int projectID)
        {
            Project model = pservice.GetProject(projectID);
            return Newtonsoft.Json.JsonConvert.SerializeObject(model);
        }
        [Route("SaveProject")]
        public string SaveProject(ProjectModel project)
        {
            project.CrBy = User.Identity.Name;
            int i = pservice.AddProject(project);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
        //[HttpPost]
        //[Route("EditProject")]
        public string EditProject(ProjectModel pmodel)
        {
            int i = pservice.EditProject(pmodel);
            return Newtonsoft.Json.JsonConvert.SerializeObject(i);
        }
    }
}
