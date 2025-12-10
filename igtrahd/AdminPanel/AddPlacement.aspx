<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="AddPlacement.aspx.cs" Inherits="igtrahd.AdminPanel.AddPlacement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <h3>Add Placement Details</h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

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
    <label>Active?</label>
    <asp:CheckBox ID="chkActive" runat="server" />
</div>

<asp:Button ID="btnSave" Text="Save" CssClass="btn btn-success" runat="server" OnClick="btnSave_Click" />
<asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-default" runat="server" PostBackUrl="PlacementList.aspx" />
    <br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    
</asp:Content>
