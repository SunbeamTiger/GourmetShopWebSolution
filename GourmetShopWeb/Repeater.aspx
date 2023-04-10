<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Repeater.aspx.cs" Inherits="GourmetShopWeb.Repeater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:10px; margin-top:20px; width:100%;">
        <asp:Repeater ID="repProducts" runat="server" OnItemCommand="Repeater1_ItemCommand" OnItemDataBound="repProducts_ItemDataBound">
    
        <ItemTemplate>
            <div style="width:500px;">
                <div style="float:right; font-size:1.1em;">
                   <asp:Label ID="lblPrice" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"UnitPrice") %>' />
                </div>
                <div style="border:solid black 1px; margin: 3px 3px 3px 3px; width:500px; height:50px;">
                   <asp:Label ID="lblProduct" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Productname") %>' />
                </div>
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>
          <div style="width:500px; background-color:darkkhaki;">
                <div style="float:right; font-size:1.1em;">
                      <asp:Label ID="lblPrice" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"UnitPrice") %>' />
                </div>
                <div style="border:solid black 1px; margin: 3px 3px 3px 3px; width:500px; height:50px;">
                  <asp:Label ID="lblProduct" runat="server" text='<%# DataBinder.Eval(Container.DataItem,"Productname") %>' />
                </div>
            </div>
        </AlternatingItemTemplate>


    </asp:Repeater>
    </div>
</asp:Content>
