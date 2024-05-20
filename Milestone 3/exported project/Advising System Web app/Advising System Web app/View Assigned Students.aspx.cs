using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace Advising_System_Web_app
{
    public partial class View_Assigned_Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main6_Click(object sender, EventArgs e)
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

            


            SqlCommand students = new SqlCommand("Procedures_AdvisorViewAssignedStudents", conn);
            students.CommandType = CommandType.StoredProcedure;

            int AdvisorId;
            String Major = Maj.Text;

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

            if (string.IsNullOrEmpty(Major))
            {
                // Handle the case where the major is not valid
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidMajor", "showNotification('Invalid Major. Please enter a valid Major.', 'error');", true);
                return;
            }
            else
            {


                students.Parameters.Add(new SqlParameter("@AdvisorID", AdvisorId));
                students.Parameters.Add(new SqlParameter("@major", Major));
                conn.Open();
                SqlDataReader rdr = students.ExecuteReader(CommandBehavior.CloseConnection);

                DataTable dataTable = new DataTable();
                dataTable.Columns.Add("student_id", typeof(int));
                dataTable.Columns.Add("name", typeof(string));
                dataTable.Columns.Add("major", typeof(string));
                dataTable.Columns.Add("course_name", typeof(string));

                while (rdr.Read())
                {
                    DataRow row = dataTable.NewRow();
                    row["student_id"] = rdr["student_id"];
                    row["name"] = rdr["Student_name"];
                    row["major"] = rdr["major"];
                    row["course_name"] = rdr["Course_name"];
                    dataTable.Rows.Add(row);
                }

                if (dataTable.Rows.Count == 0)
                {
                    // Output a message indicating that no data was found
                    ClientScript.RegisterStartupScript(this.GetType(), "NoDataMessage", "showNotification('No data found for the given Advisor ID and Major.', 'error');", true);
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
}