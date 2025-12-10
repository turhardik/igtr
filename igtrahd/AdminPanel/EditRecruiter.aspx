<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="EditRecruiter.aspx.cs" Inherits="igtrahd.AdminPanel.EditRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2>Edit Recruiter</h2>
<hr />

<div class="form-group">
    <label>Recruiter Name</label>
    <asp:TextBox ID="txtRecruiterName" CssClass="form-control" runat="server"></asp:TextBox>
</div>

<div class="form-group">
    <label>Is Active</label><br />
    <asp:CheckBox ID="chkIsActive" runat="server" />
</div>

<br />

<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnUpdate_Click" />
&nbsp;
<asp:HyperLink ID="lnkBack" NavigateUrl="RecruiterList.aspx" Text="Back to List" CssClass="btn btn-secondary" runat="server" />

</asp:Content>

