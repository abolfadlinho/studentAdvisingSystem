<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Main.aspx.cs" Inherits="Advising_System_Web_app.Advisor_Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

    /*container for the background image */
        .background-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Set the z-index to -1 */
            background-size: cover;
        }


        .button-list {
        list-style-type: none;
        padding: 0;
        margin: 0;
        margin-top: 150px;
        background-color: rgba(255, 255, 255, 0.5); /* rgba with alpha value (0.5 for semi-transparent white) */
    }

    .button-list option {
        padding: 10px;
        margin: 5px;
        cursor: pointer;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
    }

    .button-list option:hover {
        background-color: #45a049;
    }

    .heading {
        position: absolute;
        top: 10px;
        left: 10px;
        color: white;
        font-size: 50px;
    }
    .date-container {
            position: fixed;
            bottom: 10px;
            right: 10px;
            color: white;
            font-size: 20px;
        }
    .ID-container {
        position: absolute;
        top: 10px;
        right: 10px;
        color: black;
        font-size: 20px;
    }

        </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="heading">
            <asp:Label ID="Main_Heading" runat="server" Text="Advisor Portal"></asp:Label>
        </div>
        <div id="formContainer">
            <div class="background-container">
                <img src="Background image2.jpg" class="background-image" />
            </div>
            <asp:ListBox ID="ListBox1" runat="server" Height="428px" Width="317px" CssClass="button-list" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Text="View Advising Students" Value="ViewAdvisingStudents" OnClick="View_Students_button"/>
                <asp:ListItem Text="Insert Graduation Plan" Value="InsertGraduationPlan" />
                <asp:ListItem Text="Insert Graduation Plan Courses" Value="InsertGraduationPlanCourses" />
                <asp:ListItem Text="Update Expected Graduation Date" Value="UpdateGraduationPlanDate" />
                <asp:ListItem Text="Delete Graduation Plan Courses" Value="DeleteGraduationPlanCourses" />
                <asp:ListItem Text="View Assigned Students" Value="ViewAssignedStudents" />
                <asp:ListItem Text="View All Requests" Value="ViewAllRequests" />
                <asp:ListItem Text="View Pending Requests" Value="ViewPendingRequests" />
                <asp:ListItem Text="Approve/Reject Credit Hours Request" Value="Approve/RejectCreditHoursRequest" />
                <asp:ListItem Text="Approve/Reject Courses Request" Value="Approve/RejectCoursesRequest" />

             </asp:ListBox>

            <div class="date-container">
                <asp:Label ID="DateLabel" runat="server" Text=""></asp:Label>
            </div>

            <div class="ID-container">
                <asp:Label ID="IDlabel" runat="server" Text=""></asp:Label>
            </div>

       
    </form>
</body>
</html>
