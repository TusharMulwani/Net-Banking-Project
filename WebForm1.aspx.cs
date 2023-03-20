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
    
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        string conStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["bank"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button2.Visible = false;
                Button3.Visible = false;
                Label2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button3.Visible = true;
            Label2.Visible = true;
            da = new SqlDataAdapter("select * from adhae where Adhar_Number =@a", conStr);
            da.SelectCommand.Parameters.AddWithValue("@a", int.Parse(TextBox1.Text));


            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
              
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie m = new HttpCookie("d");
            m.Values["y"] = TextBox1.Text;
           
            m.Expires = DateTime.Now.AddSeconds(1000);
            Response.Cookies.Add(m);
            Response.Redirect("additional info.aspx");

            
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Dear user it will redirect you to the uidai website for correction in adhar no. ');</script>");
            Response.Redirect("https://uidai.gov.in/hi/my-aadhaar-hi/update-your-aadhaar-hi.html");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Thanks For Visiting .we are redirecting you to the home page '); window.location='Home.aspx'</script>");
        }
    }
}