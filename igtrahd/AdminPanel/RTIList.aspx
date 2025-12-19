<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="RTIList.aspx.cs" Inherits="igtrahd.AdminPanel.RTIList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
    <asp:Repeater ID="rptRTI" runat="server">
        <headertemplate>
            
                <tr style="background: #2c3e9e; color: #fff; font-weight: bold;">
                    <th>Title</th>
                    <th>Details</th>
                    <th>Actions</th>
                </tr>
        </headertemplate>

        <itemtemplate>
            <tr>
                <td><%# Eval("Title") %></td>

                <td>
                    <%# string.IsNullOrEmpty(Eval("ExternalLink").ToString()) 
            ? "<a href='RTI/" + Eval("FileName") + "' target='_blank'>view</a>"
            : "<a href='" + Eval("ExternalLink") + "' target='_blank'>view</a>" %>
                </td>

                <td>
                    <a href='EditRTI.aspx?ID=<%# Eval("ID") %>' class="btn btn-sm btn-primary">Edit</a>
                    &nbsp;
        <asp:LinkButton ID="lnkDelete" runat="server"
            CommandArgument='<%# Eval("ID") %>'
            OnClick="DeleteRTI" CssClass="btn btn-sm btn-danger"
            OnClientClick="return confirm('Are you sure?');">
            Delete</asp:LinkButton>
                </td>
            </tr>
        </itemtemplate>

        
    </asp:Repeater>
        </table>
    <br />
    <a href="EditRTI.aspx" class="btn btn-success">Add New</a>


</asp:Content>
