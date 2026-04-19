using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

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

                Response.Redirect("manager.aspx");
            } else {
                string sql = "SELECT firstName FROM tUsers WHERE email = N'" + email + 
                    "' AND password = N'" + password + "'";

                DataTable dt = MyAdoHelper.ExecuteDataTable(sql);
     
                        if (dt.Rows.Count != 0) {
                            Session["email"] = email;
                            Session["username"] = dt.Rows[0]["firstName"];
                            Session["isManager"] = false;

                            Response.Redirect("home.aspx");
                        } else {
                    Session["username"] = "אורח";
                    strResult = "Wrong email or password!";
                        }
                    }
                }
            }
}

