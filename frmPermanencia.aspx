<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPermanencia.aspx.cs" Inherits="BIENESTAR_UNIVERSITARIO.frmcitas" %>

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
                    <td class="auto-style5">CODIGO DE PERMANENCIA</td>
                    <td>
                        <asp:TextBox ID="txtpermanencia" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:Button ID="btnpermanencia" runat="server" Text="BUSCAR" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">FECHA</td>
                    <td>
                        <asp:TextBox ID="txtfecha" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">HORA</td>
                    <td>
                        <asp:TextBox ID="txthora" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">IDENTIFICACIÓN DEL PACIENTE&nbsp;&nbsp;
                        <asp:TextBox ID="txtpaciente" runat="server" Enabled="False" Width="202px"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:Button ID="btnpaciente" runat="server" Enabled="False" Text="BUSCAR PACIENTE" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvpaciente" runat="server" ControlToValidate="txtpaciente" EnableTheming="True" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4">
                        <asp:RegularExpressionValidator ID="revpaciente" runat="server" ControlToValidate="txtpaciente" ErrorMessage="Solo numeros" Font-Size="Large" ForeColor="Red" ValidationExpression="[1-9][0-9][0-9][0-9][0-9]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">NOMBRE DEL PACIENTE</td>
                    <td>
                        <asp:Label ID="lblpaciente" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">VALOR DE CITA</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtvalor" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnguardar" runat="server" Enabled="False" Text="GUARDAR" />
                    </td>
                    <td>
                        <asp:Button ID="btnanular" runat="server" Text="ANULAR" />
                    </td>
                    <td>
                        <asp:Button ID="btncancelar" runat="server" Enabled="False" Text="CANCELAR" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblmensaje" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </td>
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
