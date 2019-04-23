using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BIENESTAR_UNIVERSITARIO
{
    public class Clspaciente
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand scmd = new SqlCommand();

        public DataSet consulta_individual_paciente(string pid_paciente)
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consulta_individual_paciente";
            scmd.Parameters.Add("@pid_paciente", pid_paciente);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet consulta_general_paciente()
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consulta_general_paciente";
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}