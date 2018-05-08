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
    public class PhongController : ApiController
    {
        [HttpPost]
        [ActionName("HomeApp")]
        public String selectPhongByInOut(object str)
        {
            try
            {
                List<Int64> lstID = new List<Int64>();
                Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                ApiTranfer_Obj objApi = Utils.Json_2_Object<ApiTranfer_Obj>(str.ToString());
                switch (objApi.action)
                {
                    case Constant.ACTION.LichDatPhong_selectInOutNhaNao:

                        KeySearchList obj = Utils.Json_2_Object<KeySearchList>(objApi.data.ToString());
                        List<LichDatPhong_Obj> lst = ctl.select_item_checkin_out_exact_byPageIndex(obj.CheckIn, obj.CheckOut, obj.Nhanao, obj.pageIndex, obj.pageCount );

                      
                        return Utils.ListObject_2_Json<LichDatPhong_Obj>(lst);
                    case Constant.ACTION.LichDatPhong_selectKhachId:
                        KeySearchList obj1 = Utils.Json_2_Object<KeySearchList>(objApi.data.ToString());
                        LichDatPhong_Obj objKhach = ctl.select_item_Id(obj1.id);

                        return Utils.Object_2_Json(objKhach);
                    case Constant.ACTION.LichDatPhong_DeleteKhachId:
                        KeySearchList obj2 = Utils.Json_2_Object<KeySearchList>(objApi.data.ToString());
                        lstID.Add(obj2.id);
                        Boolean result = ctl.delete_lich_dat_phong(lstID);
                        String str11 = "";
                        if (result)
                        {
                            str11 = "true";
                        }
                        else
                            str11 = "false";
                        return "[{'result': '" + str11 + "'}]";
                    case Constant.ACTION.LogIn:
                        KeySearchList objLog = Utils.Json_2_Object<KeySearchList>(objApi.data.ToString());
                        User_DH ctlUser = new User_DH();
                        User_Obj objUser = ctlUser.Check_User(objLog.userName, objLog.passWord);
                        if (objUser == null)
                        {
                            return "{\"error\": \"Tài khoản đăng nhập không tồn tại\"}";
                        }

                        return Utils.Object_2_Json(objUser);
                    default:
                        return "{\"error\": \"không tồn tại action\"}";
                }

            }
            catch (Exception ex)
            {

                return "{\"errorHT\": \"" + ex.Message + " - " + ex.StackTrace + "\"}";
            }
          

        }

        

    }
}