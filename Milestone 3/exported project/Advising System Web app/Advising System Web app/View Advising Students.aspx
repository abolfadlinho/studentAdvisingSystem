<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View Advising Students.aspx.cs" Inherits="Advising_System_Web_app.View_Avising_Students" %>

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

            .heading {
                top: 10px;
                left: 10px;
                color: white;
                font-size: 50px;
            }
            .date-container {
                position: fixed; /* Set the position to fixed */
                bottom: 10px;
                right: 10px;
                color: white;
                font-size: 20px;
            }
            .student-table {
                border-collapse: collapse; /* Collapse the borders between cells */
                width: 10%; /* Set the width of the table */
                margin: auto;
                
            }
            .scrollable-container {
                height: 600px; /* Set the desired height for the scrollable container */
                overflow-y: auto; /* Enable vertical scrolling when content exceeds the height */
            }

            .student-table th, .student-table td {
                border: 1px solid black; /* Add a 1px solid black border to header and data cells */
                padding: 8px; /* Add some padding for better appearance */
                text-align: left; /* Align text to the left within cells */
            }
            .button-container {
                position: fixed;
                top: 10px;
                right: 10px;
            }
            .gridView-group {
                    margin-left: 15%;
                    margin-top: 5%;
                    width: 80%; /* Set a fixed width for the container */
                    overflow-x: auto; /* Enable horizontal scrolling */
                    max-height: 600px; /* Set a maximum height for vertical scrolling */
                    background-color: #f0f0f0; /* Set a grey background color */
                    text-align: center; /* Center-align the content */
            }

     </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="heading">
            <asp:Label ID="Main_Heading" runat="server" Text="Advising Students"></asp:Label>
        </div>


        <div id="formContainer">
            <div class="background-container">
            <img src="Background image2.jpg" class="background-image" />
        </div>

         <div class="date-container">
             <asp:Label ID="DateLabel" runat="server" Text=""></asp:Label>
         </div>

        <div class="button-container">
                <asp:Button ID="Main1" runat="server" Text="Back to Main Menu" OnClick="Main1_Click" />
        </div>

        <asp:GridView ID="GridView1" runat="server" CssClass="gridView-group" AutoGenerateColumns="false" Width ="800">
            <Columns>
                <asp:BoundField DataField="student_id" HeaderText="Student ID" />
                <asp:BoundField DataField="f_name" HeaderText="First Name" />
                <asp:BoundField DataField="l_name" HeaderText="Last Name" />
                <asp:BoundField DataField="gpa" HeaderText="GPA" />
                <asp:BoundField DataField="faculty" HeaderText="Faculty" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="major" HeaderText="Major" />
                <asp:BoundField DataField="financial_status" HeaderText="Financial Status" />
                <asp:BoundField DataField="semester" HeaderText="Semester" />
                <asp:BoundField DataField="acquired_hours" HeaderText="Acquired Hours" />
                <asp:BoundField DataField="assigned_hours" HeaderText="Assigned Hours" />
                <asp:BoundField DataField="advisor_id" HeaderText="Advisor ID" />
            </Columns>
        </asp:GridView>
            

    </form>
</body>
</html>
