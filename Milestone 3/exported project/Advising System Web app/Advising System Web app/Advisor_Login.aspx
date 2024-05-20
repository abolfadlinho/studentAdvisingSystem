<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Login.aspx.cs" Inherits="Advising_System_Web_app.Advisor_Login" %>

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

        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        /* heading-group edits the label Advisor login*/
        .heading-group {
            margin-bottom: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .heading-group label {
            margin-right: 0; /* Remove the right margin */
            margin-bottom: 10px; /* Adjust the margin (space between textbox and the label) */
        }

        .heading-group input {
         width: 200px; /* Adjust the width as needed */
        }
        
        /*container for username, password, sign in */

        #formContainer {
            width: 300px; 
            padding: 20px;
            /*background-color: #ffffff;*/
            border-radius: 0px;
            background-color: rgba(255, 255, 255, 0.5); /* rgba with alpha value (0.5 for semi-transparent white) */
        }

        /* form-group edits the username and password textbox and labels */
        .form-group {
            margin-bottom: 10px;
            display: flex; /* Added this line to make label and input inline */
            align-items: center; /* Align items vertically in the center */
        }
        
        .form-group label {
            margin-right: 10px; /* Adjust the margin (space between textbox and the label) */
        }

        .form-group input {
            font-size:medium;
        }

        #Log_in_Button {
            display: block;
            margin: 0 auto; /* Center align horizontally */
            width: 30%; /* Set the desired width of the button */
            margin-bottom: 50px;
        }

        /* editing the notifications as required */
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

            // Remove the notification after 3 seconds 
            setTimeout(function () {
                document.body.removeChild(notification);
            }, 3000);
        }
    </script>
</head>
<body>

    <form id="form1" runat="server">

    <div class="background-container">
        <img src="Background image2.jpg" class="background-image" />
    </div>

        <div id="formContainer">

            <div class="heading-group">
                <asp:Label ID="Advisor_heading" runat="server" Text="Advisor Login" font-size ="X-Large"></asp:Label>
            </div>

            <div class="form-group">
                <label for="Username">UserID:</label>
                <asp:TextBox ID="Username" runat="server" Width="100%"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="Password">Password:</label>
                <asp:TextBox ID="Password" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="Log_in_Button" runat="server" OnClick="Log_in_button" Text="Log in"  />
           

            <div class="heading-group">
                <asp:Label ID="Label1" runat="server" Text="New Advisor:" font-size ="medium"></asp:Label>
                <asp:Button ID="Sign_Up_Button" runat="server" OnClick="Sign_Up_button" Text="Sign Up" width = 30% />
            </div>
        </div>
    </form>
</body>
</html>
