<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="EditRTI.aspx.cs" Inherits="igtrahd.AdminPanel.EditRTI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><asp:Label ID="lblTitle" runat="server" Text="Add RTI"></asp:Label></h2>

<div class="form-group">
    <label>Title</label>
    <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
</div>

<div class="form-group">
    <label>Upload PDF</label>
    <asp:FileUpload ID="fuPDF" runat="server" CssClass="form-control" />
</div>

<div class="form-group">
    <label>OR External Link</label>
    <asp:TextBox ID="txtLink" CssClass="form-control" runat="server"></asp:TextBox>
</div>

<div class="form-group">
    <label>Is Active</label>
    <asp:CheckBox ID="chkIsActive" runat="server" />
</div>

<asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />
<a href="RTIList.aspx" class="btn btn-secondary">Back</a>

</asp:Content>
