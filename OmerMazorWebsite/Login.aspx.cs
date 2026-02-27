using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    public string strResult;
    protected void Page_Load(object sender, EventArgs e){

		if (IsPostBack){
			// Get the email and password from the form
			string email = Request.Form["email"] ?? "";
            string password = Request.Form["pass"] ?? "";

			// Check if the email and password are for the manager
			if (email.Equals("manager@gmail.com") && password.Equals("111")){
                Session["email"] = email;
                Session["isManager"] = true;
				ClientScript.RegisterStartupScript(this.GetType(), "openManagerAndGoHome", "window.open('manager.aspx','_blank'); window.location='ehehehe.aspx';", true); return;
            // If not, check if the email and password are for a regular user
            }else{
                string sqlselect =
                    "Select * from tUsers " +
                    " where email = N'" + email + "' and " +
                    "password = N'" + password + "'";

                bool isExists = MyAdoHelper.IsExist(sqlselect);

				// If the email and password are correct, set the session variables and redirect to the home page
				if (isExists){
                    Session["email"] = email;
                    Session["isManager"] = false;
                    Response.Redirect("home.aspx");
				}else{
                    strResult = "Wrong email or password!"; 
				}
            }
        }
    }
}