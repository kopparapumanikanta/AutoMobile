<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placeorder.aspx.cs" Inherits="AutoMobile.UILayer.placeorder" %>

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
   
    font-size: 25px;
   padding:1%;
    cursor: pointer;
   margin-left:6%; 
   margin-top:2%; 
    
   margin-bottom:2%;
}

        .auto-style1 {
            width: 48%;
            height: 129px;
        }
        .auto-style2 {
            width: 186px;
        }
        .auto-style3 {
            text-align: center;
        }
         .txt1{
        margin-left:12%;
        font-size:40px;
    }
         .txt3{
        font-size:30px;
         }
         .txt2{
              margin-left:12%;
        font-size:30px;
         }
    </style>
</head>
<body>

    <form id="form1" runat="server">
           <nav>
   
         <asp:Label class="logo" ID="Label4" runat="server" Text="Label">AutoMobile Spare Parts Shopping</asp:Label>
         <ul>

           
                <li><asp:HyperLink href="home.aspx"    id="HyperLink2" runat="server">Home</asp:HyperLink></li>
             <li><asp:HyperLink href="mycart.aspx"   id="HyperLink3" runat="server">My Cart</asp:HyperLink></li>
   <li><asp:HyperLink href="placeorder.aspx"  ID="billButton" class="active" runat="server" >Bill Page</asp:HyperLink></li>
           
            <li><asp:HyperLink href="userlogin.aspx" class="Logout" ID="logout" runat="server" >Logout</asp:HyperLink></li>
           

           
        </ul>
       
           </nav>
         <div class="ab"></div>
        <div class="auto-style3">
            <br />
         
            <asp:Label ID="Label5" class="txt2" runat="server" Text=""></asp:Label>

            <asp:Label ID="Label1" class="txt3" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label6" class="txt2" runat="server" Text=""></asp:Label>

            <asp:Label ID="Label2" class="txt3" runat="server" Text=""></asp:Label>

            <asp:GridView ID="GridView1" runat="server" style="margin-left:34%; margin-top:5%;" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" Height="400px" Width="600px" ShowFooter="True" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="S.No" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="productname" HeaderText="Product Name" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="cost" HeaderText="Cost" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalcost" HeaderText="Total Cost" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#C6C3C6" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            &nbsp;<br />
            <asp:Button ID="Button1" class="CalculateButton" runat="server" Text="" OnClick="Button1_Click"  Enabled="false"/><br />
           <asp:Label class="txt1" ID="Label3" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
