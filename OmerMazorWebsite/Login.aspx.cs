using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    public string strResult;
    protected void Page_Load(object sender, EventArgs e){

		if (IsPostBack){
			// Get the email and password from the form
			string email = Request.Form["email"] ?? "";
            string password = Request.Form["pass"] ?? "";

			// Check if the email and password are for the manager
			if (email == "manager@gmail.com" && password == "111") {
                Session["email"] = email;
                Session["username"] = "Manager";
                Session["isManager"] = true;

                ClientScript.RegisterStartupScript(this.GetType(), "openManagerAndGoHome", "window.open('manager.aspx','_blank'); window.location='ehehehe.aspx';", true); return;
            } else {
                string sql = "SELECT firstName FROM tUsers WHERE email = @email AND password = @pass";
                using (var conn = new SqlConnection(ConfigurationManager.ConnectionStrings["YourConnName"].ConnectionString)) {
                    using (var cmd = new SqlCommand(sql, conn)) {
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@pass", password);
                        conn.Open();
                        var result = cmd.ExecuteScalar();
                        if (result != null) {
                            Session["email"] = email;
                            Session["username"] = result.ToString();
                            Session["isManager"] = false;

                            Response.Redirect("home.aspx");
                        } else {
                            strResult = "Wrong email or password!";
                        }
                    }
                }
            }
        }
    }
}