<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher'sHome.aspx.cs" Inherits="ATP2.Teacher_sHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" >
     <h3>Add Courses</h3>
    <table>
       <tr>
           <td>Title</td>
           <td><asp:TextBox ID="TextBoxTitle" runat="server" OnTextChanged="TextBoxTitle_TextChanged"></asp:TextBox></td>

       </tr>
        <tr>
           <td>Details</td>
           <td><asp:TextBox ID="TextBoxDetail" runat="server"></asp:TextBox></td>
       </tr>
       <tr>
                <td></td>
                <td><asp:Button ID="ButtonAdd" runat="server" Text="Add" OnClick="ButtonAdd_Click" /></td>
            </tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="false" Readonly="True" SortExpression="id" />
            <asp:BoundField DataField="TiTle" HeaderText="Title" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
        </Columns></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineClassroomConnectionString2 %>" SelectCommand="SELECT [ID],[Title], [Details]  FROM [Courses] WHERE ([TeacherId] = @TeacherId)" UpdateCommand="Update [Courses] Set [Title]=@Title, [Details]=@Details where [id]=@id" >
            <SelectParameters>
                <asp:SessionParameter DefaultValue="0" Name="TeacherId" SessionField="TeacherId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:LinkButton ID="LinkButtonLogout" runat="server" OnClick="LinkButtonLogout_Click">Logout</asp:LinkButton>

        </form>
   
    
</body>
</html>
