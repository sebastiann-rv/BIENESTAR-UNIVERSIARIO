using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BIENESTAR_UNIVERSITARIO
{
    public class Clsconexion
    {
        public SqlConnection abrir_base()
        {
            try
            {
                SqlConnection cnn = new SqlConnection();
                cnn.ConnectionString = "data source = danielpm; database = hospital_2018; user id = admin; pwd = 1";
                cnn.Open();
                return cnn;

            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }
    }
}