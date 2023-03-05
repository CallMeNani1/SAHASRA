using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillgridservicesdetails();
    }
    public void data()
    {
        string connstring = WebConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        con = new SqlConnection(connstring);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtusername.Text.ToLower() == "admin")
        {
            data();
            query = "select pwd from adminlogin where uname='" + txtusername.Text.ToLower() + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                lblerr.Visible = true;
            }
            rd.Close();
            con.Close();
        }
        else
        {
            data();
            query = "select uname,pwd from userdet where uname='" + txtusername.Text + "' and pwd='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["user"] = txtusername.Text.ToString();
                Response.Redirect("userhome.aspx");
            }
            else
            {
                lblerr.Visible = true;
            }
            rd.Close();
            con.Close();
        }
    }



    public void fillgridservicesdetails()
    { }
}
