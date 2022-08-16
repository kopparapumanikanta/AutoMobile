﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AutoMobile.UILayer
{
    public partial class EditOrder : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
            }
            else
            {
                if (Request.QueryString["sno"] !=null)
                {
                    dt = (DataTable)Session["buyitems"];
                    for(int i = 0; i <= dt.Rows.Count - 1; i++)
                    {
                        int sr;
                        int sr1;
                        sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                        Label1.Text = Request.QueryString["sno"];
                        Label2.Text=sr.ToString();
                        sr1 = Convert.ToInt32(Label1.Text);
                        
                        if(sr==sr1)
                        {
                            Label1.Text = dt.Rows[i]["sno"].ToString();
                            Label2.Text = dt.Rows[i]["productname"].ToString();
                            Label3.Text = dt.Rows[i]["cost"].ToString();
                            DropDownList1.Text= dt.Rows[i]["quantity"].ToString();
                            Label4.Text = dt.Rows[i]["totalcost"].ToString();

                            break;
                        }
                    }
                }
                else
                {
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int q;
            q = Convert.ToInt32(DropDownList1.Text);
            int price;
            price = Convert.ToInt32(Label3.Text);
            int totalprice;
            totalprice = price * q;
            Label4.Text=totalprice.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = (DataTable)Session["buyitems"];
            for(int i = 0; i <=dt.Rows.Count-1; i++)
            {
                int sr;
                int sr1;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                sr1 = Convert.ToInt32(Label1.Text);

                if (sr == sr1)
                {
                    dt.Rows[i]["sno"]= Label1.Text;
                    dt.Rows[i]["productname"]= Label2.Text;
                    dt.Rows[i]["cost"]=Label3.Text ;
                    dt.Rows[i]["quantity"]= DropDownList1.Text;
                    dt.Rows[i]["totalcost"]= Label4.Text;
                    dt.AcceptChanges();
                    break;
                }
            }
            Response.Redirect("mycart.aspx");
        }
    }
}