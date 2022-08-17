using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AutoMobile.UILayer
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            String con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            try
            {
                string s = TextBox1.Text;
                string p = TextBox2.Text;
                int id;
                connection.Open();
                string query = "SELECT * from [User] Where Email='" + s + "' AND Password='" + p + "'";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        id=Convert.ToInt32(dr.GetValue(0));
                       // Session["userID"] = id;
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Not UserLogin  Sucessful');</script>");
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