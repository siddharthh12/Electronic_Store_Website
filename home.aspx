﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Electronic_store.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align:center;height:50px;font-size:40px;font-family:Ebrima">
        Best Seller 
    </div>

     <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatDirection="Horizontal" RepeatColumns="4">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:#000000">
                        <asp:Label ID="Label1" runat="server" Text='<% # Eval("Pname")%>' Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="278px" BorderColor="#5F98F3" BorderWidth="1px" ImageUrl='<%#Eval("Pimage") %>' />
                                            <td style="text-align:center">

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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:electronicStoreConnectionString %>" SelectCommand="SELECT [Pid], [Pname], [Pdesc], [Pimage], [Pprice] FROM [bestseller]"></asp:SqlDataSource>







    <table>
        <div align="center">
            <asp:Label ID="Label1" runat="server" Text="SHOP NOW"  Font-Size="XX-Large"></asp:Label>
        </div>
        <tr >
            <td>
               
                <asp:ImageButton ID="ImageButton1" runat="server" Width="550px" Height="250px" ImageUrl="~/imagess/Mobile phones.png" OnClick="ImageButton1_Click" />                
                <asp:ImageButton ID="ImageButton2" runat="server" Width="550px" Height="250px" ImageUrl="imagess\LAPTOP.png" OnClick="ImageButton2_Click" />
               
            </td>
        </tr>

         <tr>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" Width="550px" Height="250px" ImageUrl="imagess\HEADPHONE.png" OnClick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server"  Width="550px" Height="250px" ImageUrl="~/imagess/speka.jpg"  />
            </td>
        </tr>


        <tr >
            <td style="height:10px">

                <asp:Image ID="Image1" runat="server" ImageUrl="~/imagess/de.png"  Width="1100" />
            </td>
        </tr>
    </table>
</asp:Content>
