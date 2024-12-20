using MySql.Data.MySqlClient;
using System.Data.SqlClient;

internal class Connect
{
    public MySqlConnection Connection;
    public string Host;
    public string DataBase;
    public string User;
    public string Password;
    public string ConnectionString;

    public Connect()
    {
        Host = "localhost";
        DataBase = "meseljmar";
        User = "root";
        Password = "";

        ConnectionString = "SERVER=" + Host + ";DATABASE=" + DataBase + ";UID=" + User + ";PASSWORD=" + Password + ";SslMode=None";
        Connection = new MySqlConnection(ConnectionString);
    }

    public void OpenConnection()
    {
        if (Connection.State == System.Data.ConnectionState.Closed)
        {
            Connection.Open();
        }
    }

    public void CloseConnection()
    {
        if (Connection.State == System.Data.ConnectionState.Open)
        {
            Connection.Close();
        }
    }

    public MySqlDataReader GetDataByFirstName(string firstName)
    {
        OpenConnection();
        string query = "SELECT * FROM data WHERE FirstName = @FirstName";
        MySqlCommand cmd = new MySqlCommand(query, Connection);
        cmd.Parameters.AddWithValue("@FirstName", firstName);

        return cmd.ExecuteReader();
    }
}