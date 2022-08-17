 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mycart.aspx.cs" Inherits="AutoMobile.UILayer.mycart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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

.CalculateButton {
   
    font-size: 30px;
   padding:1%;
    cursor: pointer;
   margin-left:7%; 
   margin-top:2%; 
    
   margin-bottom:2%;
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

    .txt1{
        margin-left:40%;
        font-size:50px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <nav>
   
         <asp:Label class="logo" ID="Label1" runat="server" Text="Label">AutoMobile Spare Parts Shopping</asp:Label>
         <ul>

                <li><asp:HyperLink href="home.aspx" id="homeButton" runat="server">Home</asp:HyperLink></li>
             <li><asp:HyperLink href="mycart.aspx"  class="active"   id="cartButton" runat="server">My Cart</asp:HyperLink></li>
   <li><asp:HyperLink href="placeorder.aspx"  ID="billButton" runat="server" >Bill Page</asp:HyperLink></li>
           
            <li><asp:HyperLink href="userlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>


           
        </ul>
        
           </nav>
         <div class="ab"></div>
        <div class="auto-style1">


            <br />
            <asp:GridView ID="GridView1" runat="server" style="margin-left:25%;" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Height="408px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="845px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="None">
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
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" Height="50px" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#C6C3C6" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <br />
                        <asp:Label class="txt1" ID="Label2" runat="server" Text="No Items in the Cart!!"></asp:Label>

            <asp:Button ID="Button1" class="CalculateButton" runat="server" OnClick="Button1_Click" Text="" Enabled="False" />


        </div>
    </form>
</body>
</html>
