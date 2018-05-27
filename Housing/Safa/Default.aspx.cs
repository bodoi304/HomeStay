using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Safa
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/safahouzing01", "/icon/booknow.png", "https://www.facebook.com/SAFAHOUZING/", "https://www.accuweather.com/vi/vn/lao-cai/354305/current-weather/354305"
               , "354305", "awtd1526492367870");
        }
    }
}