<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="managegallery.aspx.cs" Inherits="igtrahd.AdminPanel.managegallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        Gallery Title:<asp:TextBox ID="txtGalName" runat="server" CssClass="form-control"></asp:TextBox><br />
        Upload Main Thumbnail:(Max. 100KB) <asp:FileUpload ID="FImgmain" runat="server" CssClass="form-control" /><br />
        Upload Images: (Max. 100KB /Image) <asp:FileUpload ID="FImg" Multiple="Multiple" runat="server" CssClass="form-control" /><br />
        <asp:Button ID="btnSave" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="btnSave_Click" /><br />
        <br />
        <asp:Label ID="lbSucess" runat="server" Text="" ></asp:Label>
    </p>

     <div class="col-md-6">
    <a href="ListGallery.aspx" class="btn btn-success" style="width:80%;" >View Gallery</a>
    </div>
</asp:Content>
