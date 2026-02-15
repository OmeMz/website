using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form : System.Web.UI.Page {

    public string str = "";

    protected void Page_Load(object sender, EventArgs e){
        if (IsPostBack)
        {
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            string middleName = Request.Form["midname"];
            string drinkWhiskey = Request.Form["drinkWhiskey"];
            string age = Request.Form["age"];
            string favBeer = Request.Form["fav_beer"];
            string eatBacon = Request.Form["eatBacon"];
            string email = Request.Form["email"];
            string password = Request.Form["pass"];

            string sqlInsert =
                "INSERT INTO tUsers " +
                "VALUES (" +
                "N'" + firstname + "'," +
                "N'" + surname + "'," +
                "N'" + middleName + "'," +
                "N'" + drinkWhiskey + "'," +
                age + "," +                                // INT
                "N'" + favBeer + "'," +
                "N'" + eatBacon + "'," +
                "N'" + email + "'," +
                "N'" + password + "'" +
                ")";

            MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

            str = "OK";

        }
    }
}