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
    public partial class AddSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxTitle.Text = Convert.ToString(Session["CourseName"]);
            this.LoadSection();

        }
        private void Addnewsection()
        {

            ClassroomDataContext context = new ClassroomDataContext();
            Section course = new Section();
            course.SectionName = TextBoxSectionName.Text;
            course.NumberOfClassed = Convert.ToInt32(TextBoxNumClass.Text);
            course.CourseId = Convert.ToInt32(Session["CourseId"]);
            course.StartDate = Convert.ToDateTime(TextBoxDate.Text);
            context.Sections.InsertOnSubmit(course);
            context.SubmitChanges();
        }
        private void LoadSection()
        {
            string connStr = ConfigurationManager.ConnectionStrings["OnlineClassroomConnectionString"].ConnectionString;

            string sql = "SELECT * FROM Sections where CourseId = ' "+Session["CourseId"]+"'";
            SqlConnection con = new SqlConnection(connStr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DropDownListSection.DataSource = reader;
            DropDownListSection.DataTextField = "SectionName";
            DropDownListSection.DataValueField = "Id";
            DropDownListSection.DataBind();
            con.Close();
        }
        protected void TextBoxTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxNumClass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonADD_Click(object sender, EventArgs e)
        {
            this.Addnewsection();
            Response.Write("Inserted Successfully");
            this.LoadSection();
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxDate.Text=Calendar1.SelectedDate.ToShortDateString();
        }

        protected void DropDownListSection_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonSelect_Click(object sender, EventArgs e)
        {
            Session["SectionId"] = Convert.ToInt32(DropDownListSection.SelectedValue);
            Session["SectionName"] = DropDownListSection.SelectedItem.Text;
            Response.Redirect("~/ViewSection.aspx");
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }

        protected void LinkButtonBack_Click(object sender, EventArgs e)
        {
            Session["CourseId"] = null;
            Session["CourseName"] = null;
            Response.Redirect("~/Teacher'sHome.aspx");
        }
    }
}