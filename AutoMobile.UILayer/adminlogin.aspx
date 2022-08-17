<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="AutoMobile.UILayer.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 48px;
        }
        .auto-style3 {
            text-align: center;
            height: 151px;
        }
        .auto-style4 {
            font-size: x-large;
            border-style: solid;
            border-color: #FF0000;
        }
        .auto-style5 {
            font-size: large;
            font-variant: small-caps;
        }
        .auto-style6 {
            text-align: center;
            height: 194px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="561px" ImageUrl="https://indofast.in/uploaded_files/product_logo/Spare_PartsEoBX.gif" Width="715px" />
            </td>
            <td class="auto-style3"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="WELCOME TO THE STORE"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp; <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Admin Login"></asp:Label>
                </strong>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email should be in correct format" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="login" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="signup.aspx">I&#39;m New? SignUp</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="userlogin.aspx">I&#39;m User? Login</asp:HyperLink>
            </td>
        </tr>
    </table>
</form>
</html>
