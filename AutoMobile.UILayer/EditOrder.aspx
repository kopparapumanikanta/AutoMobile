<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="AutoMobile.UILayer.EditOrder" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #FFFF99;
        }
        .auto-style2 {
            width: 338px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
            height: 330px;
            width: 724px;
        }
        .auto-style5 {
            text-align: left;
            width: 372px;
            height: 33px;
        }
        .auto-style6 {
            text-align: center;
            width: 372px;
        }
        .auto-style7 {
            width: 338px;
            text-align: center;
            height: 33px;
        }
        .auto-style8 {
            width: 338px;
            text-align: center;
            height: 26px;
        }
        .auto-style9 {
            text-align: center;
            width: 372px;
            height: 26px;
        }
    </style>
</head>
<body style="width: 752px; height: 358px; background-color: #cac79f;">
    <form id="form1" runat="server">
        <div class="auto-style4">
            <div class="auto-style3">
                <br />
            </div>
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style8">S.No</td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Cost</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Quantity</td>
                    <td class="auto-style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Total Cost</td>
                    <td class="auto-style6">
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style5">&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
