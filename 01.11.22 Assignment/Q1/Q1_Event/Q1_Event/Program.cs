using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Q1_Event
{
    internal class Program
    {

        static void Main(string[] args)
        {
            try
            {
                // Console.WriteLine("Hello, World!");
                string connection = "Data Source=INLPF37B1HY\\MSSQLSERVER1;Initial Catalog=event;trusted_connection=true";
                SqlConnection sqlcon = new SqlConnection(connection);
                sqlcon.Open();
                Console.WriteLine("Enter the month to fetch all the events happening in that month:   ");
                string input = Console.ReadLine();
                SqlCommand cmd = new SqlCommand("event_info", sqlcon);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@input_month", input);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Console.WriteLine(reader.GetString(0));
                }
                reader.Close();
                // cmd.ExecuteNonQuery();
                sqlcon.Close();

            }
            catch (SqlException e)
            {
                Console.WriteLine("this is sql exception:    " + e.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("This is exception in c#:    " + ex.Message);
            }
        }
    }
}
