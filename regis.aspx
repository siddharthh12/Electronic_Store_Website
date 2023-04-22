<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="Electronic_store.regis" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head >
   
    <title>ELECTRONIC STORE</title>
    <style>
input[type=text], select, textarea {
width: 10%;
padding: 8px;
border: 1px solid #ccc;
margin-top: 4px;
margin-bottom: 10px;
}
input[type=submit] {
background-color:deepskyblue;
padding: 8px 8px;
}

        body {
            background-image: url("C:\Users\Lenovo\source\repos\Electronic_store\bgimage\bg1.jpg");
        }

</style>
    
</head>
<body>
    
        <h3 style="border:3px solid green" align="center">Hello Welcome </h3>
        <div>
            
                <div align="center">
                    <asp:Label ID="nam" runat="server" Text="FirstName" Width="80px"></asp:Label>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>

                    <div align="center">
                <asp:Label ID="lnam" runat="server" Text="LastName"></asp:Label>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </div>

                </div>
                <div align="center">
                    <asp:Label ID="emai" runat="server" Text="Email" Width="80px"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>

            <div align="center"> 
                <asp:Label ID="addres" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </div>

                <div align="center">
                    <asp:Label ID="pas" runat="server" Text="Password" Width="80px"></asp:Label>
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </div>
            
                
                <div align="center">
                    
                    <asp:Button ID="btn1" runat="server" Text="Register" OnClick="btn1_Click" />
                  
                    </div>
            <div align="center">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
        </div>
</body>
</html>

</asp:Content>
