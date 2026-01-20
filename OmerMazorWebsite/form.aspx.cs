using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page {

    public string name = "FFFFFFFFFFF";

    protected void Page_Load(object sender, EventArgs e){
        if(IsPostBack){
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            name = firstname + " " + surname;

        }
    }
}