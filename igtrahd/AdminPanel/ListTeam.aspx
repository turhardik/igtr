<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListTeam.aspx.cs" Inherits="igtrahd.AdminPanel.ListTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="rptAdminTeam" runat="server">
<ItemTemplate>
    <%# Eval("Name") %>
    <a href='EditTeamIGTR.aspx?id=<%# Eval("ID") %>'>Edit</a>
    <a href='DeleteTeamIGTR.aspx?id=<%# Eval("ID") %>'>Delete</a>
</ItemTemplate>
</asp:Repeater>
</asp:Content>
