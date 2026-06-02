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

		if (Session["isManager"] == null || !Convert.ToBoolean(Session["isManager"])) { Response.Redirect("Login.aspx"); return; }

        if(IsPostBack){
            int selectedField = 0;

            string name = Request.Form["name"] ?? "";
            string nameemail = Request.Form["nameemail"] ?? "";
            string like = Request.Form["like"] ?? "";
            string sql = "";

            if(!string.IsNullOrWhiteSpace(name)){
                sql = "SELECT * FROM tUsers WHERE firstName = N'" + name + "' OR surname = N'" + name + "'";
            }
            else if(!string.IsNullOrWhiteSpace(nameemail)){
                sql = "SELECT * FROM tUsers WHERE firstName = N'" + nameemail + "' OR surname = N'" + nameemail + "' OR email = N'" + nameemail + "'";

            }
            else if(!string.IsNullOrWhiteSpace(like)){
                sql = "SELECT * FROM tUsers WHERE firstName LIKE N'%" + like + "%' OR surname LIKE N'%" + like + "%'";

            }

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

			if (dt.Rows.Count == 0){
                st = "No data found";
            }else{

            // build list of columns to show
            var showCols = new List<System.Data.DataColumn>();
            foreach (System.Data.DataColumn col in dt.Columns) {
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