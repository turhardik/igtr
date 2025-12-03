<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="igtrahd.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12">
        <h1>Gallery</h1>
        <div class="content-page">
            
              
                <div class="row mix-grid thumbnails">

                    <asp:Repeater ID="Repeater1" runat="server" >
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1;">
                                <div class="mix-inner">
                                 <img alt="" src="<%="Gallery"%>/<%#Eval("ID") %>/<%#Eval("MainImage")%>" class="img-responsive" />
                                    <div class="mix-details">
                                       
                                        <a href="sub-gallery.aspx?abc=<%#Eval("ID")%>" class="mix-link"><i class="fa fa-link">View</i></a>

                                    </div> 
                                </div>
                                 <a href="sub-gallery.aspx?abc=<%#Eval("ID")%>"><h4 style="text-align:center; height:50px;"><%#Eval("Name")%></h4></a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>


                </div>
            
        </div>
    </div>

</asp:Content>
