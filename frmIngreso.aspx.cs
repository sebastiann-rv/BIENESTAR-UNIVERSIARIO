using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BIENESTAR_UNIVERSITARIO
{
    public partial class frmingreso : System.Web.UI.Page
    {
        ClsIngreso oingreso = new ClsIngreso();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btningresar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            if (txtclave.Text == "" || txtusuario.Text == "")
            {
                lblmensaje.Text = "Digite una clave y una contraseña";
                txtusuario.Focus();
            }
            else
            {
                ds = oingreso.consultar_ingreso(txtusurio.Text, txtclave.Text);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblmensaje.Text = "usario no registrado";
                    txtusuario.Focus();
                }
                else
                {
                    Response.Redirect("frmPaciente.aspx");
                }
            }
        }
    }
}