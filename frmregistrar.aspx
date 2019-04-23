<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmregistrar.aspx.cs" Inherits="BIENESTAR_UNIVERSITARIO.frmcitas" %>

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
            height: 13px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 506px;
        }
        .auto-style6 {
            height: 30px;
            width: 506px;
        }
        .auto-style7 {
            height: 13px;
            width: 506px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">IDENTIFICACION</td>
                    <td>
                        <asp:TextBox ID="txtidentificacion" runat="server" Width="254px"></asp:TextBox>
                    </td>
                    <td>
&nbsp;<asp:RequiredFieldValidator ID="rfvidentificacion" runat="server" ControlToValidate="txtidentificacion" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revidentificacion" runat="server" ControlToValidate="txtidentificacion" ErrorMessage="Solo numeros." ForeColor="Red" SetFocusOnError="True" ValidationExpression="[1-9][0-9][0-9][0-9][0-9][0-9]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">NOMBRE</td>
                    <td>
                        <asp:TextBox ID="txtnombre" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvnombre" runat="server" ControlToValidate="txtnombre" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revnombre" runat="server" ControlToValidate="txtnombre" ErrorMessage="Primera Mayuscula" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[A-Z][a-z][a-z|\s]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">DIRECCION</td>
                    <td>
                        <asp:TextBox ID="txtdireccion" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvdireccion" runat="server" ControlToValidate="txtdireccion" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revdireccion" runat="server" ControlToValidate="txtdireccion" ErrorMessage="La primera letra Mayuscula" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[A|T|C|D|K][a-z|0-9|\s|\-|\#]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">TELEFONO&nbsp;&nbsp;
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txttelefono" runat="server" Width="256px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvtelefono" runat="server" ControlToValidate="txttelefono" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style4">
                        <asp:RegularExpressionValidator ID="revtelefono" runat="server" ControlToValidate="txttelefono" ErrorMessage="Primer numero entre 2 y 8" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[2-8][0-9][0-9] [0-9][0-9] [0-9][0-9]"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnregistrar" runat="server" Enabled="False" Text="GUARDAR" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <img alt="" class="auto-style2" src="bn..jpg" /></td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
