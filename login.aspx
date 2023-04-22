<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Electronic_store.login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">

        <html xmlns="http://www.w3.org/1999/xhtml">
<head >
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
  background-image: url('');
}

</style>
    
</head>
<body>
    
    <form id="form1" >
        <h3 style="border:3px solid green" align="center">Hello Welcome </h3>
        <div>
            
                
                <div align="center">
                    <asp:Label ID="emai" runat="server" Text="Email" Width="80px"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                </div>
                <div align="center">
                    <asp:Label ID="pas" runat="server" Text="Password" Width="80px"></asp:Label>
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </div>
                <div align="center">
                                           
                    
                    <asp:Button ID="btn2" runat="server" Text="Login" OnClick="btn2_Click" />
                        
                    </div>
            <div align="center">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
           
        </div>
    </form>
</body>

</html>

</asp:Content>
