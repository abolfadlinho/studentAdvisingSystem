using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Advising_System_Web_app
{
    public partial class View_Pending_Requests : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }
        protected void view_button(object sender, EventArgs e)
        {
            //clear the grid view from previous data
            GridView1.DataSource = null;
            GridView1.DataBind();

            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr
            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);
            int AdvisorId;

            if (!int.TryParse(AID.Text, out AdvisorId))
            {
                // Handle the case where the input is not a valid integer
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Advisor ID. Please enter a valid integer.', 'error');", true);
                return;
            }
            else
            {
                AdvisorId = int.Parse(AID.Text);
            }

            SqlCommand students = new SqlCommand("Procedures_AdvisorViewPendingRequests", conn);

            students.CommandType = CommandType.StoredProcedure;

            students.Parameters.Add(new SqlParameter("@advisor_id", AdvisorId));

            conn.Open();
            SqlDataReader rdr = students.ExecuteReader(CommandBehavior.CloseConnection);

            DataTable dataTable = new DataTable();
            dataTable.Columns.Add("request_id", typeof(int));
            dataTable.Columns.Add("type", typeof(string));
            dataTable.Columns.Add("comment", typeof(string));
            dataTable.Columns.Add("status", typeof(string));
            dataTable.Columns.Add("credit_hours", typeof(int));
            dataTable.Columns.Add("course_id", typeof(int));
            dataTable.Columns.Add("student_id", typeof(int));

            while (rdr.Read())
            {
                DataRow row = dataTable.NewRow();
                row["request_id"] = rdr["request_id"];
                row["type"] = rdr["type"];
                row["comment"] = rdr["comment"];
                row["status"] = rdr["status"];
                row["credit_hours"] = rdr["credit_hours"];
                row["course_id"] = rdr["course_id"];
                row["student_id"] = rdr["student_id"];
                dataTable.Rows.Add(row);
            }
            if (dataTable.Rows.Count == 0)
            {
                // Output a message indicating that no data was found
                ClientScript.RegisterStartupScript(this.GetType(), "NoDataMessage", "showNotification('No data found for the given Advisor ID.', 'error');", true);
            }
            else
            {
                // Bind the data to the GridView
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }

        }
    }
}