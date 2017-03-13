using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProjectG6
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RadioButtonList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList7.SelectedItem.Text == "No")
            {
                TextBox10.Enabled = false;
                TextBox11.Enabled = false;
            }
            else
            {
                TextBox10.Enabled = true;
                TextBox11.Enabled = true;

            }
        }
    }
}