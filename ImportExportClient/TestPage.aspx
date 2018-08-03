<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="ImportExportClient.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Formato"></asp:Label>
            <asp:TextBox ID="txtFormat" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Acción"></asp:Label>
            <asp:RadioButtonList ID="rdioListOption" runat="server">
                <asp:ListItem Selected="True">Importar</asp:ListItem>
                <asp:ListItem>Exportar</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label4" runat="server" Text="Líneas"></asp:Label>
            <br />
            <asp:TextBox ID="txtFileContent" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Respuesta"></asp:Label>
            <asp:Label ID="lblResponse" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ejecutar" />
        </div>
    </form>
</body>
</html>
