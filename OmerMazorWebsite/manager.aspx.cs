using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page{

    public string st = "";
    protected void Page_Load(object sender, EventArgs e){
        string fn = Request.Form["firstname"];
        string sn = Request.Form["surname"];

        string sql = "SELECT * FROM tUsers WHERE firstname LIKE N'%" + fn + "%' OR surname LIKE N'%" + sn + "%'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if(dt.Rows.Count == 0){
            st = "No data found";
        }
        else{
            
        }

    }
}