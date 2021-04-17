using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Globalization;
namespace ATP2
{
    public partial class Login : System.Web.UI.Page
    {
        ClassroomDataContext context = new ClassroomDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            bool email = Regex.IsMatch(TextBoxUserName.Text, @"\A(?:[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)\Z");
            if(email==true)
            {
                this.TeacherLogin();
            }
            else
            {
                this.StudentLogin();
            }
        }
        private void StudentLogin()
        {
            try
            {
                var result = from m in context.Students where m.UserName == TextBoxUserName.Text && m.Pass== TextBoxPassword.Text select m;
                if (result.Count() > 0)
                {

                    Student tch = context.Students.SingleOrDefault(x => x.UserName == TextBoxUserName.Text);
                    Session["SectionId"] = tch.SectionId;
                    Session["UserName"] = tch.UserName;
                    Response.Redirect("~/ViewCourse.aspx");
                    //Response.Write("Successful");
                }
                else
                {
                    Response.Write("Error");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }

        private void TeacherLogin()
        {
            try
            {
                var result = from m in context.Teachers where m.Email == TextBoxUserName.Text && m.Password == TextBoxPassword.Text select m;
                if (result.Count() > 0)
                {

                    Teacher tch = context.Teachers.SingleOrDefault(x => x.Email == TextBoxUserName.Text);
                    Session["TeacherId"] = Convert.ToInt32(tch.ID);
                    Session["TeacherEmail"] = tch.Email;
                    Session["TeacherPass"] = tch.Password;
                    Session["TeacherName"] = tch.Name;

                    Response.Redirect("~/Teacher'sHome.aspx");
                    //Response.Write("Successful");
                }
                else
                {
                    Response.Write("Error");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        protected void TextBoxUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}