using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ehehehe : System.Web.UI.Page
{
    public string strKefel;
    protected void Page_Load(object sender, EventArgs e)
    {
        strKefel = "<table border='1' width='100%'>";

        for(int i = 1; i <= 10; i++){
            if(i % 2 == 0)
            {
                strKefel += "<tr style=\"background-color:red\">";
            }
            else
            {
                strKefel += "<tr style=\"background-color:green\">";
            }
                for (int j = 1; j <= 10; j++)
                {
                    strKefel += "<td>";
                    strKefel += i * j;
                    strKefel += "</td>";
                }
            strKefel += "</tr>";
        }
        strKefel += "</table>";
    }
}