<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="extension-centre.aspx.cs" Inherits="igtrahd.extension_centre" %>
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
    .mr20{margin-right: 20px;}
    .mt20{margin-top: 20px;}
    a:hover{color:#F65314;}
    a.btn:hover{
      background-color: #F65314;
    }
    /*Accrodian Tab CSS*/
    .tab-container {
        width: 100%;
        margin: 20px 0;
    }
    .tab-header {
        display: flex;
        border-bottom: 2px solid #ccc;
        margin-bottom: 0;
    }
    .tab-button {
        padding: 10px 20px;
        border: none;
        background: #e9e9e9;
        cursor: pointer;
        font-size: 15px;
        border-right: 1px solid #ccc;
    }
    .tab-button.active {
        background: #b32424;   /* Red color like your design */
        color: #fff;
        font-weight: 600;
    }
    .tab-button:last-child {
        border-right: 0;
    }
    .tab-panel {
        background: #fafafa;
        border: 1px solid #ddd;
        padding: 20px;
        border-top: none;
    }
    .tab-content {
        padding: 0px;
    }
    .tab-content {
        display: none;
    }
    .tab-content.active {
        display: block;
    }
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--<div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">Extension Centre</h3>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="panel">
          <div class="panel-heading" style="background: #2d3490;">
            <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Bhavnagar</h3>
          </div>
          <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
          <p>Plot No. 383, Chitra GIDC, Nr. Vishwarkarma Estate, Bhavnagar-364004. Gujarat.</p>
          <p><strong>E-mail</strong>: <a href="mailto:igtrbhavnagar@gmail.com">igtrbhavnagar@gmail.com</a></p>
          <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
          <p><strong>Admission Coordinator</strong>: <a href="tel:9265539450">9265539450</a>, <a href="tel:9099041986">9099041986</a></p>          
          <div class="mt20">
            <a href="BhavnagarCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
            <a href="BhavnagarApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
            <a href="download/EC-Bhavnagar-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
            <a href="BhavnagarPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="panel">
          <div class="panel-heading" style="background: #2d3490;">
            <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Sanand</h3>
          </div>
          <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
          <p>MT/1, Road-B, GIDC, Near Charal Village, Opp. Dana Company, Sanand-II, Ahmedabad-382210. Gujarat.</p>
          <p><strong>E-mail</strong>: <a href="mailto:igtrsanand@gmail.com">igtrsanand@gmail.com</a></p>
          <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
          <p><strong>Admission Coordinator</strong>: <a href="tel:8140394528">8140394528</a>, <a href="tel:9099041986">9099041986</a></p>          
          <div class="mt20">
            <a href="SanandCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
            <a href="SanandApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
            <a href="download/EC-Sanand-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
            <a href="SanandPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
          </div>
        </div>
      </div>
    </div>
  </div>-->

<div class="tab-container">
    <div class="tab-header">
        <button type="button" class="tab-button active" data-tab="tab1">Extension Centre</button>
        <button type="button" class="tab-button" data-tab="tab2">Sub Extension Centre</button>
    </div>

    <div class="tab-panel">
        <!-- TAB 1 -->
        <div id="tab1" class="tab-content active">
            <div class="panel">
              <div class="panel-heading" style="background: #2d3490;">
                <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Bhavnagar</h3>
              </div>
              <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
              <p>Plot No. 383, Chitra GIDC, Nr. Vishwarkarma Estate, Bhavnagar-364004. Gujarat.</p>
              <p><strong>E-mail</strong>: <a href="mailto:igtrbhavnagar@gmail.com">igtrbhavnagar@gmail.com</a></p>
              <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
              <p><strong>Admission Coordinator</strong>: <a href="tel:9265539450">9265539450</a>, <a href="tel:9099041986">9099041986</a></p>          
              <div class="mt20">
                <a href="BhavnagarCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
                <a href="BhavnagarApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
                <a href="download/EC-Bhavnagar-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
                <a href="BhavnagarPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
              </div>
            </div>
             <div class="panel">
              <div class="panel-heading" style="background: #2d3490;">
                <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Sanand</h3>
              </div>
              <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
              <p>MT/1, Road-B, GIDC, Near Charal Village, Opp. Dana Company, Sanand-II, Ahmedabad-382210. Gujarat.</p>
              <p><strong>E-mail</strong>: <a href="mailto:igtrsanand@gmail.com">igtrsanand@gmail.com</a></p>
              <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
              <p><strong>Admission Coordinator</strong>: <a href="tel:8140394528">8140394528</a>, <a href="tel:9099041986">9099041986</a></p>          
              <div class="mt20">
                <a href="SanandCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
                <a href="SanandApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
                <a href="download/EC-Sanand-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
                <a href="SanandPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
              </div>
            </div>
        </div>

        <!-- TAB 2 -->
        <div id="tab2" class="tab-content">
            <div class="panel">
              <div class="panel-heading" style="background: #2d3490;">
                <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Bhavnagar</h3>
              </div>
              <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
              <p>Plot No. 383, Chitra GIDC, Nr. Vishwarkarma Estate, Bhavnagar-364004. Gujarat.</p>
              <p><strong>E-mail</strong>: <a href="mailto:igtrbhavnagar@gmail.com">igtrbhavnagar@gmail.com</a></p>
              <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
              <p><strong>Admission Coordinator</strong>: <a href="tel:9265539450">9265539450</a>, <a href="tel:9099041986">9099041986</a></p>          
              <div class="mt20">
                <a href="BhavnagarCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
                <a href="BhavnagarApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
                <a href="download/EC-Bhavnagar-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
                <a href="BhavnagarPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
              </div>
            </div>
             <div class="panel">
              <div class="panel-heading" style="background: #2d3490;">
                <h3 class="panel-title">Indo German Tool Room (IGTR) Extension Centre, Sanand</h3>
              </div>
              <p>(Ministry of Micro, Small and Medium Enterprises, Government of India)</p>
              <p>MT/1, Road-B, GIDC, Near Charal Village, Opp. Dana Company, Sanand-II, Ahmedabad-382210. Gujarat.</p>
              <p><strong>E-mail</strong>: <a href="mailto:igtrsanand@gmail.com">igtrsanand@gmail.com</a></p>
              <p><strong>Training In-Charge</strong>: <a href="tel:6356649929">6356649929</a>,</p>
              <p><strong>Admission Coordinator</strong>: <a href="tel:8140394528">8140394528</a>, <a href="tel:9099041986">9099041986</a></p>          
              <div class="mt20">
                <a href="SanandCourse.aspx" class="btn btn-primary btn-sm mr20">View All Course Details</a>
                <a href="SanandApplyNow.aspx" class="btn btn-primary btn-sm mr20">Apply Now</a>
                <a href="download/EC-Sanand-Facility.pdf" target="_blank" class="btn btn-primary btn-sm mr20">Facility Available</a>
                <a href="SanandPhotoGallery.aspx" class="btn btn-primary btn-sm">Photo Gallery</a>
              </div>
            </div>
        </div>
    </div>
</div>
  
<script>
  document.querySelectorAll(".tab-button").forEach(btn => {
    btn.addEventListener("click", function () {

      // remove active from buttons
      document.querySelectorAll(".tab-button").forEach(b => b.classList.remove("active"));

      // hide all contents
      document.querySelectorAll(".tab-content").forEach(c => c.classList.remove("active"));

      // activate clicked
      this.classList.add("active");
      document.getElementById(this.dataset.tab).classList.add("active");
    });
  });
</script>

</asp:Content>
