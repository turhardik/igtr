<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="BhavnagarApplyNow.aspx.cs" Inherits="igtrahd.BhavnagarApplyNow" %>
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
    .m30{margin: 20px 0 20px 0;}
    a.btn:hover{
      background-color: #F65314;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">Bhavnagar Medium Term Course</h3>
    </div>
    <div>
      <img src="images/MTC-Bhavnagar.jpg" alt="Medium Term Course" class="img-responsive" style="width: 100%;" />
      <div class="m30 text-center">
        <a href="https://forms.gle/u2QJW4nbEDDujEXf8" target="_blank" class="btn btn-primary btn-lg">Apply Now</a>
      </div> 
    </div>
  </div>
  <div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">Bhavnagar Short Term Course</h3>
    </div>
    <div>
      <img src="images/STC-Bhavnagar.jpg" alt="Short Term Course" class="img-responsive" style="width: 100%;" />
      <div class="m30 text-center">
        <a href="https://forms.gle/dCzx6ahhLez9rq2UA" target="_blank" class="btn btn-primary btn-lg">Apply Now</a>
      </div> 
    </div>

  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="panel">
        <p>Reservation as per Govt. of India rules. <strong>(for SC/ST candidates no fee will be charged for NSQF approved courses.</strong></p>
        <p><strong>How to apply</strong>: Click on Apply Now button and fill the required details for registration. For more details, contact on <strong>9265539450, 6356649929, 9099041986.</strong></p>
      </div>
    </div>
  </div>

</asp:Content>
