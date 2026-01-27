using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page {

    public string name = "";

    protected void Page_Load(object sender, EventArgs e){
        if(IsPostBack){
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            name = firstname + " " + surname;

            string age = Request.Form["age"];

            string sqlInset =
                "INSERT INTO tUsers " +
                "VALUES (" +
                "N'" + firstname + "'," +
                "N'" + surname + "'," +
                age + "," +
                "N'" + last + "'" +
                ")";

        }
    }
}