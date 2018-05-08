using DataAcees;
using DataAcees.Common;
using DataAcees.Object;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyPhong
{
    public partial class SuaThemPhongNhanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridPhong.Khau_NV = Constant.KHAU_NV.SUA_THEM_PHONG_NHANH;
        }
    }
}