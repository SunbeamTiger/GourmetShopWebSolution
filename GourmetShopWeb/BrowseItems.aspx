<%--<%@ Page Title="Browse Items" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="BrowseItems.aspx.cs" Inherits="GourmetShopWeb.BrowseItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridProducts" runat="server">
    </asp:GridView>
<h2>Browse Items:</h2>
</asp:Content>--%>

<%@ Page Title="Products" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" 
         CodeBehind="BrowseItems.aspx.cs" <%--Inherits="GourmetShopWeb.BrowseItems" --%>%>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">--%>
<%--</asp:Content>--%>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">--%>
<%--            <asp:GridView ID="gridProducts" runat="server"
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="GourmetShopWeb.Models.Product" SelectMethod="GetProducts">
            </asp:GridView>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridProducts" runat="server" ItemType="Product" SelectMethod="BindData"></asp:GridView>
    </asp:Content>
<%--</asp:Content>--%>