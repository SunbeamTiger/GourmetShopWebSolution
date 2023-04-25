<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="DisplayProducts.aspx.cs" Inherits="GourmetShopWeb.DisplayProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Search Item Names: <asp:TextBox ID="searchBarText" runat="server"></asp:TextBox>
    <asp:Button ID="searchBarButton" runat="server" Text="Search" OnClick="searchBarButton_Click1" />
    <asp:GridView ID ="listProductsGrid" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="No Items Found">
    </asp:GridView>
</asp:Content>
