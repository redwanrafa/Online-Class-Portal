using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATP2
{
    public partial class Signup : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            ClassroomDataContext context = new ClassroomDataContext();
            Teacher teacher = new Teacher();
            
            //r result = (from t in context.Teachers where t.Email == teacher.Email select t).ToList();
            try
            {
                var result = from m in context.Teachers where m.Email == TextBoxEmail.Text select m;
                if (result.Count() == 0)
                {
                    teacher.Email = TextBoxEmail.Text;
                    teacher.Password = TextBoxPassword.Text;
                    teacher.Name = TextBoxName.Text;
                    context.Teachers.InsertOnSubmit(teacher);
                    context.SubmitChanges();
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Response.Write("ALready Exist");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            

        }

        protected void TextBoxUserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}