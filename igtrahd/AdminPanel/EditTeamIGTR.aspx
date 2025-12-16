<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="EditTeamIGTR.aspx.cs" Inherits="igtrahd.AdminPanel.EditTeamIGTR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hfID" runat="server" />

    <asp:TextBox ID="txtName" runat="server" />
    <asp:TextBox ID="txtDesignation" runat="server" />
    <asp:TextBox ID="txtAddress" runat="server" />
    <asp:TextBox ID="txtPhone" runat="server" />
    <asp:TextBox ID="txtEmail" runat="server" />
    <asp:FileUpload ID="fuPhoto" runat="server" />
    <asp:CheckBox ID="chkActive" runat="server" Checked="true" />

    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />

    <hr />

    <asp:Repeater ID="rptAdminTeam" runat="server">
<ItemTemplate>
    <%# Eval("Name") %>
    <a href='EditTeamIGTR.aspx?id=<%# Eval("ID") %>'>Edit</a>
    <a href='DeleteTeamIGTR.aspx?id=<%# Eval("ID") %>'>Delete</a>
</ItemTemplate>
</asp:Repeater>

</asp:Content>
