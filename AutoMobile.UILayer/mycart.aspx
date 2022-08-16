 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="AutoMobile.UILayer.mycart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
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
</head>
<body>
    <form id="form1" runat="server">
             <nav>
   
         <asp:Label class="logo" ID="Label1" runat="server" Text="Label">AutoMobile Spare Parts Shopping</asp:Label>
         <ul>

           
            <li><asp:HyperLink href="userlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>

           
        </ul>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/mycart.aspx">My Cart</asp:HyperLink>
           </nav>
        <div>
            Continue Shopping 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
        </div>
        <div class="auto-style1">


            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="408px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="845px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="productname" HeaderText="ProductName">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cost" HeaderText="Cost">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalcost" HeaderText="Total Cost">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                    <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="50px" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />


        </div>
    </form>
</body>
</html>
