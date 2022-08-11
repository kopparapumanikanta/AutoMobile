using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace AutoMobile.UILayer
{
    public partial class home : System.Web.UI.Page
    {
        
        String con = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=AutoMobileDB;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mycart.aspx");
        }
            
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1")); 
            Response.Redirect("mycart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }
    }
}