using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace nem
{
    public partial class Form1 : Form
    {
        private string connectionString = "SERVER=localhost;DATABASE=meseljmar;UID=root;PASSWORD=;SslMode=None";

        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string firstName = textBox1.Text;
            string lastName = textBox2.Text;

            if (string.IsNullOrWhiteSpace(firstName) && string.IsNullOrWhiteSpace(lastName))
            {
                MessageBox.Show("Adjon meg egy keresztnevet vagy vezetéknevet!");
                return;
            }

            try
            {
                using (MySqlConnection conn = new MySqlConnection(connectionString))
                {
                    conn.Open();

                    string query = "SELECT * FROM data WHERE FirstName LIKE @FirstName OR LastName LIKE @LastName";
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", "%" + firstName + "%");
                        cmd.Parameters.AddWithValue("@LastName", "%" + lastName + "%");

                        MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            string result = "Talált adatok:\n\n";
                            foreach (DataRow row in dt.Rows)
                            {
                                result += $"ID: {row["Id"]}, Név: {row["FirstName"]} {row["LastName"]}, Jelszó: {row["Password"]}\n";
                            }
                            MessageBox.Show(result);
                        }
                        else
                        {
                            MessageBox.Show("Nincs találat.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hiba történt: " + ex.Message);
            }
        }
    }
}