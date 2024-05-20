<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete Graduation Plan Courses.aspx.cs" Inherits="Advising_System_Web_app.Delete_Graduation_Plan_Courses" %>

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
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        /* form-group edits the username and password textbox and labels */
        .form-group {
            margin-bottom: 10px;
            display: flex; /* Added this line to make label and input inline */
            align-items: center; /* Align items vertically in the center */
            text-align: center;
        }

        .form-group label {
            margin-right: 10px; /* Adjust the margin (space between textbox and the label) */
        }       

        .form-group input {
            font-size:large;
            width: 100%; /* Set width to 100% */
        }
    </style>
    <script>
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
            <asp:Label ID="Main_Heading" runat="server" Text="Delete Graduation Plan Course"></asp:Label>
        </div>

        <div id="formContainer">
            <div class="background-container">
            <img src="Background image2.jpg" class="background-image" />
        </div>

        <div class="date-container">
            <asp:Label ID="DateLabel" runat="server" Text=""></asp:Label>
        </div>

        <div class="button-container">
            <asp:Button ID="Main5" runat="server" Text="Back to Main Menu" OnClick="Main5_Click" />
        </div>

        <div class="form-group">
            <label for="SID: ">Student ID:</label>
            <asp:TextBox ID="SID" runat="server" CssClass="input-field" Width="50%"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="Semcode">Semester code:</label>
            <asp:TextBox ID="Semcode" runat="server" CssClass="input-field" Width="50%"></asp:TextBox>
    
        </div>

        <div class="form-group">
            <label for="cID">Course ID:</label>
            <asp:TextBox ID="cID" runat="server" CssClass="input-field" Width="50%"></asp:TextBox>
        </div>


        
        <div class="heading-group">

            <asp:Button ID="Delete" runat="server" Text="Delete" OnClick="delete_button"  />
        </div>
    </form>
</body>
</html>
