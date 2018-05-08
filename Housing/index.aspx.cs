using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAcees;
using System.Data;
using DataAcees.Object;
namespace Housing
{
    public partial class index1 : System.Web.UI.Page
    {
        public List<QuanLyAnhVideo_Obj> lstQlAnh = new List<QuanLyAnhVideo_Obj>();
        protected void Page_Load(object sender, EventArgs e)
        {
            QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
            if (Request.QueryString["Phong"] != null)
            {
                lstQlAnh = ctl.SelectList_By_CanHo(Convert.ToInt16(Request.QueryString["Phong"]));
            }
            else if (Request.QueryString["DiaDiem"] != null)
            {
                lstQlAnh = ctl.QuanLyViDeo_SelectByDiaDiem(Convert.ToInt16(Request.QueryString["DiaDiem"]));
            }
            else if (Request.QueryString["Video"] != null)
            {
                lstQlAnh = ctl.QuanLyViDeo_SelectByLoaiVideo(Convert.ToInt16(Request.QueryString["Video"]));
            }
            else
            lstQlAnh =  ctl.SelectList_ByTKID_BaoCao();
        }
    }
}