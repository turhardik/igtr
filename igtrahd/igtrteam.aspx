<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="igtrteam.aspx.cs" Inherits="igtrahd.igtrteam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .panel {
      padding: 15px;
      margin-bottom: 20px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 4px;
      -webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.05);
      box-shadow: 0 1px 1px rgba(0,0,0,0.05);
    }
    .panel-heading {
      padding: 10px 15px;
      margin: -15px -15px 15px;
      border-bottom: 1px solid #ddd;
      border-top-right-radius: 3px;
      border-top-left-radius: 3px;
    }
    .panel-heading {
      background: #a82326;
      color: #FFFFFF;
    }
    .panel-title {
      margin-top: 0;
      margin-bottom: 0;
      font-size: 17.5px;
      font-weight: 500;
    }
    .feature .longtermtable td {
      border: 1px solid #D0D0D0;
      padding: 5px;
    }
    .feature img {margin: 0 0 20px;}
    .table-responsive {
        width: 100%;
        overflow-x: auto;
        -webkit-overflow-scrolling: touch;
    }
    .table-responsive table {
        width: 100%;
        border-collapse: collapse;
        min-width: 600px; /* Force horizontal scroll on mobile */
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">Team IGTR</h3>
    </div>
    <div class="row">
      <div class="col-md-12 feature table-responsive">        
        <table cellpadding="4" cellspacing="1" width="100%" class="longtermtable">
          <tbody>
	        <tr>
	          <td style="color:#FFFFFF; font-weight:bold; background-color: #2d3490; vertical-align: middle;width:auto;">SL. No </td>
	          <td style="color:#FFFFFF; font-weight:bold; background-color: #2d3490; vertical-align: middle;width:auto;">Photograph</td>
	          <td style="color:#FFFFFF; font-weight:bold; background-color: #2d3490; vertical-align: middle;width:100%;">Contact Person with <strong>Designation</strong></td>
	          <td style="color:#FFFFFF; font-weight:bold; background-color: #2d3490; vertical-align: middle;width:auto;">Address</td>
	          <td style="color:#FFFFFF; font-weight:bold; background-color: #2d3490; vertical-align: middle;width:auto;">Contact Details </td>
	        </tr>
	        <tr>
	          <td style="background-color: #ffffff; text-align: center; vertical-align: top;">1</td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;"><img src="https://www.cttc.gov.in/images/lr.jpg" width="120" height="156" /></td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;"> <strong>Mr. L. Rajasekhar</strong><br/>
	          General Manager </td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;">B-36, Chandaka Ind. Area, Patia,Bhubaneswar-751024 </td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;">Ph - 0674-2654702
		        <br/>
              rajasekhar.lingam@gmail.com</td>
	        </tr>
	        <tr>
	          <td style="background-color: #ffffff; text-align: center; vertical-align: top;">2</td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;"><img src="https://www.cttc.gov.in/images/kmr.jpg" width="120" height="157" /></td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;"> <strong>Mr. Rajan K.M.</strong> <br/>
		        Senior Manager (Training)</td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;">B-36, Chandaka Ind. Area, Patia,Bhubaneswar-751024</td>
	          <td style="background-color: #ffffff; text-align: left; vertical-align: top;">Ph - 9337118456 <br/>
		        rajankm07@gmail.com</td>
	        </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
