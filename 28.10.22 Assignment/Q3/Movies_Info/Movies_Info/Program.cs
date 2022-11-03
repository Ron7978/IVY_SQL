using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;



namespace Movies_Info
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string connection = "Data Source=INLPF37B1HY\\MSSQLSERVER1;Initial Catalog=Movie_Info;trusted_connection=true";
                SqlConnection sqlcon = new SqlConnection(connection);
                sqlcon.Open();
                Console.WriteLine("Enter your genre type from given two option: Horror  or  Kids : ");
                string genreType = Console.ReadLine();


                string query = @"select * from display_test1(@input)";
                SqlCommand cmd = new SqlCommand(query, sqlcon);
                cmd.Parameters.Add("@input", System.Data.SqlDbType.VarChar).Value = genreType;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(reader[0]);
                }
                reader.Close();
                sqlcon.Close();
            }
            catch (SqlException e)
            {
                Console.WriteLine("SQL related Problem");
                Console.WriteLine(e.Message);
            }
            catch (Exception e)
            {
                Console.WriteLine("C-Sharp Related problem");
                Console.WriteLine(e.Message);
            }
        }
    }
}