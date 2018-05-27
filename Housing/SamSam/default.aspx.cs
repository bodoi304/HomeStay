using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.SamSam
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/samsamhouzing", "/icon/booknow.png", "https://www.facebook.com/samsamhouzing/", "https://www.accuweather.com/vi/vn/vung-tau/352089/current-weather/352089"
              , "352089", "awtd1526576912891");
            MenuFix.pnInta.Visible = false;
        }
    }
}