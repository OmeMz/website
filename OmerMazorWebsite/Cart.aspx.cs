using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page {

    public string str = "";

    protected void Page_Load(object sender, EventArgs e){
        string email = Session["email"].ToString();
        string sql = "";
        if(Session["userRole"] != null){
            if(Session["userRole"].ToString() == "signedUser"){
                sql = "SELECT * FROM tItems WHERE userEmail LIKE '%" + email + "%'";
            }else{
                sql = "SELECT * FROM tItems";
            }
        }

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        var showCols = new List<System.Data.DataColumn>();

        foreach (System.Data.DataColumn col in dt.Columns)
        {
            showCols.Add(col);
        }

        str = "<table border='1'><tr>";
        foreach (var col in showCols)
        {
            str += "<th>" + HttpUtility.HtmlEncode(col.ColumnName) + "</th>";

        }

        str += "</tr>";

        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str += "<tr>";
            foreach (var col in showCols)
            {
                str += "<td>" + HttpUtility.HtmlEncode(Convert.ToString(dt.Rows[i][col])) + "</td>";
            }
            str += "</tr>";
        }
        str += "</table>";

    }
}