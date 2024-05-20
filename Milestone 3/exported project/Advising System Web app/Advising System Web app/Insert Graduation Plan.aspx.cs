using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Runtime.InteropServices.ComTypes;

namespace Advising_System_Web_app
{
    public partial class Insert_Graduation_Plan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");

            
        }
        protected void Main2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Main.aspx");
        }
        protected void submit_button(object sender, EventArgs e)
        {
            try { 
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr

            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection

            SqlConnection conn = new SqlConnection(connStr);

            String SemCode = Semcode.Text;
            DateTime expecGradDate;
            int SemCreditHours;
            int AdvisorId;
            int StudentId;

            // Validate GradDate as a valid DateTime
            if (!DateTime.TryParse(GradDate.Text, out expecGradDate))
            {
                // Display an error message or notification for invalid date
                string script = "showNotification('Invalid date for expected graduation date.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                return;
            }
            else
            {
                expecGradDate = DateTime.Parse(GradDate.Text);
            }

            // Validate SemCreditHours, AdvisorId, and StudentId as valid integers
            if (!int.TryParse(semHours.Text, out SemCreditHours) ||
                !int.TryParse(AID.Text, out AdvisorId) ||
                !int.TryParse(SID.Text, out StudentId))
            {
                // Display an error message or notification for invalid numeric input
                string script = "showNotification('Invalid numeric input for semester credit hours, advisor ID, or student ID.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", script, true);
                return;
            }
            else
            {
                SemCreditHours = int.Parse(semHours.Text);
                AdvisorId = int.Parse(AID.Text);
                StudentId = int.Parse(SID.Text);
            }
            // Check if any of the fields are empty
            if (string.IsNullOrEmpty(SemCode) || String.IsNullOrEmpty(expecGradDate.ToString()) || string.IsNullOrEmpty(SemCreditHours.ToString()) || string.IsNullOrEmpty(AdvisorId.ToString()) || string.IsNullOrEmpty(StudentId.ToString()))
            {
                // Display an error message or notification
                string message = "showNotification('Please fill in all fields.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", message, true);
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
                        SqlCommand proc = new SqlCommand("Procedures_AdvisorCreateGP", conn);
                        proc.CommandType = CommandType.StoredProcedure;

                        proc.Parameters.Add(new SqlParameter("@Semester_code", SemCode));
                        proc.Parameters.Add(new SqlParameter("@expected_graduation_date", expecGradDate));
                        proc.Parameters.Add(new SqlParameter("@sem_credit_hours", SemCreditHours));
                        proc.Parameters.Add(new SqlParameter("@advisor_id", AdvisorId));
                        proc.Parameters.Add(new SqlParameter("@student_id", StudentId));

                        conn.Open();
                        int rowsAffected = proc.ExecuteNonQuery();
                        conn.Close();


                        if (rowsAffected == 0)
                        {
                            // Output a message indicating that no data was updated
                            ClientScript.RegisterStartupScript(this.GetType(), "NoDataInsertedMessage", "showNotification('No data inserted for the given student ID and Advisor ID (Student ID or Advisor ID is invalid).', 'error');", true);
                        }
                        else
                        {
                            // Output a success message
                            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "showNotification('Graduation plan inserted successfully if the student is eligible', 'success');", true);

                        }
                    }
            }
        }
            catch (SqlException ex)
            {
                // Check if the exception is related to a NULL value insertion
                foreach (SqlError error in ex.Errors)
                {
                    if (error.Number == 515) // Error number for attempting to insert a NULL value into a non-nullable column
                    {
                        // Output a specific message for NULL value insertion
                        ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", "showNotification('Null Value Error:Course Name/ Student ID/Semester Code entered is Invalid. Please provide valid data.', 'error');", true);
                        return;
                    }
                    else
                    {
                        if (error.Number == 2627)
                        {
                            // Output a specific message for duplicate data
                            ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", "showNotification('Error: Duplicate data. The data you are trying to insert already exists.', 'error');", true);
                            return;
                        }
                    }
                }

                // Output a generic error message for other exceptions
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", "showNotification('An error occurred while processing your request, please try again.', 'error');", true);
            }
        }
    }
}
    
