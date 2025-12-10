<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="EditPlacement.aspx.cs" Inherits="igtrahd.AdminPanel.EditPlacement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Edit Placement Details</h2>
<hr />

<div class="form-group">
    <label>Name</label>
    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<div class="form-group">
    <label>Contact No</label>
    <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<div class="form-group">
    <label>Email</label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<div class="form-group">
    <label>Active Status</label>
    <asp:CheckBox ID="chkIsActive" runat="server" />
</div>

<asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
<br /><br />

<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success" OnClick="btnUpdate_Click" />
&nbsp;
<asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" PostBackUrl="PlacementList.aspx" />

</asp:Content>
