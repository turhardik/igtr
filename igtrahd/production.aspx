<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="production.aspx.cs" Inherits="igtrahd.production" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="service-box-heading">
        <span>Inquiry for Production</span>
    </div>
    <h1></h1>

    <!-- form starts -->
    <div>
        <h4 class="h4">Customers are requested to mark the fileds as given below.</h4>
      
            <div class="row">
                <div class="col-sm-6">

                    <p>
                        Organisation:
                        <asp:TextBox ID="organisation" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Designation:
                        <asp:TextBox ID="designation" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Name:
                        <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Address:
                        <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Phone No:
                        <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>


                </div>
                <div class="col-sm-6">
                    <p>
                        Fax No:
                        <asp:TextBox ID="fax" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        E-mail:
                        <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Area of Interest:
                        <asp:TextBox ID="interestarea" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Message:
                        <asp:TextBox ID="message" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                    <p>
                        Referance:
                        <asp:TextBox ID="referance" runat="server" CssClass="form-control"></asp:TextBox>
                    </p>
                </div>
            </div>
            <p>
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="submit_Click" />
                <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-default btn-lg" />
                <asp:Label ID="lbSucess" runat="server" Text=""></asp:Label>

            </p>

      
    </div>
    <!-- form end -->

</asp:Content>
