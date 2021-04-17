<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSection.aspx.cs" Inherits="ATP2.AddSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 575px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
       
    <table>
       <tr>
           <td>Course Title</td>
           <td>
               <asp:TextBox ID="TextBoxTitle" runat="server" OnTextChanged="TextBoxTitle_TextChanged" ReadOnly="True"></asp:TextBox></td>
       </tr> 
        <tr>
            <td>Sections</td>
            <td>
                <asp:DropDownList ID="DropDownListSection" runat="server" OnSelectedIndexChanged="DropDownListSection_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
        
        </table>
        <asp:Button ID="ButtonSelect" runat="server" Text="View Sections Detals" OnClick="ButtonSelect_Click" ValidationGroup="View" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListSection" ErrorMessage="Select A section" ValidationGroup="View"></asp:RequiredFieldValidator>
  
        <table>
            <tr><td>Add Section For this Coure</td></tr>
        <tr>
            <td>Section Name</td><td>
                <asp:TextBox ID="TextBoxSectionName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxSectionName" ErrorMessage="Section Name Empty" ValidationGroup="Add"></asp:RequiredFieldValidator>
            </td>
        </tr>
            <tr>
                <td>Number Of Classes</td>
                <td>
                    <asp:TextBox ID="TextBoxNumClass" runat="server" OnTextChanged="TextBoxNumClass_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxNumClass" ErrorMessage="Number of classes empty" ValidationGroup="Add"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td>Start Date</td><td>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            </td><td>
                <asp:TextBox ID="TextBoxDate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxDate" ErrorMessage="Select A date" ValidationGroup="Add"></asp:RequiredFieldValidator>
                </td></tr>
            
    </table>
        <asp:Button ID="ButtonADD" runat="server" Text="AddSection" OnClick="ButtonADD_Click" ValidationGroup="Add" />
        
        <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click">Logout</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButtonBack" runat="server" OnClick="LinkButtonBack_Click">Back</asp:LinkButton>
        
    </form>
</body>
</html>
