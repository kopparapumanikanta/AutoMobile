<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addproduct.aspx.cs" Inherits="AutoMobile.UILayer.addproduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


nav {
    height: 80px;
    background-color: #1f1d4e;
    padding-top: 30px;
    padding-left: 10px;
}

    nav .logo {
        display: inline;
        color: white;
        font-size: 22px;
    }

    nav ul {
        float: right;
        list-style: none;
    }

        nav ul li {
            display: inline-block;
            list-style: none;
        }

li a {
    margin-right: 10px;
    color: white;
    text-decoration: none;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 22px;
    letter-spacing: 1px;
    padding: 5px 8px;
}

    nav ul li a:hover,
    nav ul li a.active {
        color: #1b1b1b;
        background: #fff;
    }

.Logout {
    justify-content: space-between;
    margin-left: 530px;
}

.ab {
    background-color: white;
    height: 14px;
}

.homebody {
    height: 110vh;
    width: 100%;
    background-color: #cac79f;
    padding-top: 2%;
}

h3 {
    color: white;
    margin-left: 35%;
}

#grid {
    margin-left: 33%;
    margin-right: 33%;
    height: 70vh;
    background-color: #1f1d4e;
}

.formcontrol {
    font-size: 15px;
    width: 65%;
    height: 60%;
    padding: 1%;
    margin-left: 15%;
    margin-bottom: 1%;
    border-radius: 6px;
    border: 3px solid white;
}


#addButton {
    color: white;
    padding: 13px 38px;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 8px;
    border: 3px;
    margin-left: 30%;
}

    </style>
        <nav>
        <div class="logo">AutoMobile Spare Parts Shopping</div>
        <ul>

            <li><asp:HyperLink href="addproduct.aspx" class="active" ID="addprod" runat="server">Add Product</asp:HyperLink></li>
             <li><asp:HyperLink href="viewproduct.aspx" ID="viewprod" runat="server">View Product</asp:HyperLink></li>
            <li><asp:HyperLink href="adminlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>

           
        </ul>
    </nav>
    <div class="ab"></div>
    <div class="homebody">
        <div class="rounded " id="grid">
            <br /><h3>Add Product</h3><br>
            <form id="AddProductForm" autocomplete="off" runat="server">
                
                
                  <asp:TextBox ID="TextBox1" class="formcontrol" placeholder="Enter the Name" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="TextBox1" style=" color:red; margin-left:20%;" ErrorMessage="Name required"></asp:RequiredFieldValidator><br /><br />

                <asp:FileUpload ID="FileUpload1" class="formcontrol" placeholder="Enter the Image " runat="server" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
            ControlToValidate="FileUpload1" style=" color:red; margin-left:20%;" ErrorMessage="Image  required"></asp:RequiredFieldValidator><br /><br />

                 <asp:TextBox ID="TextBox2" class="formcontrol" placeholder="Enter the Cost" runat="server"></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
            ControlToValidate="TextBox2" style=" color:red; margin-left:20%;" ErrorMessage="Cost required"></asp:RequiredFieldValidator><br /><br />

             

                 <asp:Button style="margin-left:35%; padding:2% 5% 2% 5%; margin-top:2%; margin-bottom:2%;" class="btn btn-dark" ID="Button1" runat="server" Text="Add" OnClick="add"  /><br />
            
               	<asp:Label ID="lblErrMsg" style=" color:red; margin-left:20%;" runat="server"></asp:Label>
              
            
        </div>

       
        </form>
    </div>
</asp:Content>
