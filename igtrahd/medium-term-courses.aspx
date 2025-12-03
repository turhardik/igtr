<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="medium-term-courses.aspx.cs" Inherits="igtrahd.medium_term_courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
  .mix-grid .mix a.mix-preview {
    left: 46%;
    top: 44%;
    margin-left: 5px;
  }
  </style>
                    <div class="service-box-heading">
                        <h2>Medium Term Courses</h2>
                    </div>
                    <table class="table table-responsive table-hover" style="border-bottom: 1px solid #ddd;
                        border-right: 1px solid #ddd; border-left: 1px solid #ddd;">
                        <tbody>
                            <tr>
                                <td>
                                    <div class="mix-grid">
                                    <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
                                      <div class="mix-inner">
                                      <img src="images/Medium-Term-Courses-New.jpg" alt="Medium-Term-Courses-New" class="img-responsive" style="width: 100%;" />
                                      <div class="mix-details">
                                         <a data-rel="fancybox-button" href="images/Medium-Term-Courses-New.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
                                      </div>
                                      </div>
                                     </div>
                                    </div>
                                     <%--<a href="download/IGT-Calendar-(Combined).pdf" target="_blank" class="style1">
                                        <h4>
                                            Prospectus of Medium &amp; Short Term Courses click here for detail </h4>
                                    </a>--%>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                
</asp:Content>
