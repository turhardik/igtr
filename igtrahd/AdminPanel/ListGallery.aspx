<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListGallery.aspx.cs" Inherits="igtrahd.AdminPanel.ListGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h3 style="border-bottom:solid 1px #4b4b4b;"> List Gallery</h3>
   
  <br />
      <div class="row mix-grid thumbnails">

        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
            <ItemTemplate>
               
                                  <div class="col-md-4 col-sm-4 mix category_1 mix_all" style="display: block; opacity: 1; margin-bottom:10px; border-bottom:2px solid;">
                                    <div class="mix-inner">
                                          <asp:LinkButton ID="lnkEdit" runat="server" CommandArgument='<%#Eval("ID")%>' CssClass="left">Edit</asp:LinkButton>&nbsp;<strong>|</strong>&nbsp;
                                         <asp:ImageButton ID="imgDelete" ImageUrl="~/images/delete-icon1.jpg" CommandArgument='<%#Eval("ID")%>' runat="server" OnClick="imgDelete_Click" CssClass="right" />
                                       <img src="<%="../Gallery"%>/<%#Eval("ID") %>/<%#Eval("MainImage")%>" alt="Image" class="img-thumbnail" />
                                       <div class="mix-details">
                                         <h4  style="height:60px;"><%#Eval("Name")%></h4>        
                                       
                                       </div>   
                                         
                                    </div>                       
                                  </div>
                                
                                
                             
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
