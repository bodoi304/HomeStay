using DataAcees;
using DataAcees.Common;
using DataAcees.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebAPIPhong.Controllers
{
    public class HoiPhongController : ApiController
    {
        [HttpPost]
        [ActionName("hoiphongInOut")]
        public String selectPhongByInOut(object str)
        {
            ApiTranfer_Obj objApi = Utils.Json_2_Object<ApiTranfer_Obj>(str.ToString());
            switch (objApi.action)
            {
                case Constant.ACTION.SELECT_NHA_BY_IN_OUT_NHA:
                    Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                    KeySearchList obj = Utils.Json_2_Object<KeySearchList>(objApi.data.ToString());
                    List<LichDatPhong_Obj> lst = ctl.select_item_checkin_out_exact(obj.CheckIn, obj.CheckOut, obj.Nhanao);

                    List<LichDatPhong_Obj> lstOrder = (from cust in lst orderby cust.Check_in ascending select cust).ToList<LichDatPhong_Obj>();
                    return Utils.ListObject_2_Json<LichDatPhong_Obj>(lstOrder); 

                default:
                    return "[]";
            }


        }

    }
}