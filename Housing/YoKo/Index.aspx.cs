using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.YoKo
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/yokohousedalat", "/icon/booknow.png", "https://www.facebook.com/yokohouse01",
                "https://www.accuweather.com/vi/vn/da-lat/354287/current-weather/354287"
               , "354287", "awtd1526571483105");
            for(int i = 0; i < 15; i++)
            {

            }
        }
    }
}