using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Banking_website
{ 
    public partial class credit_card : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.Items.Add("Yes");
                DropDownList1.Items.Add("No");
                Label4.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string l = DropDownList1.SelectedItem + "";
            ds = new DataSet();
            da = new SqlDataAdapter("insert into Credit_Card values(@a,@b,@c)", conSt);
            da.SelectCommand.Parameters.AddWithValue("@a", int.Parse(TextBox2.Text));
            da.SelectCommand.Parameters.AddWithValue("@b", TextBox1.Text);
            da.SelectCommand.Parameters.AddWithValue("@c", l);
            da.Fill(ds);
            Label4.Visible = true;
            Label4.Text = "Thanks For Applying";
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting '); window.location='Home.aspx'</script>");

        }
    }
}