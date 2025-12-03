<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListProductionInq.aspx.cs" Inherits="igtrahd.AdminPanel.ListProductionInq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3>List Production Inquiry</h3>
    <div>
         <center>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/iconxls.png"
                        Width="35px" OnClick="ImageButton1_Click" /></center>

         <table class=" table tabbable table-bordered">
         <asp:repeater id="rptProductionInq" runat="server">
                <HeaderTemplate>
                    <tr style="background-color: #dedede; font-weight: bold; font-style: normal; letter-spacing: normal;">
                        <th>
                            Sr. No
                        </th>
                        <th>
                            Organization
                        </th>
                        <th>
                            Designation
                        </th>
                        <th>
                            Name
                        </th>
                        <th>
                            Address
                        </th>
                        <th>
                            Phone No
                        </th>
                         <th>
                            Fax No
                        </th>
                        <th>
                            E-mail
                        </th>
                        <th>
                            Area of Interest
                        </th>
                        <th>
                            Message
                        </th>
                         <th>
                            Referance
                        </th>
                          <th>
                            Inq Date
                        </th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color: #eeeeee;">
                        <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <%#Eval("Organization")%>
                        </td>
                        <td>
                            <%#Eval("Designation")%>
                        </td>
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("PhoneNo")%>
                        </td>
                          <td>
                            <%#Eval("FaxNo")%>
                        </td>
                         <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("AOI")%>
                        </td>
                        <td>
                            <%#Eval("Message")%>
                        </td>
                          <td>
                            <%#Eval("Reference")%>
                        </td>
                         <td>
                            <%#Eval("InsertDate")%>
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color: #dddddd;">
                       <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <%#Eval("Organization")%>
                        </td>
                        <td>
                            <%#Eval("Designation")%>
                        </td>
                        <td>
                            <%#Eval("Name")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("PhoneNo")%>
                        </td>
                          <td>
                            <%#Eval("FaxNo")%>
                        </td>
                         <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("AOI")%>
                        </td>
                        <td>
                            <%#Eval("Message")%>
                        </td>
                          <td>
                            <%#Eval("Reference")%>
                        </td>
                         <td>
                            <%#Eval("InsertDate")%>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:repeater>
        </table>

    </div>

    


</asp:Content>
