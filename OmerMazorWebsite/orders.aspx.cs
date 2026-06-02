using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            if (Session["email"] == null) return;

            string email = Session["email"].ToString();
            string chosenProduct = Request.Form["products"];

            if (chosenProduct != null && chosenProduct != "0")
            {
                string sqlUpdate =
                    "UPDATE tItems SET " + chosenProduct + " = " + chosenProduct + " + 1 " +
                    "WHERE userEmail = N'" + email + "'";

                MyAdoHelper.DoQuery("MyDB.mdf", sqlUpdate);
            }
        }
    }
}