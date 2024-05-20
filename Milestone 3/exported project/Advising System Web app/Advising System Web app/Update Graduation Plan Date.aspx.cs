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
    public partial class Update_Graduation_Plan_Date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }
        protected void update_button(object sender, EventArgs e)
        {
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr

            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection

            SqlConnection conn = new SqlConnection(connStr);

            int StudentId;
            DateTime expecGradDate;

            // Validate GradDate as a valid DateTime
            if (!DateTime.TryParse(expDate.Text, out expecGradDate))
            {
                // Display an error message or notification for invalid date
                string script = "showNotification('Invalid date for expected graduation date.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                return;
            }
            else
            {
                expecGradDate = DateTime.Parse(expDate.Text);
            }
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
            SqlCommand proc = new SqlCommand("Procedures_AdvisorUpdateGP", conn);
            proc.CommandType = CommandType.StoredProcedure;

            proc.Parameters.Add(new SqlParameter("@studentID", StudentId));
            proc.Parameters.Add(new SqlParameter("@expected_grad_date", expecGradDate));

            conn.Open();
            int rowsAffected = proc.ExecuteNonQuery();

            conn.Close();

            if (rowsAffected == 0)
            {
                // Output a message indicating that no data was updated
                ClientScript.RegisterStartupScript(this.GetType(), "NoDataUpdatedMessage", "showNotification('No data updated for the given student ID (Student ID is invalid).', 'error');", true);
            }
            else
            {
                // Output a success message
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "showNotification('Graduation plan updated successfully', 'success');", true);
            }
        }
    }
}