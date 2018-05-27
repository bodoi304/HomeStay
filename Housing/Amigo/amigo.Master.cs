using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Amigo
{
    public partial class amigo : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.facebook.com/amigohomestay/", "https://www.accuweather.com/vi/vn/vung-tau/352089/current-weather/352089"
              , "352089", "awtd1526576912891");
            MenuFix.pnInta.Visible = false;
        }
    }
}