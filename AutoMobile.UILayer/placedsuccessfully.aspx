<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placedsuccessfully.aspx.cs" Inherits="AutoMobile.UILayer.placedsuccessfully" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 600px;
        }
        .auto-style3 {
            text-align: center;
            height: 75px;
        }
        .auto-style4 {
            height: 130px;
        }
        .auto-style6 {
            width: 108%;
            height: 283px;
        }
        .auto-style7 {
            width: 697px;
        }
        .auto-style8 {
            height: 304px;
        }
        .auto-style9 {
            height: 38px;
        }
        .auto-style10 {
            height: 60px;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Your Order Has Been Placed Successfully!!!<br />
            <br />
            The below attached is your invoice<br />
            <br />
            Order ID :
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="330px">
                <table class="auto-style1" border="1">
                    <tr>
                        <td class="auto-style3">Retail Invoice</td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Order Number :
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <br />
                            <br />
                            Order Date :
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            <table class="auto-style6">
                                <tr>
                                    <td class="auto-style7">Buyer Address<br />
                                        <br />
                                        <asp:Label ID="Label4" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;Seller Address
                                        <br />
                                        <br />
                                        Guntur,Andhra Pradesh</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:GridView ID="GridView1" runat="server" Width="1148px" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="S.No">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productid" HeaderText="Product ID">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productname" HeaderText="Product Name">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cost" HeaderText="Cost">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalcost" HeaderText="Total Cost">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Grand Total :
                            <asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            Declaration : We declare that this invoice shows actual price of the goods described inclusive of taxes and that all particulars are true and correct.<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incase you find selling price on this invoice to be more than MRP mentioned on the product,<br /> Please inform <a href="mailto:manumanikanta1964@gmail.com">manumanikanta1964@gmail.com</a><br />
                            <br />
                            THIS&nbsp; IS COMPUTER GENERATED INVOICE AND DOES NOT REQUIRED SIGNATURE.<br />

                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
