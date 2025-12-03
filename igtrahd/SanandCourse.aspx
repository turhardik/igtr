<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="SanandCourse.aspx.cs" Inherits="igtrahd.SanandCourse" %>
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
    .mix-grid .mix a.mix-preview {
      left: 46%;
      top: 44%;
      margin-left: 5px;
    }
    .mAll{margin: 40px 0 15px 0;}
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">Sanand Medium and Short Term Course</h3>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel">
          <div class="panel-heading" style="background: #2d3490;">
            <h3 class="panel-title">Medium Term Course</h3>
          </div>
          <div class="mix-grid">
            <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
              <div class="mix-inner">
              <img src="images/MTC-Sanand.jpg" alt="Medium Term Course" class="img-responsive" style="width: 100%;" />
              <div class="mix-details">
                  <a data-rel="fancybox-button" href="images/MTC-Sanand.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
              </div>
              </div>
             </div>
          </div>         
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel">
          <div class="panel-heading" style="background: #2d3490;">
            <h3 class="panel-title">Short Term Course</h3>
          </div>
          <div class="mix-grid">
            <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
              <div class="mix-inner">
              <img src="images/STC-Sanand.jpg" alt="Short Term Course" class="img-responsive" style="width: 100%;" />
              <div class="mix-details">
                  <a data-rel="fancybox-button" href="images/STC-Sanand.jpg" class="mix-preview fancybox-button"><i class="fa fa-search"></i></a>
              </div>
              </div>
             </div>
          </div> 

          <h3 class="mAll"><strong>Office Address</strong></h3>
          <p><strong>Indo German Tool Room (IGTR) Extension Centre, Sanand</strong></p>
          <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
          <p>MT/1, Road-B, GIDC, Near Charal Village, Opp. Dana Company, Sanand-II, Ahmedabad-382210. Gujarat.</p>
          <p><strong>E-mail</strong>: <a href="mailto:igtrsanand@gmail.com">igtrsanand@gmail.com</a></p>
          <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
          <p><strong>Admission Coordinator</strong>: <a href="tel:8140394528">8140394528</a>, <a href="tel:9099041986">9099041986</a></p>

        </div>
      </div>
    </div>

  </div>
</asp:Content>
