using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;

namespace Advising_System_Web_app
{
    public partial class View_Avising_Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");


            //view all advising students function


            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr
            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand students = new SqlCommand("Procedures_AdminListStudents", conn);
            students.CommandType = CommandType.StoredProcedure;

            conn.Open();
            SqlDataReader rdr = students.ExecuteReader(CommandBehavior.CloseConnection);

            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("student_id", typeof(int));
            dataTable.Columns.Add("f_name", typeof(string));
            dataTable.Columns.Add("l_name", typeof(string));
            dataTable.Columns.Add("gpa", typeof(float));
            dataTable.Columns.Add("faculty", typeof(string));
            dataTable.Columns.Add("email", typeof(string));
            dataTable.Columns.Add("major", typeof(string));
            dataTable.Columns.Add("financial_status", typeof(bool));
            dataTable.Columns.Add("semester", typeof(int));
            dataTable.Columns.Add("acquired_hours", typeof(int));
            dataTable.Columns.Add("assigned_hours", typeof(int));
            dataTable.Columns.Add("advisor_id", typeof(int));

            while (rdr.Read())
            {
                DataRow row = dataTable.NewRow();
                row["student_id"] = rdr["student_id"];
                row["f_name"] = rdr["f_name"];
                row["l_name"] = rdr["l_name"];
                row["gpa"] = rdr["gpa"];
                row["faculty"] = rdr["faculty"];
                row["email"] = rdr["email"];
                row["major"] = rdr["major"];
                row["financial_status"] = rdr["financial_status"];
                row["semester"] = rdr["semester"];
                row["acquired_hours"] = rdr["acquired_hours"];
                row["assigned_hours"] = rdr["assigned_hours"];
                row["advisor_id"] = rdr["advisor_id"];
                dataTable.Rows.Add(row);
            }
            if (dataTable.Rows.Count == 0)
            {
                // Output a message indicating that no data was found
                ClientScript.RegisterStartupScript(this.GetType(), "NoDataMessage", "showNotification('No data found for the Advising Students.', 'error');", true);
            }
            else
            {
                // Bind the data to the GridView
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }
        protected void Main1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }

    }
}