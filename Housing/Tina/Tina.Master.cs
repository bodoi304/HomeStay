using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Tina
{
    public partial class Tina : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix1.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.facebook.com/tinahomestay/", "https://www.accuweather.com/vi/vn/ba-ria/352095/weather-forecast/352095"
              , "352095", "awtd1526576912891");
            MenuFix1.pnInta.Visible = false;
        }
    }
}