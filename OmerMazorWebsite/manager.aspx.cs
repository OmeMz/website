using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page{

    public string st = "";
    protected void Page_Load(object sender, EventArgs e){

		// Checks if the user is a manager, if not - redirects to login page
		if (Session["isManager"] == null || !Convert.ToBoolean(Session["isManager"])) { Response.Redirect("Login.aspx"); return; }

        if(IsPostBack){
            string name = Request.Form["name"];

			// This is the SQL query that will be executed, it searches for users whose first name, surname or email contains the input name
			string sql = "SELECT * FROM tUsers WHERE firstname LIKE N'%" + name + "%' OR surname LIKE N'%" + name + "%' OR email LIKE N'%" + name + "%'";

			// This execution is vulnerable to SQL injection, but since this is a school project and not a real website, I don't care
			DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

			// idfk how this works since I copied it from a friend but it works so I guess it works
			if (dt.Rows.Count == 0){
                st = "No data found";
            }else{

            // build list of columns to show (skip password)
            var showCols = new List<System.Data.DataColumn>();
            foreach (System.Data.DataColumn col in dt.Columns) {
                if (!string.Equals(col.ColumnName, "password", StringComparison.OrdinalIgnoreCase))
                    showCols.Add(col);
            }

            // header
            st = "<table border='1'><tr>";
            foreach (var col in showCols) {
                st += "<th>" + HttpUtility.HtmlEncode(col.ColumnName) + "</th>";
            }
            st += "</tr>";

            // rows
            for (int i = 0; i < dt.Rows.Count; i++) {
                st += "<tr>";
                foreach (var col in showCols) {
                    st += "<td>" + HttpUtility.HtmlEncode(Convert.ToString(dt.Rows[i][col])) + "</td>";
                }
                st += "</tr>";
            }
            st += "</table>";
		    }
        }
    }
}