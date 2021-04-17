<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ATP2.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 571px;
        }
        .auto-style2 {
            height: 368px;
        }
        .auto-style3 {
            width: 100%;
            height: 197px;
        }
        .auto-style4 {
            width: 173px;
        }
        .auto-style5 {
            width: 470px;
        }
        .auto-style6 {
            width: 173px;
            height: 35px;
        }
        .auto-style7 {
            width: 214px;
            height: 35px;
        }
        .auto-style8 {
            height: 35px;
        }
        .auto-style9 {
            width: 255px;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <h1>Registration</h1>
    <div class="auto-style2">
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">
                    Name
                </td>
                <td>
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    Email:<br />
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="450px" OnTextChanged="TextBoxUserName_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldUserName" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="User Name must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password :"></asp:Label>
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="450px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Password must need to be filled!"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxConfirmPassword" ControlToValidate="TextBoxPassword" ErrorMessage="Password does not match!"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Confirm Password :"></asp:Label>
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" Width="450px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldConfirmPassword" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Confirm Password must need to be filled!"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Password does not match!"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style9">
                    <asp:HyperLink ID="HyperLinkLogin" runat="server" NavigateUrl="~/Login.aspx">Already have an account? Login here!</asp:HyperLink>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Submit" runat="server" BackColor="#3399FF" Text="Submit" Width="450px" OnClick="Submit_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
