

using System;
using System.Data.SqlClient;


namespace Account_Details

{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string connection = "Data Source=INLPF37B1HY\\MSSQLSERVER1;Initial Catalog=Account_Details;trusted_connection=true";
                SqlConnection conn = new SqlConnection(connection);
                conn.Open();

                Console.WriteLine("Enter The Account Balance");

                int bal = Convert.ToInt32(Console.ReadLine());

                //string query = @"select account_no,account_balance,Account_opened_date,Last_transaction_date,Aadhar_number from account INNER JOIN cust ON account.Aadhar_number = cust.cust_Aadhar_number  WHERE account.account_balance>@input";

                string query = @"select * from display1(@input)";
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@input",bal);
                //cmd.Parameters.Add("@input", System.Data.SqlDbType.BigInt).Value = bal;

                SqlDataReader reader = cmd.ExecuteReader();



                while (reader.Read())
                {
                    Console.Write(reader[0] + "  ");
                    Console.Write(reader[1] + "  ");
                    Console.Write(reader[2] + "  ");
                    Console.Write(reader[3] + "  ");
                    Console.Write(reader[4] + "  ");
                    Console.Write(reader[5] + "  ");

                    Console.WriteLine();
                }
                Console.WriteLine("Execution successfully completed!!");
                reader.Close();
                conn.Close();
                Console.ReadKey();
            }
            catch (SqlException exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("Sql database related problem");
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine("General C# code related problem");
            }
        }
    }
}