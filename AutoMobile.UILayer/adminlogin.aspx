<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="AutoMobile.UILayer.adminlogin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <style>
        
* {
    margin: 0;
    padding: 0;
}


nav {
    height: 90px;
    background-color: black;
    padding-top: 25px;
}

.header {
    margin-left: 40%;
    color: white;
    font-size: 38px;
    letter-spacing: 4px;
}

.container-fluid {
    background-color: yellow;
    width: 100%;
    height: 100vh;
}

.formcontrol {
    font-size: 20px;
    padding: 10px;
    margin-top: 40px;
    margin-left: 30%;
    margin-bottom: 10px;
    width: 30%;
}


input {
    font-size: 20px;
    padding: 10px;
    margin-top: 40px;
    margin-left: 30%;
    margin-bottom: 10px;
    width: 30%;
}

    input:hover {
        border-color: #1b1b1b;
        border-radius: 6px;
    }

.loginButton {
    color: white;
    font-size: 24px;
   
    cursor: pointer;
   margin-left:30%; 
   margin-top:2%; 
    
   margin-bottom:2%;
}

p {
    margin-left: 36%;
    font-size: 20px;
    margin-top: 10px;
    color: white;
}

a {
    text-decoration: none;
    font-size: 20px;
}

.ab {
    background-color: white;
    height: 14px;
}

    </style>
     <nav >
        <div >
          <span class="header">Admin Login</span>
        </div>
      </nav>
    
    <div class="ab">
    </div>


    <div class="container-fluid ">
        <form id="loginform" autocomplete="off" runat="server">

            <asp:TextBox ID="TextBox1" class="formcontrol" placeholder="Enter email" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="TextBox1" style=" color:red; margin-left:30%;" ErrorMessage="Email required"></asp:RequiredFieldValidator><br />
             <asp:RegularExpressionValidator ID="remail" runat="server" 
               ControlToValidate="TextBox1" style=" color:red; margin-left:30%;"  ErrorMessage="Enter valid email" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator><br />
          
            <asp:TextBox ID="TextBox2" class="formcontrol" type="password"  placeholder="Enter password"  runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
            ControlToValidate="TextBox2" style=" color:red; margin-left:30%;" ErrorMessage="password required"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator Display = "Dynamic"  ControlToValidate = "TextBox2" ID="RegularExpressionValidator3"  style=" color:red; margin-left:30%;"  ValidationExpression = "^[\s\S]{8,20}$" runat="server" 
                ErrorMessage="Minimum 8 and Maximum 20 characters required."></asp:RegularExpressionValidator><br />

            
            <asp:Button class="btn btn-primary btn-block loginButton" ID="Button1" runat="server" Text="Login" OnClick="AdminLogin" />
            <br />

           
            
             <p>New User?<asp:HyperLink href="signup.aspx" ID="signupLink" runat="server">SignUp</asp:HyperLink></p>
            <p>Already Have An Account?<asp:HyperLink href="userlogin.aspx" ID="loginlink" runat="server">Login</asp:HyperLink></p>
      
       </form>
         <asp:Label ID="lblErrMsg" runat="server"></asp:Label>
    </div>
</asp:Content>
