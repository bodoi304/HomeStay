using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.ThongTinHappyHouzing
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.accuweather.com/vi/vn/haiphong/353511/current-weather/353511", "https://www.accuweather.com/vi/vn/vung-tau/352089/current-weather/352089"
              , "353511", "awtd1526577374834");
            MenuFix.pnInta.Visible = false;
        }
    }
}