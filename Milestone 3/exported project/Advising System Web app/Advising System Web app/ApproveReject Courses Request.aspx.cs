using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Advising_System_Web_app
{
    public partial class ApproveReject_Courses_Request : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main10_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }
        protected void action_button(object sender, EventArgs e)
        {
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr
            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection
            SqlConnection conn = new SqlConnection(connStr);

            int requestId;
            String semCode = sCode.Text;

            if (!int.TryParse(rID.Text, out requestId))
            {
                // Handle the case where the input is not a valid integer
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Request ID. Please enter a valid integer.', 'error');", true);
                return;
            }
            else
            {
                requestId = int.Parse(rID.Text);
            }

            if (string.IsNullOrEmpty(semCode))
            {
                // Handle the case where the semester code is not valid
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidSemesterCode", "showNotification('Invalid Semester Code. Please enter a valid Semester Code.', 'error');", true);
                return;
            }
            else
            {
                // Check if semCode starts with 'w' or 's'
                if (!semCode.StartsWith("w", StringComparison.OrdinalIgnoreCase) && !semCode.StartsWith("s", StringComparison.OrdinalIgnoreCase))
                {
                    // Output an error message if it doesn't start with 'w' or 's'
                    ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Semester Code Format. Semester Code must start with w or s', 'error');", true);

                }
                else
                {

                    SqlCommand proc = new SqlCommand("Procedures_AdvisorApproveRejectCourseRequest", conn);
                    proc.CommandType = CommandType.StoredProcedure;

                    proc.Parameters.Add(new SqlParameter("@requestID", requestId));
                    proc.Parameters.Add(new SqlParameter("@current_semester_code", semCode));

                    conn.Open();
                    int rowsAffected = proc.ExecuteNonQuery();

                    conn.Close();

                    if (rowsAffected == 0)
                    {
                        // Output a message indicating that no data was updated
                        ClientScript.RegisterStartupScript(this.GetType(), "NoDataUpdatedMessage", "showNotification('Unsuccessful operation, please enter a valid data).', 'error');", true);
                    }
                    else
                    {
                        // Output a success message
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "showNotification('Action Taken Successfully', 'success');", true);
                    }
                }
            }
        }

    }
}