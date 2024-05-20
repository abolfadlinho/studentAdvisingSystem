<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApproveReject Credit Hours Request.aspx.cs" Inherits="Advising_System_Web_app.ApproveReject_Credit_Hours_Request" %>

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
        .heading {
            position: absolute;
            display: flex;
            top: 10px;
            left: 10px;
            color: white;
            font-size: 50px;
        }

        /*container for username, password, sign in */

        #formContainer {
            width: 302px; 
            padding: 20px;
            /*background-color: #ffffff;*/
            border-radius: 0px;
            background-color: rgba(255, 255, 255, 0.5);
                    height: 109px;
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
            width: 100%; /* Set width to 100% */
        }

        #Sign_Up {
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
    #action {
            display: block;
            margin: 0 auto; /* Center align horizontally */
            width: 30%; /* Set the desired width of the button */
            margin-bottom: 50px;
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
        <div class="heading">
            <asp:Label ID="Main_Heading" runat="server" Text="Approve/Reject Credit Hours Request"></asp:Label>
        </div>

        <div id="formContainer">
            <div class="background-container">
            <img src="Background image2.jpg" class="background-image" />
        </div>

        <div class="date-container">
            <asp:Label ID="DateLabel" runat="server" Text=""></asp:Label>
        </div>

        <div class="form-group">
            <label for="rID">Request ID:</label>
            <asp:TextBox ID="rID" runat="server" CssClass="input-field" Width="30%"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="sCode">Current Semester Code:</label>
            <asp:TextBox ID="sCode" runat="server" CssClass="input-field" Width="30%"></asp:TextBox>
        </div>

        <div class="action">

            <asp:Button ID="action" runat="server" Text="Take Action" OnClick="action_button" />
        </div>

        <div class="button-container">
            <asp:Button ID="Main9" runat="server" Text="Back to Main Menu" OnClick="Main9_Click" />
        </div>
    </form>
</body>
</html>
