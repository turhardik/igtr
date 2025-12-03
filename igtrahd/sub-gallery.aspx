<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="sub-gallery.aspx.cs" Inherits="igtrahd.sub_gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12 col-sm-12">
            <h1><%#Eval("Name")%> Gallery</h1>
            <div class="content-page">
                <div >
                              <div class="row mix-grid thumbnails">
                                  
                                    <asp:Repeater ID="Repeater1" runat="server" >
                        <ItemTemplate>
                                  
                                  <div class="col-md-4 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1; ">
                                    <div class="mix-inner">
                                       <img alt="" src="<%="Gallery"%>/<%#Eval("ID") %>/<%#Eval("ImageName")%>" class="img-responsive"/>
                                       <div class="mix-details">
                                         
                                          
                                         <a data-rel="fancybox-button" title="Project Name" href="<%="Gallery"%>/<%#Eval("ID") %>/<%#Eval("ImageName")%>" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
                                       </div>           
                                    </div>                       
                                  </div>
                                  
                                </ItemTemplate>
                    </asp:Repeater>
                                
                              </div>
              </div>
            </div>
          </div>
</asp:Content>
