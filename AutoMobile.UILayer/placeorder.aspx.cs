using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AutoMobile.UILayer
{
    public partial class placeorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("cost");
                dt.Columns.Add("totalcost");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["BuyItems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        scon.Open();
                        string myquery = "select * from Product where productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["cost"] = ds.Tables[0].Rows[0]["cost"].ToString();
                        int cost = Convert.ToInt16(ds.Tables[0].Rows[0]["cost"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalcost = cost * quantity;
                        dr["totalcost"] = totalcost;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("mycart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        scon.Open();
                        string myquery = "select * from Product where productid=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["cost"] = ds.Tables[0].Rows[0]["cost"].ToString();
                        int cost = Convert.ToInt16(ds.Tables[0].Rows[0]["cost"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalcost = cost * quantity;
                        dr["totalcost"] = totalcost;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("mycart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[4].Text = "Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                    }
                }
            }
            Label2.Text = DateTime.Now.ToShortDateString();
            findorderid();

        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalcost"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        public void findorderid()
        {
            string pass = "abcdefghizklmnopqrstuvwxyx123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i=0; i<5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];   
            }
            string orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString();
            Label1.Text = orderid;
        }
        public void saveaddress()
        {
            string updatepass = "insert into OrderAddress(orderid,address,mobilenumber) values('"+Label1.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+"')";
            string mycon1= @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for(int i=0; i<=dt.Rows.Count-1; i++)
            {
                string updatepass = "insert into OrderDetails(orderid,sno,productid,productname,cost,quantity,dateoforder) values('" + Label1.Text + "','" + dt.Rows[i]["sno"] + "','" + dt.Rows[i]["productid"] + "','" + dt.Rows[i]["productname"] + "','"+ dt.Rows[i]["cost"]+ "','" + dt.Rows[i]["quantity"] + "','" + Label2.Text + "' )";
                string mycon1 = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }
            saveaddress();
            Response.Redirect("placedsuccessfully.aspx");
;
        }
    }   
}