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
    background-color: black;
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
           .auto-style1 {
               width: 100%;
               height: 254px;
           }
           .auto-style2 {
               text-align: center;
           }
           .auto-style3 {
               height: 16px;
               text-align: center;
           }
           .auto-style4 {
               text-align: center;
               height: 22px;
           }
           </style>

     <nav>
   
         <asp:Label class="logo" ID="Label1" runat="server" Text="Label">AutoMobile Spare Parts Shopping</asp:Label>
         <ul>

           
            <li><asp:HyperLink href="userlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>

           
        </ul>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mycart.aspx">My Cart</asp:HyperLink>
           </nav>
           <div>
               <br />
                <br />


               <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" Height="490px" RepeatColumns="3" RepeatDirection="Horizontal" Width="802px" OnItemCommand="DataList1_ItemCommand" DataKeyField="ProductID">
                   <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                   <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                   <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                   <ItemTemplate>
                       <table class="auto-style1">
                           <tr>
                               <td class="auto-style2">Product ID :
                                   <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style4">&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="auto-style3">
                                   <img src="Images/<%#Eval("Image")%>" style="width: 150px; height: 140px;" />
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
                   <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
               </asp:DataList>
               <br />
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoMobileDBConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
               <br />


           </div>
       </form>
</asp:Content>
