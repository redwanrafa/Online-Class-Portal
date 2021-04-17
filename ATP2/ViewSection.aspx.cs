using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
namespace ATP2
{
    public partial class ViewSection : System.Web.UI.Page
    {
       // static bool v = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCourseName.Text = Convert.ToString(Session["CourseName"]);
            LabelSectionName.Text = Convert.ToString(Session["SectionName"]);
            LabelEndTime.Text = Convert.ToString(EndTimeCalculation());
            LabelStartTime.Text = Convert.ToString(StartTimeCalculation());
            
        }
        private DateTime StartTimeCalculation()
        {
            ClassroomDataContext context = new ClassroomDataContext();
            Section sec = context.Sections.SingleOrDefault(x => x.ID == Convert.ToInt32(Session["SectionId"]));
            DateTime start = sec.StartDate;
        
            return start;


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

        protected void ButtonAddStudent_Click(object sender, EventArgs e)
        {
            Label6.Visible = true;
            Label7.Visible = true;
            TextBoxStudentName.Visible = true;
            TextBoxStudentID.Visible = true;
            RequiredFieldValidator1.Visible = true;
            RequiredFieldValidator2.Visible = true;
            Submit.Visible = true;
            
        }
        private void AddStudents()
        {
            ClassroomDataContext context = new ClassroomDataContext();
            try
            {
                var result = from m in context.Students where m.UserName== TextBoxStudentID.Text + Convert.ToString(Session["SectionId"]) select m;
                //Response.Write(result.Count());
                if (result.Count() <= 0)
                {

                    Student std = new Student();
                    std.Email = TextBoxStudentName.Text;
                    std.UserName = TextBoxStudentID.Text + Convert.ToString(Session["SectionId"]);
                    std.Pass = Convert.ToString(Session["SectionId"]) + Convert.ToString(Session["CourseId"]);
                    std.SectionId = Convert.ToInt32(Session["SectionId"]);
                    context.Students.InsertOnSubmit(std);
                    context.SubmitChanges();
                    Response.Write("Inserted suceessfully");
                }
                else
                {
                    Response.Write("Already Registered");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            
           
        }
        private void LoadStudents()
        {

             string connStr = ConfigurationManager.ConnectionStrings["OnlineClassroomConnectionString"].ConnectionString;

            string sql = "SELECT * from Students where SectionId =  ' " + Convert.ToInt32(Session["SectionId"] )+ "'";
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();

        }
    
    

        protected void TextBoxStudentName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonViewStudents_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            //this.LoadStudents();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            this.AddStudents();
            
            Label6.Visible = false;
            Label7.Visible = false;
            TextBoxStudentName.Visible = false;
            TextBoxStudentID.Visible = false;
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
            Submit.Visible = false;
            //this.LoadStudents();
           
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButtonBack_Click(object sender, EventArgs e)
        {
            Session["SectionId"] = null;
            Session["SectionName"] = null;
            Response.Redirect("~/AddSection.aspx");
        }
    }
}