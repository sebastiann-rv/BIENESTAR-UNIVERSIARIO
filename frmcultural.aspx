<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmcultural.aspx.cs" Inherits="BIENESTAR_UNIVERSITARIO.frmcultural" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 929px;
            height: 49px;
        }
        .auto-style3 {
            width: 1486px;
        }
        .auto-style4 {
            width: 212px;
        }
        .auto-style5 {
            width: 473px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">CODIGO DE CULTURA</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtcultura" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btncultura" runat="server" Text="BUSCAR CULTURA" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">FECHA</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtfecha" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">HORA</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txthora" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">IDENTIFICACIÓN&nbsp; USUARIO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtusuario" runat="server" Enabled="False" Width="179px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">&nbsp;&nbsp;
                        <asp:Button ID="btnusuario" runat="server" Enabled="False" Text="BUSCAR USUARIO" />
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvusuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="revusuario" runat="server" ControlToValidate="txtusuario" ErrorMessage="Solo numero" ForeColor="Red" ValidationExpression="[1-9][0-9][0-9][0-9][0-9]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">NOMBRE USUARIO</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblusuario" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">VALOR</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtvalor" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnguardar" runat="server" Enabled="False" Text="GUARDAR" />
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnanular" runat="server" Text="ANULAR" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btncancelar" runat="server" Enabled="False" Text="CANCELAR" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <img alt="" class="auto-style2" src="bn..jpg" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
