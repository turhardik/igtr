<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="lalaland.AdminPanel.ResetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="col-md-12">
        <div class="col-md-3">
            New Password :
            <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>
          <div class="col-md-3">
            Retype New Password :
              
               <asp:TextBox ID="txtreNewPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
        </div>
        
        <div class="col-md-3" style="padding-top: 20px;">
            <asp:Button ID="btnSubmit" runat="server" Text="Save" OnClick="btnSubmit_Click" CssClass="btn btn-lg btn-primary" />
            <br />
            <asp:Label ID="lbMsg" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
