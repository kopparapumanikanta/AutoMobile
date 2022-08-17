<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="AutoMobile.UILayer.home" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       <form id="form1" runat="server">
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


body {
    background-color: #cac79f;
    height: 100vh;
}

.homebody {
    height: max-content;
    background-color: #cac79f;
}

.container {
    margin-top: 2%;
    margin-left:10%;
    background-color: #cac79f;
  
}


.textdata1{
    font-size:30px;
    margin-left:35%; 
}

.textdata2 {
    font-size:30px;
}



tr > * + * {
  padding-left: 8em;
}


        
           
           </style>

     <nav>
   
         <asp:Label class="logo" ID="Label1" runat="server" Text="Label">AutoMobile Spare Parts Shopping</asp:Label>
         <ul>

           
                <li><asp:HyperLink href="home.aspx"  class="active"  id="HyperLink2" runat="server">Home</asp:HyperLink></li>
             <li><asp:HyperLink href="mycart.aspx"   id="HyperLink3" runat="server">My Cart</asp:HyperLink></li>
   <li><asp:HyperLink href="placeorder.aspx"  ID="billButton" runat="server" >Bill Page</asp:HyperLink></li>
           
            <li><asp:HyperLink href="userlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>
           

           
        </ul>
       
           </nav>
            <div class="ab"></div>
           <div>
               <br />
                <br />


               <asp:DataList ID="DataList1" runat="server" style="margin-left:25%; background-color: mist;" DataSourceID="SqlDataSource1" Height="490px" RepeatColumns="3" RepeatDirection="Horizontal" Width="850px" OnItemCommand="DataList1_ItemCommand" DataKeyField="ProductID">
                   <ItemTemplate>
                       <table class="auto-style1">
                           
                           <tr>
                               <td class="auto-style4">&nbsp;&nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style3">
                                   <img src="Images/<%#Eval("Image")%>" style="width: 150px; height: 140px;" />
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style2">
                                   <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style2">Cost :
                                   <asp:Label ID="Label4" runat="server" Text='<%# Eval("Cost") %>'></asp:Label>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style2">Quantity :
                                   <asp:DropDownList ID="DropDownList1" runat="server">
                                       <asp:ListItem>1</asp:ListItem>
                                       <asp:ListItem>2</asp:ListItem>
                                       <asp:ListItem>3</asp:ListItem>
                                       <asp:ListItem>4</asp:ListItem>
                                       <asp:ListItem>5</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style2">
                                   <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/Images/add to cart.jpg" Width="140px" CommandArgument='<%#Eval("productid")%>' CommandName="mycart" />
                               </td>
                           </tr>
                       </table>
                       <br />
                       <br />
                   </ItemTemplate>
               </asp:DataList>
               <br />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoMobileDBConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
               <br />


           </div>
       </form>
</asp:Content>
