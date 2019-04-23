using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace BIENESTAR_UNIVERSITARIO
{
    public partial class frmcita : System.Web.UI.Page
    {
        Clscita ocita = new Clscita();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtcita.Focus();
            }
        }

        protected void btncita_Click(object sender, EventArgs e)
        {
            if (txt.Text == "")
            {
                lblmensaje.Text = "Digite una identificacion";
                txtIdentificacion.Focus();
            }
            else
            {
                lblmensaje.Text = "";
                DataSet ds = new DataSet();
                ds = opaciente.consultar_paciente(txtIdentificacion.Text);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    lblmensaje.Text = "paciente no registrado";
                }
                else
                {
                    lblmensaje.Text = "paciente ya registrado";
                    txtnombre.Text = ds.Tables[0].Rows[0]["nompaciente"].ToString();
                    txtdireccion.Text = ds.Tables[0].Rows[0]["direccion"].ToString();
                    txttelefono.Text = ds.Tables[0].Rows[0]["telefono"].ToString();
                    btnanular.Enabled = true;
                }
                txtnombre.Enabled = true;
                txtdireccion.Enabled = true;
                txttelefono.Enabled = true;
                btnguardar.Enabled = true;
                txtnombre.Focus();
            }
        }

        protected void limpiar_campos()
        {
            txtdireccion.Text = "";
            txtIdentificacion.Text = "";
            txtNombre.Text = "";
            txtTelefono.Text = "";
        }

        protected void desactivar_campos()
        {
            txtDireccion.Enabled = false;
            txtNombre.Enabled = false;
            txtTelefono.Enabled = false;
            btnGuardar.Enabled = false;
            btnAnular.Enabled = false;
            txtIdentificacion.Focus();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (opaciente.guardar_paciente(txtIdentificacion.Text,
                txtNombre.Text, txtDireccion.Text, txtTelefono.Text))
            {
                lblMensaje.Text = "Registro guardado";
                limpiar_campos();
                desactivar_campos();
            }
            else
            {
                lblMensaje.Text = "Error guardando registro";
                txtIdentificacion.Focus();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            limpiar_campos();
            desactivar_campos();
        }

        protected void btnAnular_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Desea eliminar este registro?",
                "Eliminar registro", MessageBoxButtons.YesNo,
                MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (opaciente.eliminar_paciente(txtIdentificacion.Text))
                {
                    lblMensaje.Text = "Registro eliminado";
                    limpiar_campos();
                    desactivar_campos();
                }
                else
                {
                    lblMensaje.Text = "Error eliminando registro";
                    txtIdentificacion.Focus();
                }
            }
            else
            {
                limpiar_campos();
                desactivar_campos();
                lblMensaje.Text = "";
            }
        }

        protected void BtnConsultaGeneral_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds = opaciente.consultar_paciente("");
            GdvGeneral.DataSource = ds.Tables[0];
            GdvGeneral.DataBind();
        }

        protected void GdvGeneral_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}