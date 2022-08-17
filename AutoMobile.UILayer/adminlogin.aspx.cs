
using System;
using System.Web;
using System.Collections.Generic;
using System.Data.SqlClient;


namespace AutoMobile.UILayer
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login(object sender, EventArgs e)
        {
            String con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            try
            {
                connection.Open();
                string query = "SELECT * from Admin Where Email='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        
                        Response.Redirect("addproduct.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert(' AdminLogin Not Sucessful');</script>");
                }

            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close(); //close connection
            }
        }
    }
}