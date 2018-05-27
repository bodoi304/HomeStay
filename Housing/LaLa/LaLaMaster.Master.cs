using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.LaLa
{
    public partial class LaLaMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.facebook.com/lalahouse/", "https://www.accuweather.com/vi/vn/ho-chi-minh-city/353981/current-weather/353981"
              , "353981", "awtd1526576912891");
            MenuFix.pnInta.Visible = false;
        }
    }
}