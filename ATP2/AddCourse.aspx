<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="ATP2.AddCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 649px;
        }
        .auto-style2 {
            height: 570px;
        }
        .auto-style4 {
            width: 160px;
        }
        .auto-style5 {
            width: 512px;
        }
        .auto-style7 {
            width: 268435776px;
        }
        .auto-style8 {
            width: 328px;
            height: 200px;
        }
        .auto-style9 {
            width: 68px;
            height: 200px;
        }
        .auto-style10 {
            width: 160px;
            height: 26px;
        }
        .auto-style11 {
            width: 512px;
            height: 26px;
        }
        .auto-style12 {
            width: 268435776px;
            height: 26px;
        }
        .auto-style13 {
            height: 404px;
            width: 1342px;
        }
        .auto-style14 {
            width: 160px;
            height: 200px;
        }
        .auto-style15 {
            height: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <h2>Add Course!</h2>
    <div class="auto-style2">
    
        <table class="auto-style13">
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Course Name :"></asp:Label>
                </td>
                <td class="auto-style11" colspan="3">
                    <asp:TextBox ID="TextBoxCourseName" runat="server" Width="450px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxCourseName" ErrorMessage="Course Name must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Course Details :"></asp:Label>
                </td>
                <td class="auto-style5" colspan="3">
                    <asp:TextBox ID="TextBoxCourseDetails" runat="server" Width="450px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxCourseDetails" ErrorMessage="Course Details must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Starting Date :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxStartingDate" runat="server" Width="100px"></asp:TextBox>
                    <asp:Button ID="Date" runat="server" Font-Bold="True" Font-Size="Medium" Text="..." />
                </td>
                <td class="auto-style9">
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td class="auto-style15" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxStartingDate" ErrorMessage="Course Starting date must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="No of Sections :"></asp:Label>
                </td>
                <td class="auto-style5" colspan="2">
                    <asp:DropDownList ID="DropDownListSection" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <a href="AddSection.aspx">AddSection.aspx</a></td>
                <td colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="No of Sections must need to be filled!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5" colspan="3">
                    <asp:Button ID="Submit" runat="server" Font-Bold="True" Text="Submit" Width="538px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
