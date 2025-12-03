<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListVendor.aspx.cs" Inherits="AdminPanel.ListVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h3>List Vendor Registration</h3>
    <div class="col-md-12">
        <center>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/iconxls.png"
                Width="35px" OnClick="ImageButton1_Click" /></center>
    </div>
   <div class="col-md-12" style="overflow-x:scroll;">
        <table class="table table-responsive" >
            <asp:Repeater ID="rptVendor" runat="server">
                <HeaderTemplate>
                    <tr style="background-color: #dedede; font-weight: bold; font-style: normal; letter-spacing: normal;">
                        <th>Sr. No
                        </th>
                        <th>Vendor Name
                        </th>
                        <th>Address 
                        </th>
                        <th>Phone 
                        </th>
                        <th>Email 
                        </th>
                        <th>List of Branches 
                        </th>
                        <th>E.C.C. No	 
                        </th>
                        <th>Central Tax Number
                        </th>
                        <th>Date 
                        </th>
                        <th>Kind of Job
                        </th>
                        <th>Country 
                        </th>
                        <th>City 
                        </th>
                        <th>Fax 
                        </th>
                        <th>Web site
                        </th>


                        <th>Sales Tax Number
                        </th>
                        <th>Date 
                        </th>
                        <th>Person Name
                        </th>
                        <th>Mobile 
                        </th>
                        <th>Designation 
                        </th>
                        <th>Email 
                        </th>
                        <th>Reg Date
                        </th>
                        <th>Attachment
                        </th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color: #eeeeee;">
                        <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <%#Eval("VendorName")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("Phone")%>
                        </td>
                        <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("Branches")%>
                        </td>
                        <td>
                            <%#Eval("ECCNo")%>
                        </td>
                        <td>
                            <%#Eval("CentralTaxNo")%>
                        </td>
                        <td>
                            <%#Eval("CTDate")%>
                        </td>
                        <td>
                            <%#Eval("JobType")%>
                        </td>
                        <td>
                            <%#Eval("Country")%>
                        </td>
                        <td>
                            <%#Eval("City")%>
                        </td>
                        <td>
                            <%#Eval("Fax")%>
                        </td>
                        <td>
                            <%#Eval("Website")%>
                        </td>

                          <td>
                            <%#Eval("SalesTaxNo")%>
                        </td>

                          <td>
                            <%#Eval("SalesTaxDate")%>
                        </td>

                          <td>
                            <%#Eval("PersonName")%>
                        </td>

                          <td>
                            <%#Eval("Mobile")%>
                        </td>

                          <td>
                            <%#Eval("Designation")%>
                        </td>


                          <td>
                            <%#Eval("CntEmail")%>
                        </td>


                          <td>
                            <%#Eval("InsertDate")%>
                        </td>

                          <td>
                              <a href="<%="../VDocuments"%>/<%#Eval("ID") %>/<%#Eval("FileName")%>" >View</a>
                        </td>

                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color: #dddddd;">
                      <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <%#Eval("VendorName")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("Phone")%>
                        </td>
                        <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("Branches")%>
                        </td>
                        <td>
                            <%#Eval("ECCNo")%>
                        </td>
                        <td>
                            <%#Eval("CentralTaxNo")%>
                        </td>
                        <td>
                            <%#Eval("CTDate")%>
                        </td>
                        <td>
                            <%#Eval("JobType")%>
                        </td>
                        <td>
                            <%#Eval("Country")%>
                        </td>
                        <td>
                            <%#Eval("City")%>
                        </td>
                        <td>
                            <%#Eval("Fax")%>
                        </td>
                        <td>
                            <%#Eval("Website")%>
                        </td>

                          <td>
                            <%#Eval("SalesTaxNo")%>
                        </td>

                          <td>
                            <%#Eval("SalesTaxDate")%>
                        </td>

                          <td>
                            <%#Eval("PersonName")%>
                        </td>

                          <td>
                            <%#Eval("Mobile")%>
                        </td>

                          <td>
                            <%#Eval("Designation")%>
                        </td>


                          <td>
                            <%#Eval("CntEmail")%>
                        </td>


                          <td>
                            <%#Eval("InsertDate")%>
                        </td>

                          <td>
                              <a href="<%="../VDocuments"%>/<%#Eval("ID") %>/<%#Eval("FileName")%>" >View</a>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>
        </table>

    </div>



</asp:Content>
