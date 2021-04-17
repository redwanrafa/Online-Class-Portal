<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewSection.aspx.cs" Inherits="ATP2.ViewSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 561px;
        }
        .auto-style2 {
            height: 537px;
        }
        .auto-style3 {
            width: 100%;
            height: 207px;
        }
        .auto-style4 {
            width: 487px;
            height: 61px;
        }
        .auto-style5 {
            width: 148px;
        }
        .auto-style6 {
            width: 148px;
            height: 61px;
        }
        .auto-style7 {
            height: 61px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
    <div class="auto-style2">
    
        <asp:LinkButton ID="LinkButtonBack" runat="server" OnClick="LinkButtonBack_Click">Back</asp:LinkButton>
        <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click">Logout</asp:LinkButton>
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Course Name :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="LabelCourseName" runat="server" Text="Name of course goes here !"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Section Name :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="LabelSectionName" runat="server" Text="Name of section goes here !"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Section Timing :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="LabelStartTime" runat="server" Text="Start Time Goes Here!"></asp:Label>
&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="-"></asp:Label>
&nbsp;
                    <asp:Label ID="LabelEndTime" runat="server" Text="End Time Goes Here!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonViewStudents" runat="server" Font-Bold="True" Text="View Students" Width="372px" OnClick="ButtonViewStudents_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="ButtonAddStudent" runat="server" Font-Bold="True" OnClick="ButtonAddStudent_Click" Text="Add Student" Width="372px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Student Name :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxStudentName" runat="server" Visible="False" Width="354px" OnTextChanged="TextBoxStudentName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxStudentName" ErrorMessage="Student Name must need to be filled!" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Student ID :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxStudentID" runat="server" Visible="False" Width="354px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxStudentID" ErrorMessage="Student ID must need to be filled!" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Submit" runat="server" Font-Bold="True" Text="Submit" Visible="False" Width="538px" OnClick="Submit_Click" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" Width="708px" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Pass" HeaderText="Pass" SortExpression="Pass" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineClassroomConnectionString3 %>" SelectCommand="SELECT [ID], [Pass], [UserName], [Email] FROM [Students] WHERE ([SectionId] = @SectionId)" DeleteCommand="delete [Students] where ID=@ID">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="SectionId" SessionField="SectionId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
