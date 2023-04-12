<%@ Page Title="Profile" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GourmetShopWeb.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <asp:Label ID="lblGreeting" runat="server" />
            <H2>Hello - you must be logged in</H2>

            Put Labels: First / Last / email
            Add Control:  Order History
            future:  Change Password

            <asp:LinkButton ID="Save" runat="server" Text="Save" />
            <asp:LinkButton ID="Cancel" runat="server" Text="Cancel" />

        </div>
    </div>

</asp:Content>