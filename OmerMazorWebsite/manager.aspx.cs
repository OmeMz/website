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
        
        if(IsPostBack){
            string name = Request.Form["name"];

            string sql = "SELECT * FROM tUsers WHERE firstname LIKE N'%" + name + "%' OR surname LIKE N'%" + name + "%' OR email LIKE N'%" + name + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if(dt.Rows.Count == 0){
                st = "No data found";
            }else{
                st = "<table border='1'><tr><th>First Name</th><th>Surname</th><th>Middle Name</th><th>Whiskey Drinker</th><th>Age Group</th><th>Favourite Beer</th><th>Bacon Eater</th><th>E-Mail</th><th>Password</th></tr>";
            
                for(int i = 0; i < dt.Rows.Count; i++){
                    st += "<tr>";
                    for(int k = 0; k < dt.Columns.Count; k++){
                        st += "<td>" + dt.Rows[i][k] + "</td>";    
                    }
                    st += "</tr>";
                }
                st += "</table>";

		    }
        }
    }
}