using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BIENESTAR_UNIVERSITARIO
{
    public class Clsingreso
    {
        CConexion objconexion = new CConexion();
        public DataSet consultar_ingreso(string idusuario, string clave)
        {
            try
            {
                SqlCommand scmd = new SqlCommand();
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandText = "spconsultar_ingreso";
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.Parameters.Add("@pusuario", idusuario);
                scmd.Parameters.Add("@pclave", clave);
                SqlDataAdapter da = new SqlDataAdapter(scmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}