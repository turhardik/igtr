<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="AddRecruiter.aspx.cs" Inherits="igtrahd.AdminPanel.AddRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add Recruiter</h2>

<label>Recruiter Name</label>
<asp:TextBox ID="txtRecruiterName" runat="server" CssClass="form-control"></asp:TextBox>

<br />

<label>Is Active</label>
<asp:CheckBox ID="chkIsActive" runat="server" Checked="True" />

<br /><br />

<asp:Button ID="btnSave" Text="Save" CssClass="btn btn-success" runat="server" OnClick="btnSave_Click" />

</asp:Content>
