using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MiniProjectG6
{
    public class CustomerDb
    {
        public int insertDetails(string fname, string mname, string lname, string gender, string dob, string maritalstatus, string addr1, string addr2, string state, string city, int zip, int age, string licenseStatus, int ssn, string industry, string occupation, string education, string licenseSuspended, int daysSuspended, string violation, string incidentType, int incidentCount, string violationType, int violationCount)
        {
            string ConnectionString = "Data Source=172.25.192.72;" + "Initial Catalog=DB06HMS07;" + "User id=PJ06HMS07;" + "Password=tcshyd;";

            SqlConnection connection = new SqlConnection(ConnectionString);

            connection.Open();

            SqlCommand command = new SqlCommand();

            command.CommandType = CommandType.StoredProcedure;

            command.CommandText = "SP_INSERT06";

            command.Parameters.AddWithValue("@NM_INSURED_FIRST_NM", fname);
            command.Parameters.AddWithValue("@NM_INSURED_MIDDLE_NM ", mname);
            command.Parameters.AddWithValue("@NM_INSURED_LAST_NM", lname);
            command.Parameters.AddWithValue("@NM_INSURED_GENDER", gender);
            command.Parameters.AddWithValue("@NM_INSURED_DOB", dob);
            command.Parameters.AddWithValue("@MARITAL_STATUS", maritalstatus);
            command.Parameters.AddWithValue("@MAIL_ADDR_LINE1", addr1);
            command.Parameters.AddWithValue("@MAIL_ADDR_LINE2", addr2);
            command.Parameters.AddWithValue("@STATE_NM", state);
            command.Parameters.AddWithValue("@CITY_NM", city);
            command.Parameters.AddWithValue("@ZIP_CD", zip);
            command.Parameters.AddWithValue("@AGE", age);
            command.Parameters.AddWithValue("@CURRENT_US_LICENSE_STATUS", licenseStatus);
            command.Parameters.AddWithValue("@SSN", ssn);
            command.Parameters.AddWithValue("@INDUSTRY", industry);
            command.Parameters.AddWithValue("@OCCUPATION", occupation);
            command.Parameters.AddWithValue("@HIGHEST_EDUCATION", education);
            command.Parameters.AddWithValue("@LICENSE_SUSPENDED_REVOKED", licenseSuspended);
            command.Parameters.AddWithValue("@DAYS_LICENSE_SUSPENDED", daysSuspended);
            command.Parameters.AddWithValue("@DRIVER_VIOLATIONS", violation);
            command.Parameters.AddWithValue("@INCIDENT_TYPE", incidentType);
            command.Parameters.AddWithValue("@INCIDENT_COUNT", incidentCount);
            command.Parameters.AddWithValue("@VIOLATION_TYPE", violationType);
            command.Parameters.AddWithValue("@VIOLATION_COUNT", violationCount);
            command.Parameters.AddWithValue("@PARTY_ID", 0);
            command.Parameters["@PARTY_ID"].Direction = ParameterDirection.Output;
            command.Connection = connection;

            int row = command.ExecuteNonQuery();

            return row;




        }

        public void getdetails(int partyId)
        {
            

        }


    }
}