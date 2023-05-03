<%@ Page Title="Browse Items" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="BrowseItems.aspx.cs" Inherits="GourmetShopWeb.BrowseItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridProducts" runat="server">
    </asp:GridView>
<h2>Browse Items:</h2>
<%--        <a href="AddToCart.aspx?productID=<%#:%>">
            <span class="ProductListItem">
                <b>Add To Cart</b>
            </span>
        </a>--%>
</asp:Content>