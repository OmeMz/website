using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e){
        // If the user was redirected to home, that means he is not a managed, thus we double-check that the session variable "isManager" is set to false, if it's not set, we set it to false, this is used to prevent errors in the manager page if the user tries to access it without logging in
        if(Session["isManager"] == null)
		    Session["isManager"] = false;
        
        // Sign out immediately upon load
        //Session["isManager"] = false; Session["email"] = null;
	}
}