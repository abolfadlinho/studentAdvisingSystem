using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web_app
{
    public partial class Delete_Graduation_Plan_Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }
        protected void delete_button(object sender, EventArgs e)
        {
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr

            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection

            SqlConnection conn = new SqlConnection(connStr);

            int StudentId;
            String SemCode = Semcode.Text;
            int courseID;


            if (!int.TryParse(SID.Text, out StudentId))
            {
                // Display an error message or notification for invalid numeric input
                string script = "showNotification('Invalid numeric input for student ID.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                return;
            }
            else
            {
                StudentId = int.Parse(SID.Text);
            }


            if (!int.TryParse(cID.Text, out courseID))
            {
                // Display an error message or notification for invalid numeric input
                string script = "showNotification('Invalid numeric input for course ID.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                return;
            }
            else
            {
                courseID = int.Parse(cID.Text);
            }


            if (string.IsNullOrEmpty(SemCode))
            {
                // Handle the case where the semester code is not valid
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidSemesterCode", "showNotification('Invalid Semester Code. Please enter a valid Semester Code.', 'error');", true);
                return;
            }
            else
            {
                // Check if semCode starts with 'w' or 's'
                if (!SemCode.StartsWith("w", StringComparison.OrdinalIgnoreCase) && !SemCode.StartsWith("s", StringComparison.OrdinalIgnoreCase))
                {
                    // Output an error message if it doesn't start with 'w' or 's'
                    ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Semester Code Format. Semester Code must start with w or s', 'error');", true);

                }
                else
                {

                    SqlCommand proc = new SqlCommand("Procedures_AdvisorDeleteFromGP", conn);
                    proc.CommandType = CommandType.StoredProcedure;

                    proc.Parameters.Add(new SqlParameter("@studentID", StudentId));
                    proc.Parameters.Add(new SqlParameter("@sem_code", SemCode));
                    proc.Parameters.Add(new SqlParameter("@courseID", courseID));


                    conn.Open();
                    int rowsAffected = proc.ExecuteNonQuery();

                    conn.Close();

                    if (rowsAffected == 0)
                    {
                        // Output a message indicating that no data was updated
                        ClientScript.RegisterStartupScript(this.GetType(), "NoDataUpdatedMessage", "showNotification('No data deleted for the given student (Student ID/Course ID/Semester code might be invalid).', 'error');", true);
                    }
                    else
                    {
                        // Output a success message
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "showNotification('Graduation plan deleted successfully', 'success');", true);
                    }
                }
            }

        }
    }
}