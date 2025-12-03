<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="student-registration-form.aspx.cs" Inherits="igtrahd.student_registration_form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="service-box-heading">
        <h2>Student Registration Form</h2>
    </div>
    <div class="row">
        <div class="col-md-10">
            <p><strong>IGTR- Course Registration form are available in PDF Format(.pdf) and Word Format(.doc). To view or print the PDF files, Adobe Acrobat </strong></p>
        </div>
        <div class="col-md-2"><a href="http://adobe.com/acrobat" target="_blank">
            <img src="images/acrobat.gif" class="img-responsive" border="0" /></a></div>

    </div>
    <table class="table table-responsive table-hover" style="border-bottom: 1px solid #ddd; border-right: 1px solid #ddd; border-left: 1px solid #ddd;">
        <tbody>

            <tr>
                <td><strong>File Name </strong></td>
                <td colspan="2" class="text-center"><strong>Downloads</strong></td>
            </tr>
            <tr>
                <td>Registration Form </td>

                <td>
                    <img src="images/pdf.png" width="16" height="16" />&nbsp;<a href="download/New-Registration-form.pdf" target="_blank"><strong>PDF format</strong></a>
                </td>
               
            </tr>
           <!-- <tr>
                <td>Registration Form ( Ashram Road )
                </td>
                <td>
                    <img src="images/pdf.png" width="16" height="16" />&nbsp;<a href="download/Registration_form_ahd_ashram_road_new.pdf" target="_blank"><strong>PDF format 13.6 KB</strong></a>
                </td>
                <td>
                    <img src="images/word.png" width="16" height="18" />&nbsp;<a href="download/Registration_form_ahd_ashram_road_new.doc" target="_blank"><strong>Word format 48.0 KB</strong></a>
                </td>
            </tr>
            <tr>
                <td>Registration Form ( Rajkot )
                </td>
                <td>
                    <img src="images/pdf.png" width="16" height="16" />&nbsp;<a href="download/Registration_form_ahd_rajkot_new.pdf" target="_blank"><strong>PDF format 13.4 KB</strong></a>
                </td>
                <td>
                    <img src="images/word.png" width="16" height="18" />&nbsp;<a href="download/Registration_form_ahd_rajkot_new.doc" target="_blank"><strong>Word format 48.0 KB</strong></a>
                </td>
            </tr> -->


        </tbody>
    </table>
</asp:Content>
