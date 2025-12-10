<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="ListPlacementDetails.aspx.cs" Inherits="igtrahd.AdminPanel.ListPlacementDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h3>Placement Details</h3>

<table class="table table-bordered">
    <tr style="background:#f3f3f3;font-weight:bold;">
        <th>Placement Details</th>
        <th>Details</th>
    </tr>

    <tr>
        <td>Placement Officer</td>
        <td>
            <asp:Repeater ID="rptPlacement" runat="server">
                <ItemTemplate>
                    <div><strong>Name:</strong> <%# Eval("Name") %></div>
                    <div><strong>Contact No:</strong> <%# Eval("ContactNo") %></div>
                    <div><strong>Email ID:</strong> <%# Eval("Email") %></div>
                </ItemTemplate>
            </asp:Repeater>
        </td>
    </tr>
</table>

</asp:Content>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h3>Placement Details</h3>

<table class="table table-bordered">
    <tr style="background:#f3f3f3;font-weight:bold;">
        <th>Placement Details</th>
        <th>Details</th>
    </tr>

    <tr>
        <td>Placement Officer</td>
        <td>
            <asp:Repeater ID="rptPlacement" runat="server" OnItemCommand="rptPlacement_ItemCommand">
                <ItemTemplate>
                    <div style="border:1px solid #ddd; padding:10px; margin-bottom:10px;">
                        <div><strong>Name:</strong> <%# Eval("Name") %></div>
                        <div><strong>Contact No:</strong> <%# Eval("ContactNo") %></div>
                        <div><strong>Email ID:</strong> <%# Eval("Email") %></div>

                        <!-- Edit/Delete Buttons -->
                        <div style="margin-top:10px;">
                            <asp:Button ID="btnEdit" runat="server" 
                                Text="Edit" 
                                CommandName="EditRow"
                                CommandArgument='<%# Eval("ID") %>' 
                                CssClass="btn btn-primary btn-sm" />

                            <asp:Button ID="btnDelete" runat="server" 
                                Text="Delete" 
                                CommandName="DeleteRow"
                                CommandArgument='<%# Eval("ID") %>' 
                                CssClass="btn btn-danger btn-sm"
                                OnClientClick="return confirm('Are you sure you want to delete this record?')" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </td>
    </tr>
</table>

</asp:Content>
