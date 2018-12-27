using Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyPhong
{
    public partial class QuanLyPhongMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridPhong1.Khau_NV = Constant.KHAU_NV.QUAN_LY_PHONG;
        }
    }
}