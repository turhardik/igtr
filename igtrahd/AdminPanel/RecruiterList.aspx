<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/Admin.Master" AutoEventWireup="true" CodeBehind="RecruiterList.aspx.cs" Inherits="igtrahd.AdminPanel.RecruiterList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Recruiter List</h2>
<hr />

<asp:GridView ID="gvRecruiters" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="gvRecruiters_RowCommand">
    <Columns>
        <asp:BoundField DataField="RecruiterName" HeaderText="Recruiter Name" />

        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:LinkButton runat="server" CommandName="edit" CommandArgument='<%# Eval("ID") %>' Text="Edit" CssClass="btn btn-sm btn-primary"></asp:LinkButton>
                &nbsp;
                <asp:LinkButton runat="server" CommandName="delete" CommandArgument='<%# Eval("ID") %>' Text="Delete" CssClass="btn btn-sm btn-danger"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<br />
<asp:HyperLink NavigateUrl="AddRecruiter.aspx" Text="Add New Recruiter" CssClass="btn btn-success" runat="server" />
</asp:Content>
