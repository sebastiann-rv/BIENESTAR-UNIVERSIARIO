using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BIENESTAR_UNIVERSITARIO
{
    public class Clspastoral
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand scmd = new SqlCommand();

        public bool guardar_patoral(string pcod_pastoral, string pfecha, string phora, string pid_pastoral, int pvalor)
        {
            try
            {
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.CommandText = "sp_guardar_pastoral";
                scmd.Parameters.Add("@pcod_pastoral", pcod_pastoral);
                scmd.Parameters.Add("@pfecha", pfecha);
                scmd.Parameters.Add("@phora", phora);
                scmd.Parameters.Add("@pid_pastoral", pid_pastoral);
                scmd.Parameters.Add("@pvalor", pvalor);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }

        public bool anular_pastoral(string pcod_pastoral)
        {
            try
            {
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.CommandText = "sp_anular_pastoral";
                scmd.Parameters.Add("@pcod_pastoral", pcod_pastoral);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_individual_pastoral(string pcod_pastoral)
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consultar_pastoral";
            scmd.Parameters.Add("@pcod_pastoral", pcod_pastoral);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet consulta_general_pastoral()
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consulta_general_pastoral";
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}