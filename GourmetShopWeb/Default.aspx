<%@ Page Title="The Gourmet Shop" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GourmetShopWeb.PublicPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Webroot/Style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="login">
           Username:<br /><asp:TextBox ID="txtUsername" CssClass="userinput" runat="server" /><br />
           Password:<br /><asp:TextBox ID="txtPassword" CssClass="userinput" TextMode="Password" runat="server" /><br />
           <asp:Button ID="btnLogin" Style="margin-top:5px;" runat="server" Width="100px" CssClass="userinput" Text="Log in" OnClick="btnLogin_Click" ValidationGroup="Login" />

           <asp:Label ID="lblMessage" runat="server" ForeColor="Red" /><br />             
            <input class="form-check-input" type="checkbox" ID="Remember_me_check_Box"/>          
            <label class="form-check-label" for="Remember_me_check_Box">Remember me</label> 
            <asp:LinkButton ID="lnkCreateAccount" runat="server" Text="Create an Account" />
     </div>
        <div  class="hero-image">
        </div>
    </div>
</asp:Content>
