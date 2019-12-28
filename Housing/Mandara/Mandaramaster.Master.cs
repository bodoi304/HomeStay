using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Mandara
{
    public partial class Mandaramaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuFix.BindData("/icon/inta.png", "https://www.instagram.com/anansapamountainair", "/icon/booknow.png", "https://www.facebook.com/mandarataythien/", "https://www.accuweather.com/vi/vn/vinh-phuc/353409/weather-forecast/353409"
                , "353409", "awtd1526492367870");
            MenuFix.pnInta.Visible = false;
        }
    }
}