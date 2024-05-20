using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web_app
{
    public partial class Insert_Graduation_Plan_Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }
        protected void Main3_Click(object sender, EventArgs e)
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

            int StudentId = int.Parse(SID.Text);
            String SemCode = Semcode.Text;
            String cName = courseName.Text;

                // Check if semCode starts with 'w' or 's'
                if (!SemCode.StartsWith("w", StringComparison.OrdinalIgnoreCase) && !SemCode.StartsWith("s", StringComparison.OrdinalIgnoreCase))
                {
                    // Output an error message if it doesn't start with 'w' or 's'
                    ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Semester Code Format. Semester Code must start with w or s', 'error');", true);

                }
                else
                {


                    SqlCommand proc = new SqlCommand("Procedures_AdvisorAddCourseGP", conn);
                    proc.CommandType = CommandType.StoredProcedure;

                    proc.Parameters.Add(new SqlParameter("@student_id", StudentId));
                    proc.Parameters.Add(new SqlParameter("@Semester_code", SemCode));
                    proc.Parameters.Add(new SqlParameter("@course_name", cName));


                    conn.Open();
                    int rowsAffected = proc.ExecuteNonQuery();

                    conn.Close();

                    if (rowsAffected == 0)
                    {
                        // Output a message indicating that no data was updated
                        ClientScript.RegisterStartupScript(this.GetType(), "NoDataUpdatedMessage", "showNotification('No data inserted for the given student ID (Student ID/Semeseter code/ Course name might be invalid).', 'error');", true);
                    }
                    else
                    {
                        // Output a success message
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "showNotification('Graduation plan course inserted successfully', 'success');", true);
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
                    else{
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