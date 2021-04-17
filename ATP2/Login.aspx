<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATP2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 373px;
        }
        .auto-style1 {
            width: 125px;
        }
        .auto-style2 {
            width: 125px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 470px;
        }
        .auto-style5 {
            height: 23px;
            width: 470px;
        }
        .auto-style8 {
            width: 125px;
            height: 22px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style10 {
            width: 228px;
            height: 22px;
        }
        .auto-style11 {
            width: 232px;
            height: 22px;
        }
        .auto-style12 {
            width: 100%;
            height: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login</h1>
    <div style="height: 203px">
    
        <table class="auto-style12">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="User Name :"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxUserName" runat="server" Width="450px" OnTextChanged="TextBoxUserName_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldUserName" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="User Name must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="450px" OnTextChanged="TextBoxPassword_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style11"></td>
                <td class="auto-style10">
                    <asp:HyperLink ID="HyperLinkSignUp" runat="server" BackColor="White" BorderColor="Blue" NavigateUrl="~/Signup.aspx">Don&#39;t have an account? Sign up here!</asp:HyperLink>
                </td>
                <td class="auto-style9">
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Submit" runat="server" BackColor="#3399FF" Text="Login" Width="450px" OnClick="Submit_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
