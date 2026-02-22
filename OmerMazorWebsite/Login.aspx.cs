using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string strResult;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            string email = Request.Form["email"];
            string password = Request.Form["pass"];

            if (email.Equals("manager@gmail.com") && password.Equals("111"))
                Response.Redirect("manager.aspx");
            else
            {
                string sqlselect =
                    "Select * from tUsers " +
                    " where email = N'" + email + "' and " +
                    "password = N'" + password + "'";

                bool isExists = MyAdoHelper.IsExist(sqlselect);

                if (isExists)
                {
                    Response.Redirect("home.aspx");
                }
                else
                {
                    strResult = "משתמש לא קיים";
                }
            }
        }
    }
}