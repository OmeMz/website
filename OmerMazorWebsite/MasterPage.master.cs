using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage {

    protected void Page_Load(object sender, EventArgs e){
        bool isManager = false;
		// This is used to show the manager link in the header if the user is a manager, it checks the session variable "isManager" and if it's true, it shows the link
		if(Session["isManager"] != null){
			// It converts the session variable to a boolean and stores it in the isManager variable, if the conversion fails, it will be false
			bool.TryParse(Convert.ToString(Session["isManager"]), out isManager);
		}
		pnlManager.Visible = isManager;

		if(Session["email"] != null){
			pnlLogin.Visible = false;
			pnlRegister.Visible = false;
		}else{
			pnlLogin.Visible = true;
			pnlRegister.Visible = true;
		}

	}

	protected void signOutAction(object sender, EventArgs e){
		// Sign out immediately upon logout
		Session["isManager"] = false; 
		Session["email"] = null;
		Response.Redirect("home.aspx");
	}
}
