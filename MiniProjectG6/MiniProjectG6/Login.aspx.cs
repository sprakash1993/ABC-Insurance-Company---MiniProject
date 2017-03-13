using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProjectG6
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UserDb ub = new UserDb();

            string uname = TextBox1.Text.ToString();
            string password = TextBox2.Text.ToString();

            if(ub.checkUser(uname, password))
                Response.Redirect("Home.aspx");
            else
                Response.Write("<script>alert('Invalid login credential')</script>");

        }
    }
}