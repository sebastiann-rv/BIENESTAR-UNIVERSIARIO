<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmIngreso.aspx.cs" Inherits="BIENESTAR_UNIVERSITARIO.frmIngreso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 5px;
        }
        .auto-style3 {
            width: 1203px;
            height: 314px;
        }
        .auto-style4 {
            width: 111px;
            height: 123px;
        }
        .auto-style7 {
            width: 102px;
            height: 114px;
        }
        .auto-style9 {
            height: 26px;
            width: 139px;
        }
        .auto-style10 {
            width: 31%;
        }
        .auto-style11 {
            width: 29%;
        }
        .auto-style13 {
            width: 1%;
        }
        .auto-style14 {
            height: 26px;
            width: 31%;
        }
        .auto-style15 {
            height: 26px;
            width: 29%;
        }
        .auto-style16 {
            height: 26px;
            width: 1%;
        }
        .auto-style18 {
            width: 24%;
        }
        .auto-style19 {
            height: 26px;
            width: 24%;
            font-size: large;
            color: #FF0000;
        }
        .auto-style20 {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">
                        <img alt="" class="auto-style7" src="usuario.jpg" /></td>
                    <td class="auto-style11">USERNAME</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtusuario" runat="server" MaxLength="10"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtuser" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style13">
                        <asp:RegularExpressionValidator ID="revuser" runat="server" ControlToValidate="txtuser" ErrorMessage="La primera letra mayuscula y solo letras" Font-Size="Large" ForeColor="#CC0000" SetFocusOnError="True" ValidationExpression="[A-Z][a-z][a-z|\s]+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <img alt="" class="auto-style4" src="images.jpg" /></td>
                    <td class="auto-style15">PASSWORD</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtclave" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style11">
                        <asp:Button ID="btningresar" runat="server" Text="INGRESAR" OnClick="btnIngresar_Click" />
                    </td>
                    <td class="auto-style20">
                        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="5">&lt;<img alt="" class="auto-style3" src="bn.jpg" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
