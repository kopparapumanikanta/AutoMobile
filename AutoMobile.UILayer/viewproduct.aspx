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
    height: 100vh;
    background-color:#cac79f;
}

.container {
    margin-top: 3%;
    width: 100%;
    background-color: #cac79f;
    height: 100%;
}

#grid {
    width:75%;
     margin:4%;
    background-color:black;
    border-radius: 12px;
}

tr > * + * {
  padding-left: 8em;
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
           
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  style="margin:5%; padding:20%; width:80%; height:80%;"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black">
                   <Columns>
                       <asp:TemplateField HeaderText="ProductID" InsertVisible="False" SortExpression="ProductID">
                           <EditItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="ProductName" SortExpression="ProductName">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Image" SortExpression="Image">
                           <EditItemTemplate>
                               <asp:FileUpload ID="FileUpload1" runat="server" FileName	='<%# Bind("Image") %>'/>

                             
                           </EditItemTemplate>
                           <ItemTemplate>
                             <img src="Images/<%#Eval("Image")%>" style="width: 150px; height: 140px;" />

                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Cost" SortExpression="Cost">
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Cost") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label4" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                   </Columns>
                   <FooterStyle BackColor="#CCCCCC" />
                   <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                   <RowStyle BackColor="White" />
                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="Gray" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#383838" />

               </asp:GridView> 
                          
    

 </form>
    </div>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutoMobileDBConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Product] ([ProductName], [Image], [Cost]) VALUES (@ProductName, @Image, @Cost)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Image] = @Image, [Cost] = @Cost WHERE [ProductID] = @ProductID">
        <DeleteParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Cost" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Cost" Type="Int32" />
            <asp:Parameter Name="ProductID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>  
</asp:Content>
