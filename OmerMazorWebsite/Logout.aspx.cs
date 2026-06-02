using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e){
		Session.Abandon();
        Session["username"] = "guest";
		Session["userRole"] = "guest";
        Response.Redirect("home.aspx");
	}
}