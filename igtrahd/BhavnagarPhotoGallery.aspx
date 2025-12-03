<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="BhavnagarPhotoGallery.aspx.cs" Inherits="igtrahd.BhavnagarPhotoGallery" %>
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
    .fancybox-title{text-align: center;font-size: 18px;}
    .img_title{
      text-align: center;
      font-size: 16px;
      padding: 5px 0 5px 0;
      font-weight: 600;
    }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="panel">
    <div class="panel-heading">
      <h3 class="panel-title">EC Bhavnagar Photo Gallery</h3>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="mix-grid">
          <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
            <div class="mix-inner" style="border: 1px solid #ddd;padding: 1px;">
            <img src="images/BUILDING.jpeg" alt="Short Term Course" class="img-responsive" style="width:100%;" />
            <div class="img_title">BUILDING</div>
            <div class="mix-details">
                <a data-rel="fancybox-button" href="images/BUILDING.jpeg" class="mix-preview fancybox-button" title="BUILDING" data-caption="BUILDING"><i class="fa fa-search"></i></a>
            </div>
            </div>
           </div>
        </div> 
      </div>
      <div class="col-md-6">
        <div class="mix-grid">
          <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
            <div class="mix-inner" style="border: 1px solid #ddd;padding: 1px;">
            <img src="images/CMM-LAB.jpeg" alt="Short Term Course" class="img-responsive" style="height: 280px;width:100%;" />
            <div class="img_title">CMM LAB</div>
            <div class="mix-details">
                <a data-rel="fancybox-button" href="images/CMM-LAB.jpeg" class="mix-preview fancybox-button" title="CMM LAB" data-caption="CMM LAB"><i class="fa fa-search"></i></a>
            </div>
            </div>
           </div>
        </div>        
      </div>
      <div class="col-md-6">
        <div class="mix-grid">
          <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
            <div class="mix-inner" style="border: 1px solid #ddd;padding: 1px;">
            <img src="images/CNC-MACHINE-AND-CONSOLE-LAB.jpeg" alt="Short Term Course" class="img-responsive" style="width:100%;" />
            <div class="img_title">CNC MACHINE AND CONSOLE LAB</div>
            <div class="mix-details">
                <a data-rel="fancybox-button" href="images/CNC-MACHINE-AND-CONSOLE-LAB.jpeg" class="mix-preview fancybox-button" title="CNC MACHINE AND CONSOLE LAB" data-caption="CNC MACHINE AND CONSOLE LAB"><i class="fa fa-search"></i></a>
            </div>
            </div>
           </div>
        </div>        
      </div>
      <div class="col-md-6">
        <div class="mix-grid">
          <div class="mix category_1 mix_all" style="display: block; opacity: 1; ">
            <div class="mix-inner" style="border: 1px solid #ddd;padding: 1px;">
            <img src="images/WORKSHOP.jpeg" alt="Short Term Course" class="img-responsive" style="width:100%;" />
            <div class="img_title">WORKSHOP</div>
            <div class="mix-details">
                <a data-rel="fancybox-button" href="images/WORKSHOP.jpeg" class="mix-preview fancybox-button" title="WORKSHOP" data-caption="WORKSHOP"><i class="fa fa-search"></i></a>
            </div>
            </div>
           </div>
        </div>        
      </div>
    </div>
  </div>
</asp:Content>
