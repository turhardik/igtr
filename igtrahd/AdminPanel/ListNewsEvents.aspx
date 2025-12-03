<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListNewsEvents.aspx.cs" Inherits="igtrahd.AdminPanel.ListNewsEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-responsive" >
    <asp:Repeater ID="rptNewsEvents" runat="server" OnItemDataBound="rptNewsEvents_ItemDataBound">

         <HeaderTemplate>
                    <tr style="background-color: #dedede; font-weight: bold; font-style: normal; letter-spacing: normal;">
                        <th>
                            Sr. No
                        </th>
                        <th>
                            List
                        </th>
                       
                          <th>
                            Inq Date
                        </th>
                          <th>
                            #
                        </th>
                    </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr style="background-color: #eeeeee;">
                        <td width="50px">
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                              <a id="hlData" target="_blank" runat="server"> <%#Eval("Name")%></a>
                            <asp:HiddenField ID="hdType" runat="server" Value='<%#Eval("Type")%>' /> 
                              <asp:HiddenField ID="hdFileURL" runat="server" Value='<%#Eval("Description")%>' />
                            <asp:HiddenField ID="hdID" runat="server" Value='<%#Eval("ID")%>' />
                             
                        </td>
                       
                         <td width="150px">
                            <%#Eval("InsertDate")%>
                        </td>
                          <td width="50px">
                              <asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%#Eval("ID")%>' OnClick="lbDelete_Click">Delete</asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr style="background-color: #dddddd;">
                       <td>
                            <%# Container.ItemIndex + 1 %>
                        </td>
                        <td>
                            <a id="hlData" target="_blank" runat="server"> <%#Eval("Name")%></a>
                            <asp:HiddenField ID="hdType" runat="server" Value='<%#Eval("Type")%>' />
                              <asp:HiddenField ID="hdFileURL" runat="server" Value='<%#Eval("Description")%>' />
                            <asp:HiddenField ID="hdID" runat="server" Value='<%#Eval("ID")%>' />
                             

                          <%--  <asp:HyperLink ID="HlLnk" runat="server" > <%#Eval("Name")%></asp:HyperLink>--%>
                        </td>
                       
                         <td>
                            <%#Eval("InsertDate")%>
                        </td>
                        <td> <asp:LinkButton ID="lbDelete" runat="server" CommandArgument='<%#Eval("ID")%>' OnClick="lbDelete_Click">Delete</asp:LinkButton></td>
                    </tr>
                </AlternatingItemTemplate>

    </asp:Repeater>
</table>
</asp:Content>
