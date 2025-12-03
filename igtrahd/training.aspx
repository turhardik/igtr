<%@ Page Title="" Language="C#" MasterPageFile="~/igtr.Master" AutoEventWireup="true" CodeBehind="training.aspx.cs" Inherits="igtrahd.training" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="service-box-heading">
        <span>Customer Inquiry Form - Training</span>
    </div>



    <h4 class="h4">Customers are requested to mark the fileds as given below.</h4>
   
        <div class="row">
            <div class="col-sm-6">
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
                <p>
                    Fax No:
                    <asp:TextBox ID="fax" runat="server" CssClass="form-control"></asp:TextBox>
                </p>
                <p>
                    E-mail:
                    <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                </p>
            </div>
            <div class="col-sm-6">
                <p>
                    Area of Interest:
                    <asp:DropDownList ID="areaofinterest" runat="server" CssClass="form-control">

                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value="CAD">CAD</asp:ListItem>
                        <asp:ListItem Value="CAM">CAM</asp:ListItem>
                        <asp:ListItem Value="CAE">CAE</asp:ListItem>
                        <asp:ListItem Value="CNC Prog.">CNC Prog.</asp:ListItem>
                        <asp:ListItem Value="CNC Machining">CNC Machining</asp:ListItem>
                        <asp:ListItem Value="PLC Prog.">PLC Prog.</asp:ListItem>
                        <asp:ListItem Value="General Engg.">General Engg.</asp:ListItem>
                        <asp:ListItem Value="Career Oriented Courses">Career Oriented Courses</asp:ListItem>
                    </asp:DropDownList>

                </p>
                <p>
                    Qualification:
                      
                    <asp:DropDownList ID="qualification" runat="server" CssClass="form-control">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem Value="10th">10th</asp:ListItem>
                        <asp:ListItem Value="12th">12th</asp:ListItem>
                        <asp:ListItem Value="ITI">ITI</asp:ListItem>
                        <asp:ListItem Value="Diploma">Diploma</asp:ListItem>
                        <asp:ListItem Value="Graduate">Graduate</asp:ListItem>
                        <asp:ListItem Value="Post Graduate">Post Graduate</asp:ListItem>
                    </asp:DropDownList>

                </p>
                <p>
                    Specific Requirement or Other Details:
                     <asp:TextBox ID="otherdetail" runat="server" CssClass="form-control"></asp:TextBox>
                </p>
                <p>
                    Reference:
                     <asp:TextBox ID="reference" runat="server" CssClass="form-control"></asp:TextBox>
                </p>
                <p>
                    Your Current Status: 
                      
                    <asp:DropDownList ID="currentstatus" runat="server" CssClass="form-control">

                        <asp:ListItem>Employee</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </p>
            </div>
        </div>
        <p>
            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="btn btn-primary btn-lg" OnClick="submit_Click" />
            <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn btn-default btn-lg" />
            <asp:Label ID="lbSucess" runat="server" Text=""></asp:Label>
        </p>
    
</asp:Content>
