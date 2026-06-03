using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page {

    public string str = "";

    protected void Page_Load(object sender, EventArgs e){

		if (IsPostBack){
            string firstname = Request.Form["firstname"];
            string surname = Request.Form["surname"];
            string middleName = Request.Form["midname"];
            string drinkWhiskey = Request.Form["drinkWhiskey"];
            string age = Request.Form["age"];
            string favBeers = Request.Form["fav_beer1"] + "," + Request.Form["fav_beer2"] + "," + Request.Form["fav_beer3"];
            string eatBacon = Request.Form["eatBacon"];
            string email = Request.Form["email"];
            string password = Request.Form["pass"];

            //האם מייל תפוס?
            string sqlselect =
                "Select * from tUsers " +
                " where email = N'" + email + "'";

            bool isExists = MyAdoHelper.IsExist(sqlselect);

            if (isExists)
                str = "אימייל תפוס";
            else
            {
                //אפשר הרשמה
                string sqlInsertUser =
                    "INSERT INTO tUsers " +
                    "VALUES (" +
                    "N'" + firstname + "'," +
                    "N'" + surname + "'," +
                    "N'" + middleName + "'," +
                    "N'" + drinkWhiskey + "'," +
                    age + "," +                              
                    "N'" + favBeers + "'," +
                    "N'" + eatBacon + "'," +
                    "N'" + email + "'," +
                    "N'" + password + "'" +
                    ")";

                string sqlInsertItem =
                    "INSERT INTO tItems " +
                    "VALUES (" +
                    "N'" + email + "'," +
                    0 + "," +
                    0 + "," +                            
                    0 + "," +
                    0 +
                    ")";

                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsertUser);
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsertItem);

                //str = "OK";
                Response.Redirect("Login.aspx");
            }

        }
    }
}