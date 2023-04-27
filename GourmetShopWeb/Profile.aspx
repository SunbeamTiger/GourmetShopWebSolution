<%@ Page Title="Profile" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GourmetShopWeb.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="CSS/Profile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divcontainer">
        <div>
            <h1><asp:Label ID="lblGreeting" runat="server" /></h1>
            <asp:Label ID="lblAddress"  runat="server"></asp:Label><br/>

            <asp:TextBox ID="txtAddress" runat="server" Text='<%# Bind("Address") %>' Visible="false"/>
                <div class="container" style="margin: 0px;">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:LinkButton ID="Edit" runat="server" Text="Edit Profile" OnClick="btnEditProfile_Click" CssClass="btn btn-primary" />
                            <asp:LinkButton ID="Save" runat="server" Text="Save" CssClass="btn btn-success" Visible="false"/>
                            <asp:LinkButton ID="Cancel" runat="server" Text="Cancel" OnClick="btnCancelEditProfile_Click" CssClass="btn btn-danger" Visible="false"/>
                        </div>
                    </div>
                    </div>
            <asp:Label ID="lblOrderHistory" runat="server"/>
        </div>
    </div>
</asp:Content>
