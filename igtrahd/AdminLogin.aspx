<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="igtrahd.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Indo German Tool Room - Ahmedabad</title>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="AdminPanel/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- styles -->
    <link href="AdminPanel/css/styles.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body style="background-color:#fff;">
  
<form id="form1" runat="server">

            <div class="container">
                <a href="javascript:void(0);" class="mobi-toggler" style="z-index: 999999;"><i class="fa fa-bars"></i></a>
                <!-- BEGIN NAVIGATION -->
                <div class="col-md-12">
                    <img src="images/header.jpg" class="img-responsive" long-discription=" MSME Technology Center,  Indo German Tool Room - Ahmedabad (An ISO 9001: 2015 certified Tool Room & Training Center)" />
                </div>
                </div>
  
	<div class="page-content container">
   
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box" style="color:#fff;">
			            <div class="content-wrap">
                       
			               
			                 <div class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button>
                    <span style="font-size:14pt;"> Administrator Login </span>
                </div>
                <div class="form-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9"  style="text-align:left; font-size:12pt; width:100%;">Username</label>
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                         <input id="txtLoginId" class="form-control placeholder-no-fix" placeholder="Enter Login ID"
                            maxlength="255" name="txtLoginId" title="Enter your Login ID" type="text"  autocomplete="off" /> </div>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9" style="text-align:left; font-size:12pt; width:100%;">Password</label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                         <input type="password" id="txtPassword" class="form-control placeholder-no-fix" name="txtPassword" maxlength="100" title="Enter your Password" placeholder="Enter Password" /> </div>
                </div>
                <div class="form-actions">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-lg btn-primary signup" onclick="Button1_Click" />
 <div class="clearfix"></div>
    <asp:Label ID="lbmsg" CssClass="warning" runat="server" ForeColor="Red" ></asp:Label>
                </div><div class="clearfix">&nbsp;<br /></div>
                            <div class="right"><a href="AdminPanel/ResetPassword.aspx">Forget Password ?</a></div>
			                </div>                
			            </div>
			        </div>

			       
			    </div>
			</div>
		</div>
	

    </form>
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="AdminPanel/bootstrap/js/bootstrap.min.js"></script>
    <script src="AdminPanel/js/custom.js"></script>
</body>
</html>
