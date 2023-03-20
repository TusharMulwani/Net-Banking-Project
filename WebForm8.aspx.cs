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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;

        string consti = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(consti);
                con.Open();
                string k1 = Request.Cookies["d"].Values["o"];
                int l1 = int.Parse(k1);
                cmd = new SqlCommand("select nic_name from payee WHERE mob_no = @k ", con);
                cmd.Parameters.AddWithValue("@k", l1);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    for (int i = 0; i < dr.FieldCount; i++)
                    {
                        DropDownList1.Items.Add("dr[0]");

                    }




                }
                con.Close();
            }
        }
    
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string mp = DropDownList1.SelectedItem + "";
            con.Open();

            da= new SqlDataAdapter("Delete From Payee Where nic_name =@k", consti);
            da.SelectCommand.Parameters.AddWithValue("@k", mp);
            da.Fill(ds);

            Response.Write("<script>alert('Records Specified Are Deleted Sucessfully'); window.location='t1.aspx';;</script>");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(consti);
            con.Open();
            string k1 = Request.Cookies["d"].Values["o"];
            int l1 = int.Parse(k1);
            cmd = new SqlCommand("select * from payee WHERE mob_no = @k ", con);
            cmd.Parameters.AddWithValue("@k", l1);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                string l = dr["actype"].ToString();
                if (l == "current")
                {
                    Response.Write("<script>alert('We Are Redirecting You to the Home Page'); window.location='current_savings.aspx'</script>");

                }
                else
                {
                    Response.Write("<script>alert('We Are Redirecting You to the Home Page'); window.location='t9.aspx'</script>");
                }

            }
               
        }
    }
}