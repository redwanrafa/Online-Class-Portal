using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2
{
    public partial class ViewCourse : System.Web.UI.Page
    {
        ClassroomDataContext context = new ClassroomDataContext();
        //Section sec = new Section();
        Std std = new Std();
       // Course course = new Course();
       // Teacher tech = new Teacher();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SectionLoad();
            this.CourseLoad();
            this.TeacherLoad();
            LabelStartDate.Text = Convert.ToString( std.startDate);
            LabelTeacheName.Text = std.TeacherName;
            LabelTeacherEmail.Text = std.TeacherEmail;
            LabelCourseName.Text = std.CourseName;
            LabelCourseDetail.Text = std.CourseDetail;
            LabelSectionName.Text = std.sectionName;
            LabelEndDate.Text = Convert.ToString(EndTimeCalculation());




        }
        private DateTime EndTimeCalculation()
        {
            ClassroomDataContext context = new ClassroomDataContext();
            Section sec = context.Sections.SingleOrDefault(x => x.ID == Convert.ToInt32(Session["SectionId"]));
            int NumClasses = sec.NumberOfClassed;
            double temp = Math.Ceiling(Convert.ToDouble(NumClasses / 2));
            temp = temp * 7;
            DateTime start = sec.StartDate;
            DateTime end = start.AddDays(temp);
            return end;


        }
        private void SectionLoad()
        {
            //var result = from m in context.Sections where m.ID == Convert.ToInt32(Session["SectionId"]) select m;
            Section sec = context.Sections.SingleOrDefault(m=>m.ID == Convert.ToInt32(Session["SectionId"]));
          //  Response.Write(sec.SectionName);
                std.startDate=sec.StartDate;
                std.CourseId = sec.CourseId;
                std.SectionId = sec.ID;
                std.sectionName = sec.SectionName;
            

        }
        private void CourseLoad()
        {
            //var result = from m in context.Courses where m.ID == std.CourseId select m;
            Course course = context.Courses.SingleOrDefault(m => m.ID == std.CourseId);
            std.TeacherId = course.TeacherId;
                std.CourseName = course.Title;
                std.CourseDetail = course.Details;
            

        }
        private void TeacherLoad()
        {
            //var result = from m in context.Teachers where m.ID == std.TeacherId select m;
            Teacher tech= context.Teachers.SingleOrDefault(m => m.ID == std.TeacherId);
            std.TeacherEmail = tech.Email;
                std.TeacherName = tech.Name;
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }
    }
}