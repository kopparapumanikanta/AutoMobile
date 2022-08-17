using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace AutoMobile.UILayer
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbtn_Click(object sender, EventArgs e)
        {
            String con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
            try
            {
                connection.Open();

                SqlCommand cmd = new SqlCommand("insert into [User] values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox5.Text + "')", connection);
                int t = cmd.ExecuteNonQuery();
                Response.Write("<script>alert('SignUp Sucessful');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('SignUp Not Sucessful');</script>");
                throw ex;
            }
            finally
            {
                connection.Close();
            }
        }
    }
}