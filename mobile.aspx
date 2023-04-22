<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="mobile.aspx.cs" Inherits="Electronic_store.mobile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatDirection="Horizontal" RepeatColumns="4">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#000000">
                        <asp:Label ID="Label1" runat="server" Text='<% # Eval("Pname")%>' Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="278px" BorderColor="#5F98F3" BorderWidth="1px" ImageUrl='<%#Eval("Pimage") %>' />
                        
                        </td> 
                    
                </tr>


                <tr>
                    <td style="text-align:center; background-color:#000000">
                        <asp:Label ID="Label2" runat="server" Text="Price: Rs" Font-Names="Arial" ForeColor="White" style="text-align :center"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Names="Arial" ForeColor="White" style="text-align :center"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">Quantity
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="imagess\addtoCart.png" Width="160px" CommandArgument='<% # Eval("Pid")%>' CommandName="AddToCart" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:electronicStoreConnectionString %>" SelectCommand="SELECT [Pid], [Pname], [Pdesc], [Pimage], [Pprice] FROM [mobile]"></asp:SqlDataSource>

   
</asp:Content>
