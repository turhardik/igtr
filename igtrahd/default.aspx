<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="igtrahd._default" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <script src="Scripts/scrollMove.js"></script>
    <style>
        .items {
            white-space: nowrap;
            margin-bottom: 0;
            overflow: hidden;
            vertical-align: middle;
        }

        .item {
            display: inline-block;
            padding: 0;
            float: none;
        }

        .img-responsive {
            width: auto;
        }

        #jquery-script-menu {
            position: fixed;
            height: 20px;
            width: 100%;
            top: 0;
            left: 0;
            border-top: 5px solid #316594;
            background: #fff;
            -moz-box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
            -webkit-box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
            box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.16);
            z-index: 999999;
            padding: 5px 0;
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
        }
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
      .txt_right{
        float: right;
      }
      @media(max-width: 768px){
        .txt_right{
          float: none;
        }
      }
      @media (min-width: 768px){
      .body-slider .carousel-indicators {
        bottom: -38px;
      }
      }
      a:focus{
        color: #ffffff;
      }
    </style>
    <script src="Scripts/jquery-1.12.4.min.js"></script>
    <!-- Start of  Zendesk Widget script -->
<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=cf08c813-666c-4810-b197-a9652a33b01c"> </script>
<!-- End of  Zendesk Widget script -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!--<div class="mix-grid thumbnails">
      <div class="col-md-12 col-sm-12">
          <h3 class="margin-bottom-30"><a href="download/advertisement.pdf" class="flash-button" style="font-weight:600; font-size:21px; padding:5px; line-height:normal;display:block; text-decoration: none" target="_blank"><span><img src="images/new_animated.gif" class="" style="vertical-align: top;" /></span> Advertisement for inviting proposals to establish 14 Technology Centres under PPP mode </a></h3>
      </div>
    </div>
    <div class="clear">&nbsp;<br />&nbsp;</div>-->
     
    <!--<div class="mix-grid thumbnails">
      <div class="col-md-12 col-sm-12 margin-bottom-30">
          <img src="images/harghar.jpg" style="vertical-align: top;" width="100%" />
      </div>
    </div>
    <div class="clear">&nbsp;<br />&nbsp;</div> -->

    <!--<div class="col-md-12 margin-bottom-30">
      <h3><strong>Internship Training-Jan'25 (BE 8th Sem.) & other courses for January 2025</strong></h3>
    </div>-->

    <div class="clear">&nbsp;<br />&nbsp;</div>
    <div class="mix-grid thumbnails">
      <div class="col-md-12 col-sm-12">
          <h3 class="margin-bottom-30"><a class="flash-button" style="font-weight:600; font-size:21px; padding:5px; line-height:normal;display:block; text-decoration: none"><span><img src="images/new_animated.gif" class="" style="vertical-align: top;" /></span> Click on the below advertisement and fill up the link of Google form to apply for the courses </a></h3>
      </div>
    </div>
    <div class="clearfix">&nbsp;<br />&nbsp;</div>

    <div class="col-md-12">
        <div class="page-slider margin-bottom-40 body-slider">
            <div id="carousel-example-generic-home" class="carousel slide carousel-slider">
                <!-- Indicators -->
                <ol class="carousel-indicators carousel-indicators-frontend">
                    <li data-target="#carousel-example-generic-home" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic-home" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic-home" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic-home" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic-home" data-slide-to="4"></li>
                    <!--<li data-target="#carousel-example-generic-home" data-slide-to="5"></li>
                    <li data-target="#carousel-example-generic-home" data-slide-to="6"></li>-->
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item carousel-item-eleven active">
                        <a href="https://forms.gle/2Eq9ssHdRcNWfDAF6" target="_blank"><img src="images/slider/DTE-2025.jpg" alt="DTE 2025" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-thirteen">
                        <a href="https://forms.gle/ZTdysTtvRzkafKpDA" target="_blank"><img src="images/slider/NABARD-AV-2025.jpg" alt="NABARD" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-three">
                        <a href="https://forms.gle/rAfNFrUkcD5JbSw29" target="_blank"><img src="images/slider/NSSH-2025.jpg" alt="NSSH" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-two">
                        <a href="https://forms.gle/BAAsLe2ccfvP4X1t6" target="_blank"><img src="images/slider/ESDP-MSME.jpg" alt="ESDP MSME" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-eight">
                        <a href="https://forms.gle/LkgGndf6qvhSRbSK8" target="_blank"><img src="images/slider/Industrial-Automation.jpg" alt="Industrial Automation" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <!--<div class="item carousel-item-nine">
                        <a href="https://forms.gle/ahFjBj9Sk6cCukVZ8" target="_blank"><img src="images/slider/TECHNICIAN-CNC-MACHINING-New.jpg" alt="Technician-(CNC-Machining)" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-one ">
                        <a href="https://forms.gle/ahFjBj9Sk6cCukVZ8" target="_blank"><img src="images/slider/Asst-Opt-CNC-Milling-New.jpg" alt="Asst-Opt-CNC-Milling" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>-->
                </div>
                <!-- Controls -->
                <a class="left carousel-control carousel-control-shop carousel-control-frontend"
                    href="#carousel-example-generic-home" role="button" data-slide="prev"><i class="fa fa-angle-left"
                        aria-hidden="true"></i></a><a class="right carousel-control carousel-control-shop carousel-control-frontend"
                            href="#carousel-example-generic-home" role="button" data-slide="next"><i class="fa fa-angle-right"
                                aria-hidden="true"></i></a>
            </div>
        </div>
    </div>

    <!--<div class="clearfix">&nbsp;<br />&nbsp;</div>
    <div class="col-md-12 margin-bottom-30">
      <h3><strong>Summer Training & Summer Internship 2024</strong></h3>
    </div>-->
    <div class="clearfix">&nbsp;<br /><br /></div>
    <div class="col-md-12">
        <div class="page-slider margin-bottom-40 body-slider">
            <div id="carousel-example-generic-job-opening" class="carousel slide carousel-slider">
                <!-- Indicators -->
                <ol class="carousel-indicators carousel-indicators-frontend">
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="0" class="active"></li>
                    <!--<li data-target="#carousel-example-generic-job-opening" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="3"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="4"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="5"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="6"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="7"></li>
                    <li data-target="#carousel-example-generic-job-opening" data-slide-to="8"></li>-->
                </ol>
                
                <div class="carousel-inner" role="listbox">
                    <div class="item carousel-item-four active">
                        <a href="https://forms.gle/MJEFWFEfo3TgVtfi6" target="_blank"><img src="images/slider/STC-Nov-25.jpg" alt="STC Nov'25" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div> 
                        </div>
                    </div>
                    <!--<div class="item carousel-item-four">
                        <a href="https://forms.gle/eXTrBcUW4vubrjqc7" target="_blank"><img src="images/slider/Internship-BE-7th-Sem-02-Weeks-New.jpg" alt="Internship-BE-7th-Sem-02-Weeks" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-four">
                        <a href="https://forms.gle/ahFjBj9Sk6cCukVZ8" target="_blank"><img src="images/slider/junior-designer-New.jpeg" alt="junior-designer" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-four">
                        <a href="https://forms.gle/LrUR13EAtqfZSwt3A" target="_blank"><img src="images/slider/3RD-SEM-DIPLOMA-Summer-Internship.jpg" alt="3RD-SEM-DIPLOMA-Summer-Internship" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-seven">
                        <a href="https://forms.gle/3hfqtD9zFxdfTaX67" target="_blank"><img src="images/slider/short-term-skills-New.jpg" alt="short-term-skills" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-nine">
                        <a href="https://forms.gle/b5PrcZaoSFmBtbwh9" target="_blank"><img src="images/slider/NABARD-AV.jpg" alt="NABARD-AV" width="100%" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-ten">
                        <a href="https://forms.gle/b5PrcZaoSFmBtbwh9" target="_blank"><img src="images/slider/Asst-Opt-CNC-Mill-NABARD-New.jpg" alt="Asst-Opt-CNC-Mill-NABARD" width="100%" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-eleven">
                        <a href="https://forms.gle/ahFjBj9Sk6cCukVZ8" target="_blank"><img src="images/slider/TECHNICIAN-(CNC-MACHINING)-New.jpg" alt="TECHNICIAN-(CNC-MACHINING)" width="100%" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>
                    <div class="item carousel-item-twelve">
                        <a href="https://forms.gle/ahFjBj9Sk6cCukVZ8" target="_blank"><img src="images/slider/Senior-Tech-Mecha-May25-New.jpg" alt="Senior-Tech-Mecha-May25" width="100%" /></a>
                        <div class="container">
                            <div class="carousel-position-six"></div>
                        </div>
                    </div>-->
                </div>
                <!--<a class="left carousel-control carousel-control-shop carousel-control-frontend"
                    href="#carousel-example-generic-job-opening" role="button" data-slide="prev"><i class="fa fa-angle-left"
                        aria-hidden="true"></i></a><a class="right carousel-control carousel-control-shop carousel-control-frontend"
                            href="#carousel-example-generic-job-opening" role="button" data-slide="next"><i class="fa fa-angle-right"
                                aria-hidden="true"></i></a>-->
            </div>
        </div>
    </div>

    <div class="clear">&nbsp;<br />&nbsp;</div>
    <%--<div class="mix-grid thumbnails">                
      <div class="col-md-6 col-sm-6">
         <h3><a href="diploma-and-certificate-courses.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Diploma & Certificate Courses After 8th,10th & 12th Pass <span style="float:right;"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>
      <div class="col-md-6 col-sm-6">
         <h3><a href="short-term-summer-training-courses.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Short Term Summer Training Courses <span style="text-align:center;display: block;"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>      
      <div class="col-md-6 col-sm-6">
          <h3><a href="CNC-machinist-for-ITI.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">CNC Machinist for ITI Turner/Fitter/Machinist <span style="float:right;"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>
      <div class="col-md-6 col-sm-6">
          <h3><a href="training-courses-for-industry-employees-entrepreneurs.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Training Courses for Industry Employees & Entrepreneurs <span class="txt_right"><img src="images/Click-here.gif" class="" /></span></a></h3>	
      </div>
      <div class="col-md-6 col-sm-6">
          <h3><a href="medium-term-certificate-course-in-CNC-milling.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Medium Term Certificate Course in CNC Milling after 10th Pass <span class="txt_right"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>
      <div class="col-md-6 col-sm-6">
          <h3><a href="ITI-trades.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">ITI Trades (NCVT/GCVT) <span><img src="images/new_animated.gif" class="" style="vertical-align: top;" /></span> <span style="text-align:center;display: block;"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>
      <div class="col-md-12 col-sm-12">
          <h3><a href="RACHA-course.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">FREE - Room Air Conditioner & Home Appliances (RACHA) course under ESDP scheme <span style="text-align:center;display: block;"><img src="images/Click-here.gif" class="" /></span></a></h3>
      </div>
    </div>--%>

    <div class="col-md-12">	
		  <div class="service-box-heading" style="padding-top: 0;">
      
	 		<!--<h3><a href="NewsEvents/352/DTM CMT.pdf" class="flash-button" style="font-weight:600; font-size:large; padding:5px; line-height:2;">Admission Notice DTM &amp; CMT 2022</a></h3>-->	
			<!--<h3><a href="https://forms.gle/UTFBGN6P9vwUE4uH6" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:2;">Job, Skill &amp; Internship Oriented Courses Jan'23</a></h3>-->	
			<!--<h3><a href="NewsEvents/354/PG_PD_22.pdf" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:2;">Job &amp; Skill Oriented Long Term courses after BE/Diploma</a></h3>-->			 	
			<!--<h3><a href="Download/NOTICE_23-07-2022_DTM-2022_REV1.pdf" class="flash-button" style="font-weight:600; font-size:large; padding:5px; line-height:2;">Revised Notice for Diploma In Tool And Die Making Admission</a></h3>-->	
			<!--<h3><a href="Download/Secretaries_of_all_Ministries_of_GOI.pdf" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:2;">Har ghar tiranga join the moment</a></h3>	
			<h3><a href="https://youtu.be/jXkrrTA3Vck" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:2;">Har Ghar Tiranga Song</a></h3>-->	
        <!--<h3><a href="diploma-and-certificate-courses.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Diploma & Certificate Courses After 8th,10th & 12th Pass</a></h3>	
        <h3><a href="short-term-summer-training-courses.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Short Term Summer Training Courses</a></h3>	
        <h3><a href="free-summer-camp-for-students.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Free Summer Camp for 9th / 10th / 11th & 12th Students</a></h3>	
        <h3><a href="CNC-machinist-for-ITI.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">CNC Machinist for ITI Turner/Fitter/Machinist</a></h3>	
        <h3><a href="training-courses-for-industry-employees-entrepreneurs.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Training Courses for Industry Employees & Entrepreneurs</a></h3>	
        <h3><a href="medium-term-certificate-course-in-CNC-milling.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Medium Term Certificate Course in CNC Milling after 10th Pass</a></h3>
        <h3><a href="long-and-medium-term-courses.aspx" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Long & Medium Term Courses for 8th Pass to Degree Engineers - May-June 2023</a></h3>-->
 
			<%--<h3><a href="Download/Combined-Application-proforma-for-GM&PD.docx" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Application form word)</a></h3>	
			<h3><a href="Download/Combined-Application-proforma-for-GM&PD.pdf" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Application form pdf)</a></h3>	
			<h3><a href="Download/Combined-full-Advt.-for-GM-&-PD.pdf" target="_blank" class="flash-button" style="font-weight:600; font-size:17px; padding:5px; line-height:normal;display:block;">Combined Advertisement for recruitment for the post of General Manager, IGTR Ahmedabad and Principal Director FFDC-Kannauj, last date of receipt of application is 24-01-2023 (Full Advt)</a></h3> --%>
  		</div> 	
	  </div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Training</span>
        </div>
        <a href="training-calendar.aspx"><img src="images/training_thumnail.jpg" class="img-thumbnail" /></a>
        <a href="training-calendar.aspx" class="btn-link">Know More...</a>
    </div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Clients</span>
        </div>
       <a href="default.aspx"> <img src="images/clients_thumbnail.jpg" class="img-thumbnail" /></a>
        <a href="default.aspx" class="btn-link">Know More...</a>
    </div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Consultancy</span>
        </div>
        <a href="consultancy.aspx"><img src="images/consultancy_marketing_thumbnail.jpg" class="img-thumbnail" /></a>
        <a href="consultancy.aspx" class="btn-link">Know More...</a>
    </div>
    <div class="clearfix">&nbsp;<br />
        &nbsp;</div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Gallery</span>
        </div>
        <a href="gallery.aspx" ><img src="images/photo_gallery_thumbnail.jpg" class="img-thumbnail" /></a>
        <a href="gallery.aspx" class="btn-link">Know More...</a>
    </div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Production</span>
        </div>
        <a href="production.aspx"><img src="images/production_thumbnail.jpg" class="img-thumbnail" /></a>
        <a href="production.aspx" class="btn-link">Know More...</a>
    </div>
    <div class="col-md-4 col-sm-4">
        <div class="service-box-heading">
            <span>Registration</span>
        </div>
       <a href="student-registration-form.aspx"> <img src="images/registration_thumbnail.jpg" class="img-thumbnail" /></a>
        <a href="student-registration-form.aspx" class="btn-link">Know More...</a>
    </div>

    <!-- BEGIN CLIENTS -->
    <div class="clearfix">&nbsp;<br />
        &nbsp;
    </div>

    <div class="col-md-12 margin-bottom-40 our-clients">
        <hr />
        <h2><span>Our Clients</span> </h2>
        <div class="col-md-12">
            <ul class="items list-unstyled">
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_03.png" class="img-responsive" />
                </li>
                
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_05.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_07.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_12.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_14.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_17.png" class="img-responsive" />
                </li>
               
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_19.png" class="img-responsive" />
                </li>
                
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_21.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_24.png" class="img-responsive" />
                </li>
               
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_27.png" class="img-responsive" />
                </li>
             
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_16.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_32.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_35.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_36.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_38.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_39.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_40.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_41.png" class="img-responsive" />
                </li>
              
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_47.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_51.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_52.png" class="img-responsive" />
                </li>
                <li class="item col-xs-2">
                    <img src="images/clients/igtr-client_55.png" class="img-responsive" />
                </li>               
            </ul>
        </div>
    </div>
    <!-- END CLIENTS -->
    <%--<img src="images/ghar-ghar-tiranga1.jpeg" class="img-responsive" alt="yoga" style="margin-bottom: 30px;" />
    <img src="images/ghar-ghar-tiranga.jpeg" class="img-responsive" alt="yoga" style="margin-bottom: 30px;" />--%>
    <%--<img src="images/yoda-day-2023.jpg" class="img-responsive" alt="yoga" style="margin-bottom: 30px;" />--%>
    <script>
        $(function () {
            scrollMove('.items', 25, 2);
            
        })
    </script>
  	<!--<iframe width="100%" height="315" src="https://www.youtube.com/embed/jXkrrTA3Vck" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>-->	
	<%--<a href="https://forms.gle/8xqN2JJhJC5DLVZM7" target="_blank"><img src="images/CCMO.jpg" class="img-responsive" style="border: 1px solid #ddd;" alt="Admission-notice-jan-23.jpeg" /></a>--%>
</asp:Content>
