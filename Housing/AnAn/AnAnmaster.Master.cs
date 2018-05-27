using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.AnAn
{
    public partial class AnAnmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.facebook.com/anansapa/", "https://www.accuweather.com/vi/vn/lao-cai/354305/current-weather/354305"
                , "354305", "awtd1526492367870");
        }
    }
}