namespace BIENESTAR_UNIVERSITARIO
{
    public class Clsregistro
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand scmd = new SqlCommand();

        public bool guardar_registro(string pid_registro, string pnom_registro, string pdir_registro, string tel_registro)
        {
            try
            {
                scmd.Connection = objconexion.abrir_base();
                scmd.CommandType = CommandType.StoredProcedure;
                scmd.CommandText = "sp_guardar_registro";
                scmd.Parameters.Add("@pid_registro", pid_registro);
                scmd.Parameters.Add("@pnom_registro", pnom_registro);
                scmd.Parameters.Add("@pdir_registro", pdir_registro);
                scmd.Parameters.Add("@ptel_registro", tel_registro);
                scmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }

    }
}