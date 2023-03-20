using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Banking_website
{
    public partial class logics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are directing you to saving account login page '); window.location='logi.aspx'</script>");




        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('we are directing you to saving account login page '); window.location='logi.aspx'</script>");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Write("<script>alert('we are directing you to current account login page '); window.location='Current_login.aspx'</script>");



        }
    }
}