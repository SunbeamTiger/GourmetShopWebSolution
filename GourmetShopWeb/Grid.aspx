<%@ Page Title="" Language="C#"  MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Grid.aspx.cs" Inherits="GourmetShopWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridProducts" runat="server">
    </asp:GridView>
    <asp:CheckBox ID="chkPost" runat="server"  Text="click me" OnCheckedChanged="chkPost_CheckedChanged"  />

    <asp:Button ID="btnPost" runat="server" Text="Click to Post" />

</asp:Content>
