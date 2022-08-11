<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewproduct.aspx.cs" Inherits="AutoMobile.UILayer.viewproduct" %>
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

.ab {
    background-color: white;
    height: 14px;
}

body {
    background-color: yellow;
    height: 100vh;
}

.homebody {
    height: 100vh;
    background-color:yellow;
}

.container {
    margin-top: 3%;
    width: 100%;
    background-color: yellow;
    height: 100%;
}





#grid {
    width:75%;
     margin:4%;
    background-color:black;
    border-radius: 12px;
}




</style>

      <nav>
        <div class="logo">AutoMobile Spare Parts Shopping</div>
        <ul>
            
            <li><asp:HyperLink href="addproduct.aspx" ID="addprod" runat="server">Add Product</asp:HyperLink></li>
             <li><asp:HyperLink href="viewproduct.aspx"  class="active" ID="viewprod" runat="server">View Product</asp:HyperLink></li>
            <li><asp:HyperLink href="adminlogin.aspx" class="Logout" ID="logout" runat="server">Logout</asp:HyperLink></li>
        </ul>
     </nav>
        <div class="ab"></div>
 
     
        <div class="homebody" >

            <form  runat="server">
           
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                    AutoGenerateColumns="False" style="margin:5%;  width:80%; height:80%;"  CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ProductID" HeaderText="ProductID" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                          <img src="Images/<%#Eval("Image")%>" style="width: 150px; height: 140px;" />
                      </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Cost" HeaderText="Cost" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />

                </asp:GridView>
                          
    

 </form>
    </div>  
</asp:Content>
