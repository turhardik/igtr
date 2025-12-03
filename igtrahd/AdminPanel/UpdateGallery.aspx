<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateGallery.aspx.cs" Inherits="igtrahd.AdminPanel.UpdateGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6">
        Gallery Title:<asp:TextBox ID="txtGalName" runat="server" CssClass="form-control"></asp:TextBox>
        <br />
        Upload Main Thumbnail:<asp:FileUpload ID="FImgmain" runat="server" CssClass="form-control" /><br />
        Upload Images:<asp:FileUpload ID="FImg" Multiple="Multiple" runat="server" CssClass="form-control" /><br />
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-default" OnClick="btnSave_Click" />
    </div>
    <div class="col-md-6">

        <h3>Gallery main Image</h3>
        <div class="col-md-8">
            <asp:Image ID="ImgFImg" runat="server" AlternateText="main thumbnail" class="img-thumbnail"></asp:Image>
        </div>

    </div>
    <div class="clearfix"></div>
    <div class="col-md-12">
        <h3>Gallery images</h3>
        <asp:Repeater ID="rptImages" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <div class="col-md-3">
                    <center>
                        <a href="<%="../Gallery"%>/<%#Eval("GalleryID") %>/<%#Eval("ImageName")%>">
                            <div class="picture">
                                <img src="<%="../Gallery"%>/<%#Eval("GalleryID") %>/<%#Eval("ImageName")%>" alt="Image" class="img-thumbnail" />
                            </div>
                        </a>
                        <br />

                        <asp:ImageButton ID="imgDelete" ImageUrl="~/images/delete-icon1.jpg" CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="imgDelete_Click" />
                    </center>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
    <div class="col-md-6">
        <asp:Label ID="lbSuccess" runat="server" Text=""></asp:Label>
    </div>

    <div class="col-md-12">
    </div>
    <asp:HiddenField ID="hdGalleryID" runat="server" />
    <asp:HiddenField ID="hdMainImage" runat="server" />
</asp:Content>
