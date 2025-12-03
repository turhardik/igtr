<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="alumni.aspx.cs" Inherits="igtrahd.alumni" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="service-box-heading">
        <span>Students Alumni</span>
    </div>
    <div class="col-md-1"></div>
    <div class="col-md-11">
      

            <table class="table-responsive" style="border: none;">
                <!--DWLayoutTable-->
                <tbody>
                    <tr>
                        <td colspan="3"><span style="color:red;">*</span> Details are compulsory to fill </td>
                    </tr>

                    <tr>
                        <td><span class="awards">
                            <input type="hidden" name="_recipients" value="training@igtrahd.com,smtrg@igtrahd.com">
                            <input type="hidden" name="_redirect" value="http://igtrahd.com/images/thanksmsg.jpg">
                            <input type="hidden" name="_subject" value="IGTR ALUMINI DETAIL">
                        </span></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>

                    <tr>
                        <td><strong>Student Name<span style="color:red;">*</span></strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="astudentname" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Address </strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="aaddress" TextMode="MultiLine" Rows="3" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>City</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="acity" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>

                    </tr>
                    <tr>
                        <td><strong>Country</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="acountry" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Phone No</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="aphoneno" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Working Address/Contact Detail</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" ID="aworkingaddress" CssClass="form-control"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Experience</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="aemperience" runat="server" CssClass="form-control"></asp:TextBox>( In years)*</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Email</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="aemail" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Student No</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                           <asp:TextBox ID="astudentno" runat="server" CssClass="form-control"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Course</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                           <asp:TextBox ID="acourse" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <!--DWLayoutEmptyCell-->
                            &nbsp;</td>
                        <td>(Short Term, Medium Term, Long Term) Type any one*</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Passing Month</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="apassingmonth" runat="server" CssClass="form-control"></asp:TextBox>
                            ( Ex. March, April, May)*</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><strong>Passing Year</strong></td>
                        <td>&nbsp;:&nbsp;</td>
                        <td>
                            <asp:TextBox ID="apassingyear" runat="server" CssClass="form-control"></asp:TextBox>
                            ( Ex. 1999, 2000,2001)*</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Button ID="Asubmit" runat="server" Text="Submit" class="btn btn-primary" OnClick="Asubmit_Click"/>
                          
                            &nbsp;&nbsp;&nbsp;&nbsp;
         
                            <input name="Submit2" type="reset" value="Reset" class="btn btn-default"></td>
                    </tr>
                    <tr>

                        <td colspan="2"> <asp:Label ID="lbSucess" runat="server" Text=""></asp:Label></td>
                        
                    </tr>

                </tbody>
            </table>



      
    </div>







</asp:Content>
