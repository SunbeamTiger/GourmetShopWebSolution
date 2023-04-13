<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GourmetShopWeb.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Webroot/Style.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <H1>Register as a Gourmet</H1>
        <div style="padding-left:100px">
           First Name:<br /><asp:TextBox ID="txtFirstName" CssClass="userinput" runat="server" /><br />
           Last Name:<br /><asp:TextBox ID="txtLastName" CssClass="userinput" runat="server" /><br />
           Password:<br /><asp:TextBox ID="txtPassword" CssClass="userinput" TextMode="Password" runat="server" /><br />
           <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" text="Register"/>
        </div>

    <asp:Label ID="lblRegistered" runat="server" />


</asp:Content>
