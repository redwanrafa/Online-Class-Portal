using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace ATP2
{
    public partial class Teacher_sHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           // this.LoadCourses();

        }
        private void LoadCourses()
        {
            string connStr = ConfigurationManager.ConnectionStrings["OnlineClassroomConnectionString"].ConnectionString;

            string sql = "SELECT id,Title, Details from Courses where TeacherId =  ' " + Convert.ToInt32(Session["TeacherId"]) + "'";
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            ClassroomDataContext context = new ClassroomDataContext();
            Course course = new Course();
            course.Title=TextBoxTitle.Text;
            course.Details = TextBoxDetail.Text;
            course.TeacherId = Convert.ToInt32(Session["TeacherId"]);
            context.Courses.InsertOnSubmit(course);
            context.SubmitChanges();
            GridView1.DataBind();
            //this.LoadCourses();

        }

        protected void TextBoxTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["CourseId"] = GridView1.SelectedRow.Cells[1].Text;
            Session["CourseName"] = GridView1.SelectedRow.Cells[2].Text;
            Response.Redirect("~/AddSection.aspx");
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");

        }
    }
}