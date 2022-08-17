using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace AutoMobile.UILayer
{
    public partial class placedsuccessfully : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            get();
        }
        protected void get()
        {
            Label1.Text = Request.QueryString["orderid"];
            Label2.Text = Label1.Text;
            findorderdate(Label2.Text);
            findaddress(Label2.Text);
            showgrid(Label2.Text);
        }
        private void findorderdate(string Orderid)
        {
            string mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            string  myquery="select * from OrderDetails where orderid='"+Orderid+"'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand(mycon);
            cmd.CommandText = myquery;
            cmd.Connection=con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand=cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                Label3.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
            }
            con.Close();
        }
        private void findaddress(string Orderid)
        {
            string mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            string myquery = "select * from OrderAddress where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand(mycon);
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = ds.Tables[0].Rows[0]["address"].ToString();
            }
            con.Close();
        }
        private void showgrid(string Orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("productid");
            dt.Columns.Add("productname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("cost");
            dt.Columns.Add("totalcost");
            string mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            string myquery = "select * from OrderDetails where orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand(mycon);
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while(i< totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[0]["sno"].ToString();
                dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                dr["quantity"] = Request.QueryString["quantity"];
                dr["cost"] = ds.Tables[0].Rows[0]["cost"].ToString();
                int cost = Convert.ToInt16(ds.Tables[0].Rows[0]["cost"].ToString());
                int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                int totalcost = cost * quantity;
                dr["totalcost"] = totalcost;
                grandtotal = grandtotal+totalcost;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label5.Text=grandtotal.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }
    }
}