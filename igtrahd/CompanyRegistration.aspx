<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="CompanyRegistration.aspx.cs" Inherits="igtrahd.CompanyRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
    .btn:hover{
      background-color: #F65314;
      color:#ffffff;
    }
  </style>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Set Current Date
    const today = new Date().toISOString().split("T")[0];
    document.getElementById("visitDate").value = today;

    // Set Current Time (Correct Format for All Browsers)
    const now = new Date();
    let hh = String(now.getHours()).padStart(2, '0');
    let mm = String(now.getMinutes()).padStart(2, '0');
    document.getElementById("VisitTime").value = hh + ":" + mm;
  });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="service-box-heading">
        <span>Company Registration</span>
    </div>
    <div class="col-md-12" style="padding: 5px; background-color: #2d3490;color:#ffffff;">
        Company Details
    </div>
    <div class="clearfix">&nbsp;</div>
    <div class="col-md-12">
        <p style="margin-top: 5px;">
            Company Name&nbsp;:&nbsp;<input type="text" id="CompanyName" class="form-control" />
        </p>
        <p>
            Company Contact No.&nbsp;:&nbsp;<input type="tel" id="CompanyContact" class="form-control" />
        </p>
        <p>
            Company Email&nbsp;:&nbsp;<input type="email" id="CompanyEmail" class="form-control" />
        </p>
        <p>
            Visit Date&nbsp;:&nbsp;<input type="date" id="visitDate" class="form-control" />
        </p>
        <p>
            Visit Time&nbsp;:&nbsp;<input type="time" id="VisitTime" class="form-control" />
        </p>
        <p>
            Candidate Requirement&nbsp;:&nbsp;<input type="text" id="CandidateRequirement" class="form-control" />
        </p>
        <p>
            No. Of Candidate&nbsp;:&nbsp;<input type="text" id="NoCandidate" class="form-control" />
        </p>
        <p>
            Reply&nbsp;:&nbsp;<textarea id="Reply" class="form-control" name="com_reply" rows="4" cols="50"></textarea>                                    
        </p>
    </div>
    <div class="col-md-12">
        <div class="clearfix">
            &nbsp;<br/>
            <input type="submit" name="Submit" value="Submit" class="btn btn-primary" />
            <input type="reset" name="reset" value="Reset" class="btn btn-default" />
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
