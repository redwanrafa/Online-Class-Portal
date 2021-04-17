<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCourse.aspx.cs" Inherits="ATP2.ViewCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

 
<body>
    <form id="form1" runat="server" >
    <table>
        <tr><td>Teacher's Name</td><td>
            <asp:Label ID="LabelTeacheName" runat="server" Text="Label"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
            </td></tr>
        <tr><td>Techer's Email</td><td>
            <asp:Label ID="LabelTeacherEmail" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Course Title</td><td> <asp:Label ID="LabelCourseName" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Course Detail</td>
            <td><asp:Label ID="LabelCourseDetail" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Section Name </td><td>
            <asp:Label ID="LabelSectionName" runat="server" Text="Label"></asp:Label></td></tr>
        <tr><td>Start Time </td><td>
            <asp:Label ID="LabelStartDate" runat="server" Text="Label"></asp:Label></td></tr>
         <tr><td>End Time </td><td>
            <asp:Label ID="LabelEndDate" runat="server" Text="Label"></asp:Label></td></tr>
    </table>
    </form>
</body>
</html>
