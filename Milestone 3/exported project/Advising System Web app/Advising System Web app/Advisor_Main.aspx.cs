using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Advising_System_Web_app
{
    public partial class Advisor_Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Set the text of DateLabel to include the current date
            DateLabel.Text = "Date: " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");

            //Set the text of the IDlabel to include the advisor's ID
            IDlabel.Text = "Advisor ID:" + Session["AdvisorID"].ToString();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected item value
            string selectedValue = ListBox1.SelectedValue;

            // Perform actions based on the selected item
            switch (selectedValue)
            {
                case "ViewAdvisingStudents":
                    //  redirect to a specific page "View Advising Students"
                    Response.Redirect("View Advising Students.aspx");
                    break;

                case "InsertGraduationPlan":
                    //  redirect to a specific page "Insert Graduation Plan"
                    Response.Redirect("Insert Graduation Plan.aspx");
                    break;

                case "InsertGraduationPlanCourses":
                    //  redirect to a specific page "Insert Graduation Plan Courses"
                    Response.Redirect("Insert Graduation Plan Courses.aspx");
                    break;

                case "UpdateGraduationPlanDate":
                    //  redirect to a specific page "Update Graduation Plan Date"
                    Response.Redirect("Update Graduation Plan Date.aspx");
                    break;

                case "DeleteGraduationPlanCourses":
                    //  redirect to a specific page "Delete Graduation Plan Courses"
                    Response.Redirect("Delete Graduation Plan Courses.aspx");
                    break;

                case "ViewAssignedStudents":
                    //  redirect to a specific page "View Assigned Students"
                    Response.Redirect("View Assigned Students.aspx");
                    break;

                case "ViewAllRequests":
                    //  redirect to a specific page "View All Requests"
                    Response.Redirect("View All Requests.aspx");
                    break;

                case "ViewPendingRequests":
                    //  redirect to a specific page "View Pending Requests"
                    Response.Redirect("View Pending Requests.aspx");
                    break;

                case "Approve/RejectCreditHoursRequest":
                    //  redirect to a specific page "ApproveReject Credit Hours Request"
                    Response.Redirect("ApproveReject Credit Hours Request.aspx");
                    break;

                case "Approve/RejectCoursesRequest":
                    //  redirect to a specific page "ApproveReject Courses Request"
                    Response.Redirect("ApproveReject Courses Request.aspx");
                    break;

            }
        }
    }
}