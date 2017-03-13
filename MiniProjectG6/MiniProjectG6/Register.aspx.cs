using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProjectG6
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void StateEvent(object sender, EventArgs e)
        {

            if (DropDownListState.SelectedIndex == 1)
            {
                string filePath = Server.MapPath("~/XMLFile1.xml");
                using (DataSet ds = new DataSet())
                {
                    ds.ReadXml(filePath);
                    DropDownListCity.DataSource = ds;
                    DropDownListCity.DataTextField = "cityname";
                    DropDownListCity.DataValueField = "cityvalue";
                    DropDownListCity.DataBind();
                }
            }
            if (DropDownListState.SelectedIndex == 2)
            {
                string filePath = Server.MapPath("~/XMLFile1.xml");
                using (DataSet ds = new DataSet())
                {
                    ds.ReadXml(filePath);
                    DropDownListCity.DataSource = ds;
                    DropDownListCity.DataTextField = "cityname";
                    DropDownListCity.DataValueField = "cityvalue";
                    DropDownListCity.DataBind();


                }

            }
        }

     


       

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                CustomerDb db = new CustomerDb();
                string fname = TextBoxFirstName.Text.ToString();
                string mname = TextBoxMiddleName.Text.ToString();
                string lname = TextBoxLastName.Text.ToString();
                string gender = RadioButtonList1.SelectedValue;
                string dob = TextBoxDOB.Text.ToString();
                string ms = DropDownList1.SelectedValue;
                string adr1 = TextBoxLastName0.Text.ToString();
                string adr2 = TextBoxLastName1.Text.ToString();
                string state = DropDownListState.SelectedValue;
                string city = DropDownListCity.SelectedValue;
                int zip = Convert.ToInt32(TextBoxZipCode.Text);
                int age = Convert.ToInt32(TextBoxLastName3.Text);
                string ls = DropDownList5.SelectedValue;
                int ssn = Convert.ToInt32(TextBoxLastName5.Text);
                string industry = DropDownList2.SelectedValue;
                string occupation = DropDownList3.SelectedValue;
                string edu = DropDownList4.SelectedValue;
                string license = RadioButtonList2.SelectedValue;
                string incidentType = DropDownListIncidentType.SelectedValue;
                int icount = Convert.ToInt32(TextBoxIncidentCount.Text);
                string vtype = DropDownListViolationType.SelectedValue;
                int vcount = Convert.ToInt32(TextBoxViolationCount.Text);
                int suspendedDays = Convert.ToInt32(TextBoxLicenseSuspended.Text);
                string licenseRevoked = RadioButtonList3.SelectedValue;

                int row = db.insertDetails(fname, mname, lname, gender, dob, ms, adr1, adr2, state, city, zip, age, ls, ssn, industry, occupation, edu, licenseRevoked, suspendedDays, license, incidentType, icount, vtype, vcount);
                if (row > 0)
                {
                    Response.Write("<script>alert('Inserted successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error inserting')</script>");
                }

            }
            

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedIndex == 0)
            {
                TextBoxIncidentCount.Enabled = true;
                DropDownListIncidentType.Enabled = true;
                DropDownListViolationType.Enabled = true;
                TextBoxViolationCount.Enabled = true;
            }
            else
            {
                TextBoxIncidentCount.Enabled = false;
                DropDownListIncidentType.Enabled = false;
                DropDownListViolationType.Enabled = false;
                TextBoxViolationCount.Enabled = false;
            }
        }

        protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList3.SelectedIndex == 0)
            {
                TextBoxLicenseSuspended.Enabled = true;
            }
            else
            {
                TextBoxLicenseSuspended.Enabled = false;
            }
        }

       
    }
}