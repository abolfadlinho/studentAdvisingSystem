using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web_app
{
    public partial class Advisor_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Log_in_button(object sender, EventArgs e)
        {
            //retrieving the connection string named "Advising_Team_94" from the configuration settings and storing it in the connStr

            String connStr = WebConfigurationManager.ConnectionStrings["Advising_Team_94"].ToString();

            //create a new connection

            SqlConnection conn = new SqlConnection(connStr);

            int id;
            if (!int.TryParse(Username.Text, out id))
            {
                // Handle the case where the input is not a valid integer
                ClientScript.RegisterStartupScript(this.GetType(), "InvalidInputMessage", "showNotification('Invalid Advisor ID. Please enter a valid integer.', 'error');", true);
                return;
            }
            else
            {
                id = Int16.Parse(Username.Text);

                String pass = Password.Text;
                String success = "";

                if (string.IsNullOrEmpty(pass))
                {
                    // Handle the case where the password is not valid
                    ClientScript.RegisterStartupScript(this.GetType(), "InvalidPasswordMessage", "showNotification('Invalid password. Please enter a valid password.', 'error');", true);
                    return;
                }
                else
                {

                    SqlCommand test = new SqlCommand("select dbo.FN_AdvisorLogin(@advisor_Id, @password) ", conn);
                    test.Parameters.AddWithValue("@advisor_Id", id);
                    test.Parameters.AddWithValue("@password", pass);

                    conn.Open();
                    object result = test.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        bool status = Convert.ToBoolean(result);
                        if (status == true)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "WelcomeMessage", "showNotification('Welcome', 'success');", true);
                            Session["AdvisorID"] = id;


                            //Response.Redirect("Advisor_Main.aspx");

                            // Used JavaScript to introduce a 2-second delay and then redirect
                            ClientScript.RegisterStartupScript(this.GetType(), "RedirectScript", "setTimeout(function(){ window.location.href = 'Advisor_Main.aspx'; }, 2000);", true);
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "ErrorMessage", "showNotification('Username or Password is incorrect', 'error');", true);
                        }

                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "NullResultMessage", "showNotification('Result is null or DBNull.Value', 'error');", true);
                    }

                    conn.Close();
                    Response.Write("<script>setTimeout(function() { document.getElementById('message').style.display = 'none'; }, 3000);</script>");


                }
            }
        }

            protected void Sign_Up_button(object sender, EventArgs e)
            {
                Response.Redirect("Sign Up Page.aspx");
            } 
    }
}