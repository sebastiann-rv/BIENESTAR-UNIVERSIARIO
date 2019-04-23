using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BIENESTAR_UNIVERSITARIO
{
    public class Clscita
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand scmd = new SqlCommand();

        public bool guardar_cita(string pcod_cita, string pfecha, string phora, string pid_paciente, int pvalor)
        {
            try
            {
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.CommandText = "sp_guardar_cita";
                scmd.Parameters.Add("@pcod_cita", pcod_cita);
                scmd.Parameters.Add("@pfecha", pfecha);
                scmd.Parameters.Add("@phora", phora);
                scmd.Parameters.Add("@pid_paciente", pid_paciente);
                scmd.Parameters.Add("@pvalor", pvalor);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }

        public bool anular_cita(string pcod_cita)
        {
            try
            {
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.CommandText = "sp_anular_cita";
                scmd.Parameters.Add("@pcod_cita", pcod_cita);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_individual_cita(string pcod_cita)
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consultar_cita";
            scmd.Parameters.Add("@pcod_cita", pcod_cita);
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet consulta_general_cita()
        {
            scmd.Connection = objconexion.abrir_base();
            scmd.CommandType = CommandType.StoredProcedure;
            scmd.CommandText = "sp_consulta_general_cita";
            SqlDataAdapter da = new SqlDataAdapter(scmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}