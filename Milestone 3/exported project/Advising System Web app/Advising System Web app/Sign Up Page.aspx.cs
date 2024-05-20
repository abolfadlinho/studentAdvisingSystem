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
    public partial class Sign_Up_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Sign_button(object sender, EventArgs e)
        {
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr

            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection

            SqlConnection conn = new SqlConnection(connStr);

            String name = Name.Text;
            String pass = NewPassword.Text;
            String email = Email.Text;
            String office = Office.Text;
            String success = "";

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(pass) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(office))
            {
                // Display an error message or notification
                string message = "showNotification('Please fill in all fields.', 'error');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", message, true);
                return;
            }
            else
            {

                SqlCommand proc = new SqlCommand("Procedures_AdvisorRegistration", conn);
                proc.CommandType = CommandType.StoredProcedure;

                proc.Parameters.Add(new SqlParameter("@advisor_name", name));
                proc.Parameters.Add(new SqlParameter("@password", pass));
                proc.Parameters.Add(new SqlParameter("@email", email));
                proc.Parameters.Add(new SqlParameter("@office", office));
                SqlParameter id = proc.Parameters.Add("@Advisor_id", SqlDbType.Int);
                id.Direction = ParameterDirection.Output;

                conn.Open();
                proc.ExecuteNonQuery();
                conn.Close();


                string script = $"showNotification('Your Advisor Id is: {id.Value}', 'success');";
                //$"showNotification is a C# command that allows us to embedd expressions inside
                //string literals --> the embedded expression is added between {}

                ClientScript.RegisterStartupScript(this.GetType(), "WelcomeMessage", script, true);

                //Response.Write(id.Value);

                Session["AdvisorID"] = id.Value;

                // Used JavaScript to introduce a 4-second delay and then redirect
                ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "setTimeout(function(){ window.location.href = 'Advisor_Main.aspx'; }, 4000);", true);


                //System.Diagnostics.Debug.WriteLine("Your advisor ID is: " + id.Value);


            }
        }
        protected void backLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Login.aspx");
        }


    }
}