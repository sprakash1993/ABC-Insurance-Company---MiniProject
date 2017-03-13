using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProjectG6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Enter the party Id')</script>");
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
                string ConnectionString = "Data Source=172.25.192.72;" + "Initial Catalog=DB06HMS07;" + "User id=PJ06HMS07;" + "Password=tcshyd;";

                SqlConnection connection = new SqlConnection(ConnectionString);

                connection.Open();

                SqlCommand command = new SqlCommand();

                command.CommandType = CommandType.StoredProcedure;
                int partyid = Convert.ToInt32(TextBox1.Text);

                command.CommandText = "SP_CUSTOMER_UPDATE_DETAILS06";

                command.Parameters.AddWithValue("@PARTY_ID", partyid);

                command.Connection = connection;
                
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

                command.Parameters.AddWithValue("@NM_INSURED_FIRST_NM", fname);
                command.Parameters.AddWithValue("@NM_INSURED_MIDDLE_NM ", mname);
                command.Parameters.AddWithValue("@NM_INSURED_LAST_NM", lname);
                command.Parameters.AddWithValue("@NM_INSURED_GENDER", gender);
                command.Parameters.AddWithValue("@NM_INSURED_DOB", dob);
                command.Parameters.AddWithValue("@MARITAL_STATUS", ms);
                command.Parameters.AddWithValue("@MAIL_ADDR_LINE1", adr1);
                command.Parameters.AddWithValue("@MAIL_ADDR_LINE2", adr2);
                command.Parameters.AddWithValue("@STATE_NM", state);
                command.Parameters.AddWithValue("@CITY_NM", city);
                command.Parameters.AddWithValue("@ZIP_CD", zip);
                command.Parameters.AddWithValue("@AGE", age);
                command.Parameters.AddWithValue("@CURRENT_US_LICENSE_STATUS", ls);
                command.Parameters.AddWithValue("@SSN", ssn);
                command.Parameters.AddWithValue("@INDUSTRY", industry);
                command.Parameters.AddWithValue("@OCCUPATION", occupation);
                command.Parameters.AddWithValue("@HIGHEST_EDUCATION", edu);
                command.Parameters.AddWithValue("@LICENSE_SUSPENDED_REVOKED", licenseRevoked);
                command.Parameters.AddWithValue("@DAYS_LICENSE_SUSPENDED", suspendedDays);
                command.Parameters.AddWithValue("@DRIVER_VIOLATIONS", license);
                command.Parameters.AddWithValue("@INCIDENT_TYPE", incidentType);
                command.Parameters.AddWithValue("@INCIDENT_COUNT", icount);
                command.Parameters.AddWithValue("@VIOLATION_TYPE", vtype);
                command.Parameters.AddWithValue("@VIOLATION_COUNT", vcount);
               // command.Parameters.AddWithValue("@PARTY_ID", 0);
               // command.Parameters["@PARTY_ID"].Direction = ParameterDirection.Output;
                int row = command.ExecuteNonQuery();
                if (row > 0)
                {
                    Response.Write("<script>alert('Updated successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error updating')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Validation Failed')</script>");
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

     

        protected void Button4_Click(object sender, EventArgs e)
        {
            string ConnectionString = "Data Source=172.25.192.72;" + "Initial Catalog=DB06HMS07;" + "User id=PJ06HMS07;" + "Password=tcshyd;";

            SqlConnection connection = new SqlConnection(ConnectionString);

            connection.Open();

            SqlCommand command = new SqlCommand();

            command.CommandType = CommandType.StoredProcedure;
            if(TextBox1.Text =="")
                Response.Write("<script>alert('Enter Party Id')</script>");
            else{
            int partyid = Convert.ToInt32(TextBox1.Text);



            command.CommandText = "SP_CUSTOMER_RETRIEVE_DETAILS06";

            command.Parameters.AddWithValue("@PARTY_ID", partyid);

            command.Connection = connection;
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                string fname = reader[1].ToString();
                string mname = reader[2].ToString();
                string lname = reader[3].ToString();
                string gender = reader[4].ToString();
                string dob = reader[5].ToString();
                string ms = reader[6].ToString();
                string adr1 = reader[7].ToString();
                string adr2 = reader[8].ToString();
                string state = reader[9].ToString();
                string city = reader[10].ToString();
                int zip = Convert.ToInt32(reader[11]);
                int age = Convert.ToInt32(reader[12]);
                string ls = reader[13].ToString();
                int ssn = Convert.ToInt32(reader[14]);
                string industry = reader[15].ToString();
                string occupation = reader[16].ToString();
                string edu = reader[17].ToString();
                string license = reader[20].ToString();
                string incidentType = reader[21].ToString();
                int icount = Convert.ToInt32(reader[22]);
                string vtype = reader[23].ToString();
                int vcount = Convert.ToInt32(reader[24]);
                int suspendedDays = Convert.ToInt32(reader[19]);
                string licenseRevoked = reader[18].ToString();

                connection.Close();
                // Response.Write("<script>alert('fname:" + fname + ")</script>");
                TextBoxFirstName.Text = fname;
                TextBoxMiddleName.Text = mname;
                TextBoxLastName.Text = lname;
                if (gender == "Male")
                    RadioButtonList1.SelectedIndex = 0;
                else
                    RadioButtonList1.SelectedIndex = 1;
                TextBoxDOB.Text = dob;
                if (ms == "Married")
                    DropDownList1.SelectedIndex = 2;
                else if (ms == "Single")
                    DropDownList1.SelectedIndex = 1;
                else if (ms == "Divorced")
                    DropDownList1.SelectedIndex = 3;
                else
                    DropDownList1.SelectedIndex = 0;
                TextBoxLastName0.Text = adr1;
                TextBoxLastName1.Text = adr2;
                if (state == "Karnataka")
                    DropDownListState.SelectedIndex = 1;
                else if (state == "Andra Pradesh")
                    DropDownListState.SelectedIndex = 2;
                else if (state == "Kerala")
                    DropDownListState.SelectedIndex = 3;
                else
                    DropDownListState.SelectedIndex = 0;



                TextBoxZipCode.Text = zip.ToString();
                TextBoxLastName3.Text = age.ToString();

                if (ls == "Valid")
                    DropDownList5.SelectedIndex = 1;
                else if (ls == "Expired")
                    DropDownList5.SelectedIndex = 2;
                else if (ls == "Pending")
                    DropDownList5.SelectedIndex = 3;
                else
                    DropDownList5.SelectedIndex = 0;

                TextBoxLastName5.Text = ssn.ToString();
                if (industry == "Banking")
                    DropDownList2.SelectedIndex = 1;
                else if (industry == "Insurance")
                    DropDownList2.SelectedIndex = 2;
                else
                    DropDownList2.SelectedIndex = 0;

                if (occupation == "Clerk")
                    DropDownList3.SelectedIndex = 1;
                else if (occupation == "Developer")
                    DropDownList3.SelectedIndex = 2;
                else if (occupation == "PM")
                    DropDownList3.SelectedIndex = 3;
                else
                    DropDownList3.SelectedIndex = 0;

                if (edu == "School")
                    DropDownList4.SelectedIndex = 1;
                else if (edu == "Degree")
                    DropDownList4.SelectedIndex = 2;
                else if (edu == "Diploma")
                    DropDownList4.SelectedIndex = 3;
                else if (edu == "Masters")
                    DropDownList4.SelectedIndex = 4;
                else
                    DropDownList4.SelectedIndex = 0;

                if (licenseRevoked == "Yes")
                {
                    RadioButtonList3.SelectedIndex = 0;
                    TextBoxLicenseSuspended.Text = suspendedDays.ToString();
                }
                else if (licenseRevoked == "No")
                {
                    RadioButtonList3.SelectedIndex = 1;
                    TextBoxLicenseSuspended.Enabled = false;
                }

                if (license == "Yes")
                {
                    RadioButtonList2.SelectedIndex = 0;
                    if (incidentType == "Major")
                        DropDownListIncidentType.SelectedIndex = 1;
                    else if (incidentType == "Minor")
                        DropDownListIncidentType.SelectedIndex = 2;
                    else if (incidentType == "At-Fault")
                        DropDownListIncidentType.SelectedIndex = 3;
                    else if (incidentType == "Comp Claim")
                        DropDownListIncidentType.SelectedIndex = 4;
                    else
                        DropDownListIncidentType.SelectedIndex = 0;
                    TextBoxIncidentCount.Text = icount.ToString();

                    if (vtype == "Speeding")
                        DropDownListViolationType.SelectedIndex = 1;
                    else if (vtype == "Alcohol")
                        DropDownListViolationType.SelectedIndex = 2;
                    else if (vtype == "Obey Rules")
                        DropDownListViolationType.SelectedIndex = 3;
                    else
                        DropDownListViolationType.SelectedIndex = 0;

                    TextBoxViolationCount.Text = vcount.ToString();

                }
                else if (license == "No")
                {
                    RadioButtonList2.SelectedIndex = 1;
                    TextBoxIncidentCount.Enabled = false;
                    DropDownListIncidentType.Enabled = false;
                    TextBoxViolationCount.Enabled = false;
                    DropDownListViolationType.Enabled = false;
                }

            }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string ConnectionString = "Data Source=172.25.192.72;" + "Initial Catalog=DB06HMS07;" + "User id=PJ06HMS07;" + "Password=tcshyd;";

                SqlConnection connection = new SqlConnection(ConnectionString);

                connection.Open();

                SqlCommand command = new SqlCommand();

                command.CommandType = CommandType.StoredProcedure;
                int partyid = Convert.ToInt32(TextBox1.Text);

                command.CommandText = "SP_CUSTOMER_DELETE_DETAILS06";

                command.Parameters.AddWithValue("@PARTY_ID", partyid);

                command.Connection = connection;

                int row = command.ExecuteNonQuery();
                if (row > 0)
                {
                    Response.Write("<script>alert('Deleted successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error deleting')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('No data to delete')</script>");
            }
        }
    }
}