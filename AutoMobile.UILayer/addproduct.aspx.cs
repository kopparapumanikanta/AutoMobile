using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutoMobile.UILayer
{
    public partial class addproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Func();
            }
        }
            protected void add(object sender, EventArgs e)
            {
            String con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(con);
                if (FileUpload1.HasFiles)
                {
                    try
                    {
                        string fname = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("Images/") + fname);
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("insert into Product values('" + TextBox1.Text + "','" + FileUpload1.FileName + "','" + TextBox2.Text + "')", connection);
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        {
                        lblErrMsg.Text="File Uploaded Sucessfully";
                        }
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }

            protected void Func()
            {
            lblErrMsg.Text = "";
            }
        
    }
}