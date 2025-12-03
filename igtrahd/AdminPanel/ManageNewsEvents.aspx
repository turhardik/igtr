<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ManageNewsEvents.aspx.cs" Inherits="igtrahd.AdminPanel.ManageNewsEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="col-md-6">
        Title text:<asp:TextBox ID="txtMain" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Text="Upload File" Value="FILE" Selected="True"></asp:ListItem>
            <asp:ListItem Text="USE URL" Value="URL"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
         Upload File:<asp:FileUpload ID="FIFile" runat="server" CssClass="form-control" /><br />
        or <br />
        Enter URL:<asp:TextBox ID="txtURL" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnSave_Click" />
    </div>
    <div class="col-md-6">
    <a href="ListNewsEvents.aspx" class="btn btn-success" style="width:80%;" >View List</a>
    </div>
      
</asp:Content>
