<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View All Requests.aspx.cs" Inherits="Advising_System_Web_app.View_All_Requests" %>

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
   
    .date-container {
        position: fixed;
        bottom: 10px;
        right: 10px;
        color: white;
        font-size: 20px;
    }
    .button-container {
        position: absolute;
        top: 10px;
        right: 10px;
    }
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
        position: absolute;
        display: flex;
        top: 10px;
        left: 10px;
        color: white;
        font-size: 50px;
        height: 168px;
    }
    .date-container {
        position: fixed;
        bottom: 10px;
        right: 10px;
        color: white;
        font-size: 20px;
    }
    .button-container {
        position: fixed;
        top: 10px;
        right: 10px;
    }
        .notification {
    left: 50%; /* alignment */
    transform: translate(-50%,-200%); /* alignment */
    position: fixed;
    bottom: 20px;
    right: 20px;
    padding: 15px;
    border-radius: 5px;
    color: #fff;
    font-weight: bold;
    z-index: 9999;
}

        .success {
            background-color: #28a745; /* Green */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .error {
            background-color: #dc3545; /* Red */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .warning {
            background-color: #ffc107; /* Yellow */
            display: flex;
            align-items: center;
            justify-content: center;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: left;
            height: 100vh;
            margin: 0;
        }
        /* form-group edits the textbox and labels */
        .form-group {
            margin-bottom: 10px;
            margin-top: 20px;
            display: flex; /* Added this line to make label and input inline */
            align-items: center; /* Align items vertically in the center */
            text-align: left;
        }

        .form-group label {
            margin-right: 10px; /* Adjust the margin (space between textbox and the label) */
            width: 80px;
        }       

        .form-group input {
            font-size:medium;
    }
        .gridView-group {
            margin-left: 45%;
            width: 50%; /* Set a fixed width for the container */
            overflow-x: auto; /* Enable horizontal scrolling */
            background-color: #f0f0f0; /* Set a grey background color */
            text-align: center; /* Center-align the content */
        }
        .view-button {
            margin-top: 20px; /* Adjust this value as needed */
            margin-left: 20px; /* Adjust this value as needed */
        }

    </style>    <script>
        /*Response.Write method sends output to the response stream immediately,
        and once it's sent, you cannot modify or remove it later because it's part of 
        the HTTP response being sent to the client.*/

        /*so I used this script to use client side scripting (to control the display
            of messages on the client side) */
        function showNotification(message, type) {
            var notification = document.createElement("div");
            notification.className = "notification " + type;
            notification.innerHTML = message;

            document.body.appendChild(notification);

            // Remove the notification after 5 seconds 
            setTimeout(function () {
                document.body.removeChild(notification);
            }, 5000);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="heading">
            <asp:Label ID="Main_Heading" runat="server" Text="View All Requests"></asp:Label>
        </div>

        <div id="formContainer">
            <div class="background-container">
            <img src="Background image2.jpg" class="background-image" />
        </div>

        <div class="date-container">
            <asp:Label ID="DateLabel" runat="server" Text=""></asp:Label>
        </div>

        <div class="button-container">
            <asp:Button ID="Main7" runat="server" Text="Back to Main Menu" OnClick="Main7_Click" />
        </div>

        <div class="form-group">
            <label for="AID: ">Advisor ID:</label>
            <asp:TextBox ID="AID" runat="server" CssClass="input-field" Width="20%"></asp:TextBox>
        </div>

        <div class="view-button">
            <asp:Button ID="View" runat="server" Text="View" OnClick="view_button" CssClass="view-button" />
        </div>
        <asp:GridView ID="GridView1" runat="server" CssClass="gridView-group" AutoGenerateColumns="false" Width ="800">
            <Columns>
                <asp:BoundField DataField="request_id" HeaderText="Request ID" />
                <asp:BoundField DataField="type" HeaderText="Type" />
                <asp:BoundField DataField="comment" HeaderText="Comment" />
                <asp:BoundField DataField="status" HeaderText="Status" />
                <asp:BoundField DataField="credit_hours" HeaderText="Credit Hours" />
                <asp:BoundField DataField="course_id" HeaderText="Course ID" />
                <asp:BoundField DataField="student_id" HeaderText="Student ID" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>