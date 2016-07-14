using AutoMapper;
using GigaParaseTestDemo.Data.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GigaParseTestDemo.Data.Access
{
    public interface IProjectService
    {
        List<ProjectModel> AllProjects();
        Project GetProject(int projectID);
        int AddProject(ProjectModel model);
        int EditProject(ProjectModel model);
    }
    public class ProjectService : IProjectService
    {
        public List<ProjectModel> AllProjects()
        {
          GigaParseTestDemoDBEntities context = new GigaParseTestDemoDBEntities();
            var model = context.Projects.ToList();
            Mapper.CreateMap<Project, ProjectModel>().ForMember(dest => dest.PossessionDateSt, opts => opts.MapFrom(src => src.PossessionDate.Value.ToString("dd/MM/yyyy")));
            var mdl = Mapper.Map<List<Project>, List<ProjectModel>>(model);
            return mdl;
        }
        public Project GetProject(int projectID)
        {
            GigaParseTestDemoDBEntities context = new GigaParseTestDemoDBEntities();
            var model = context.Projects.Where(pr => pr.ProjectID == projectID).FirstOrDefault();
            return model;
        }
      
        public int AddProject(ProjectModel model)
        {
            using (GigaParseTestDemoDBEntities context = new GigaParseTestDemoDBEntities())
            {
                try
                {
                    if (model.PossessionDateSt != null) model.PossessionDate = DateTime.Now.AddYears(12);
                    Mapper.CreateMap<ProjectModel, Project>();
                    var mdl = Mapper.Map<ProjectModel, Project>(model);
                    mdl.RecordStatus = 0;
                    mdl.CrDate = DateTime.Now;
                    mdl.ReceiptNo = "0";
                    context.Projects.Add(mdl);
                    int i = context.SaveChanges();
                    return i;
                }
                catch (Exception ex)
                {
                    Helper hp = new Helper();
                    hp.LogException(ex);
                    return 0;
                }
            }
        }
        public int EditProject(ProjectModel model)
        {
            using (GigaParseTestDemoDBEntities context = new GigaParseTestDemoDBEntities())
            {
                try
                {
                    Mapper.CreateMap<ProjectModel, Project>();
                    var mdl = Mapper.Map<ProjectModel, Project>(model);
                    context.Projects.Add(mdl);
                    context.Entry(mdl).State = EntityState.Modified;
                    int i = context.SaveChanges();
                    return i;
                }
                catch (Exception ex)
                {
                    Helper hp = new Helper();
                    hp.LogException(ex);
                    return 0;
                }
            }
        }
    }
}
