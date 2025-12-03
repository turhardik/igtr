<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListAlumini.aspx.cs" Inherits="igtrahd.AdminPanel.ListAlumini" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div>

        <h3>List Alumni</h3>
   
         <center>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/iconxls.png"
                        Width="35px" OnClick="ImageButton1_Click" /></center>
 
         <table class="table table-responsive">
         <asp:repeater id="rptAlumini" runat="server">
                <HeaderTemplate>
                    <tr style="background-color: #dedede; font-weight: bold; font-style: normal; letter-spacing: normal;">
                        <th>
                            Sr. No
                        </th>
                        <th>
                            Student Name
                        </th>
                        <th>
                            Address
                        </th>
                        <th>
                            City
                        </th>
                        <th>
                            Country
                        </th>
                        <th>
                            Phone No
                        </th>
                         <th>
                            Working Address/Contact Detail 	 
                        </th>
                        <th>
                            Experience
                        </th>
                        <th>
                            Email
                        </th>
                        <th>
                            Student No
                        </th>
                         <th>
                            Course
                        </th>
                          <th>
                            Passing Month
                        </th>
                         <th>
                            Passing Year
                        </th>
                         <th>
                            Date
                        </th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color: #eeeeee;">
                        <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <%#Eval("StudentName")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("City")%>
                        </td>
                        <td>
                            <%#Eval("Country")%>
                        </td>
                        <td>
                            <%#Eval("PhoneNo")%>
                        </td>
                          <td>
                            <%#Eval("WorkingAddress")%>
                        </td>
                         <td>
                            <%#Eval("Experience")%>
                        </td>
                        <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("StudentNo")%>
                        </td>
                          <td>
                            <%#Eval("Course")%>
                        </td>
                         <td>
                            <%#Eval("PassingMonth")%>
                        </td>
                         <td>
                            <%#Eval("PassingYear")%>
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
                            <%#Eval("StudentName")%>
                        </td>
                        <td>
                            <%#Eval("Address")%>
                        </td>
                        <td>
                            <%#Eval("City")%>
                        </td>
                        <td>
                            <%#Eval("Country")%>
                        </td>
                        <td>
                            <%#Eval("PhoneNo")%>
                        </td>
                          <td>
                            <%#Eval("WorkingAddress")%>
                        </td>
                         <td>
                            <%#Eval("Experience")%>
                        </td>
                        <td>
                            <%#Eval("Email")%>
                        </td>
                        <td>
                            <%#Eval("StudentNo")%>
                        </td>
                          <td>
                            <%#Eval("Course")%>
                        </td>
                         <td>
                            <%#Eval("PassingMonth")%>
                        </td>
                         <td>
                            <%#Eval("PassingYear")%>
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
