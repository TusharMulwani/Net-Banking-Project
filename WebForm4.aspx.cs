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
    public partial class WebForm4 : System.Web.UI.Page
    {
        DataSet ds;
        SqlDataAdapter da;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        string conSt = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(conSt);
            con.Open();
            string k1 = Request.Cookies["m1"].Values["o"];
            int l1 = int.Parse(k1);
            cmd = new SqlCommand("select nickname from payee WHERE mobile_no = @k ", con);
            cmd.Parameters.AddWithValue("@k", l1);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                if (!IsPostBack)
                {
                    for(int i = 0; i < dr.FieldCount; i++)
                    {
                        DropDownList1.Items.Add("dr[0]");

                    }

                    
                    
                }
            }
            con.Close();
        }
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string k1 = DropDownList1.SelectedItem + "";
            int l1 = int.Parse(k1);
            da = new SqlDataAdapter("select payee_name , payee_account_no , payee_ifsc, amount_received , max_limit , nickname from payee where nickname = @m", con);
            da.SelectCommand.Parameters.AddWithValue("@m", k1);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(conSt);
            con.Open();
            string k1 =DropDownList2.SelectedItem+"";
            
            da= new SqlDataAdapter("update  payee set amount_received = @l where nic_name=@k", con);
            
            da.SelectCommand.Parameters.AddWithValue("@l",int.Parse( TextBox1.Text));
            da.SelectCommand.Parameters.AddWithValue("@k", k1);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                da = new SqlDataAdapter("select payee_name , payee_account_no , payee_ifsc, amount_received , max_limit , nickname from payee where nickname = @m", con);
                da.SelectCommand.Parameters.AddWithValue("@m", k1);
                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                Response.Write("<script>alert('Money is sucessefully transfered  and is updated in below table'); window.location='WebForm4.aspx';;</script>");
            }
           
        }
    }
}