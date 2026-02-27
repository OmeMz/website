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

		// User controls
		// If the variable "email" is not null then that means a user is connected, so it shows only the button to sign-out
		if (Session["email"] != null){
			pnlLogin.Visible = false;
			pnlRegister.Visible = false;
			pnlSignOut.Visible = true;
		}
		// Else, that means no user is connected, so it shows the buttons to login and register and hides the button to sign-out
		else{
			pnlLogin.Visible = true;
			pnlRegister.Visible = true;
			pnlSignOut.Visible = false;
		}

	}

}
