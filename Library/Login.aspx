<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Library.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 98px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <span class="auto-style3"><strong>Library<br />
                </strong></span>
                <br />
                <span class="auto-style2"><strong>Log in</strong></span><br />
                Please enter your e-mail and password to log in.</div>
        </div>
            <table style="width: 58%;">
                <tr>
                    <td class="auto-style1">E-mail:</td>
                    <td>
                        <asp:TextBox ID="loginemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Log in" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="validationMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        <div>
            <div>
            <div>
                <strong>
                <br />
                If you do not have an account, please sign up.<br />
                <br />
                <span class="auto-style2">Sign Up</span></strong><br />
                Please enter your all fields to sign up.</div>
            </div>
        </div>
            <table style="width: 58%;">
                <tr>
                    <td class="auto-style1">Student ID:</td>
                    <td>
                        <asp:TextBox ID="sid" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Name:</td>
                    <td>
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Surname:</td>
                    <td>
                        <asp:TextBox ID="surname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Contact:</td>
                    <td>
                        <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">E-mail:</td>
                    <td>
                        <asp:TextBox ID="signupemail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Password:</td>
                    <td>
                        <asp:TextBox ID="passwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="SignupButton" runat="server" OnClick="submitButton_Click" Text="Sign Up" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="SignupValidation" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
