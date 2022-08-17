
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
        protected void AdminLogin(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True");
            try
            {
                connection.Open();
                string query = "SELECT * from Admin Where email='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'";
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
                    Response.Write("<script>alert('Incorrect Username or Password');</script>");
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