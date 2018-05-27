using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.TemplateChung
{
    public partial class MenuFix : System.Web.UI.UserControl
    {
        public String WeatherUrl;
        public String locationKey;
        public String data_uid;
        public String imageInta;
        public String urlInta;
        public String imageBook;
        public String urlBook;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void BindData(String imageInta, String urlInta, String imageBook, String urlBook, String WeatherUrl, String locationKey, String data_uid)
        {
            this.imageBook = imageBook;
            this.urlBook = urlBook;
            this.imageInta = imageInta;
            this.urlInta = urlInta;
            this.WeatherUrl = WeatherUrl;
            this.locationKey = locationKey;
            this.data_uid = data_uid;
        }
    }
}