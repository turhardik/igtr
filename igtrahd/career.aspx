<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="igtrahd.career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>	
		.flash-button{	
			background:blue;	
			padding:5px 10px;	
			color:#fff;	
			border:none;	
			border-radius:5px;	
			animation-name: flash;	
			animation-duration: 1s;	
			animation-timing-function: linear;	
			animation-iteration-count: infinite;	
			//Firefox 1+	
			-webkit-animation-name: flash;	
			-webkit-animation-duration: 1s;	
			-webkit-animation-timing-function: linear;	
			-webkit-animation-iteration-count: infinite;	
			//Safari 3-4	
			-moz-animation-name: flash;	
			-moz-animation-duration: 1s;	
			-moz-animation-timing-function: linear;	
			-moz-animation-iteration-count: infinite;	
		}	
		@keyframes flash {  	
			0% { opacity: 1.0; }	
			50% { opacity: 0.5; }	
			100% { opacity: 1.0; }	
		}	
		//Firefox 1+	
		@-webkit-keyframes flash {  	
			0% { opacity: 1.0; }	
			50% { opacity: 0.5; }	
			100% { opacity: 1.0; }	
		}	
		//Safari 3-4	
		@-moz-keyframes flash {  	
			0% { opacity: 1.0; }	
			50% { opacity: 0.5; }	
			100% { opacity: 1.0; }	
		}	
		.paddtop15{	
			padding-top: 15px;	
		}		
	</style>
    
       <!-- class="col-md-12">	
		   <h2 style="text-align:center; font-size:24pt;">Vacancy of 2021<a href="../NewsEvents/192/Advertisement &amp; Bio Data Form.pdf" class="hide" target="_blank"></a></h2>	
		   <a href="mailto:admin@igtrahd.com">	
		  	<img src="images/Vacancies-for-Apprentice.jpeg" alt="Vacancies-for-Apprentice-IGTR-Ahmedabad" class="img-thumbnail" />	
		   </a>	
	  </div>-->	
		
 		<%--<div class="col-md-12 paddtop15">	
		   <h3><a href="Download/Combined-Application-proforma-for-GM&PD.docx" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Application form word)</a></h3>	
			<h3><a href="Download/Combined-Application-proforma-for-GM&PD.pdf" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Application form pdf)</a></h3>	
			<h3><a href="Download/Combined-full-Advt.-for-GM-&-PD.pdf" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Full Advt)</a></h3>	
	  </div>--%>
		
	<!-- <div class="row" style="display:none;">
        <div class="col-md-10">
            <p><strong>The Tool Room is looking for following person in the respective fields and invites applications for filling up the following positions on contract basis for 5 years at a time to be extended subject to review of performance till superannuation</strong></p>
        </div>
        <div class="col-md-2"><a href="http://adobe.com/acrobat" target="_blank">
            <img src="images/acrobat.gif" class="img-responsive" border="0" /></a></div>

    </div>
    <table class="table table-responsive table-hover" style="border-bottom: 1px solid #ddd; border-right: 1px solid #ddd; border-left: 1px solid #ddd;display:none;">
        <tbody>

            <tr>
                <td><strong>File Name </strong></td>
                <td class="text-center"><strong>Downloads</strong></td>
            </tr>
            <tr>
                <td>Application Form </td>

                <td>
                    <img src="images/pdf.png" width="16" height="16" />&nbsp;<a href="download/igtr-advertisement.pdf" target="_blank"><strong>PDF format</strong></a>
                </td>
                
            </tr>
           


        </tbody>
    </table> -->
</asp:Content>
