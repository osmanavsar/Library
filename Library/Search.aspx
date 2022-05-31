<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Library.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Library</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            font-size: medium;
        }

    </style>
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
    <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/Login">Library</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">                        
                        <li><a runat="server" href="~/Login">Login</a></li>
                        <li><a runat="server" href="~/Search">Search</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
        
        <p class="auto-style1">
            <strong>Search</strong></p>
            <table style="width: 58%;">
                <tr>
                    <td class="auto-style4">Please enter a book name or writer to search:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="searchText" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
                    </td>
                </tr>         
                
            </table>

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
            <table style="width: 58%;">
                <tr>
                    <td class="auto-style4">Enter the book ID of the book to reserve:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="reserveText" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                   <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="ReserveButton" runat="server" OnClick="SearchButton_Click" Text="Reserve" />
                    </td>
                </tr>         
                
            </table>

        </form>
</body>
</html>
