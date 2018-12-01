using Common;
using DataAcees;
using DataAcees.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI.WebControls;

namespace Housing.Common
{
    public class utilsWeb
    {

        public static String getPathAlbum(String diadiem)
        {
            string UploadDirectory = "/imageofthumb/";
            if (Convert.ToInt32(diadiem) == Constant.DIA_DIEM.DALAT)
            {
                UploadDirectory = "/ImageAlbum/DaLat/";
            }
            if (Convert.ToInt32(diadiem) == Constant.DIA_DIEM.SAPA)
            {
                UploadDirectory = "/ImageAlbum/Sapa/";
            }
            if (Convert.ToInt32(diadiem) == Constant.DIA_DIEM.HAIPHONG)
            {
                UploadDirectory = "/ImageAlbum/HaiPhong/";
            }
            if (Convert.ToInt32(diadiem) == Constant.DIA_DIEM.SAIGON)
            {
                UploadDirectory = "/ImageAlbum/SaiGon/";
            }
            return UploadDirectory;
        }

        public static void checkLogin(HttpRequest rq,HttpResponse res)
        {
            HttpCookie cookie = rq.Cookies[Constant.USER_COOKIE];
            HttpCookie cookieHistory = rq.Cookies[Constant.HISTORY];
            if (cookieHistory == null)
            {
                cookieHistory = new HttpCookie(Constant.HISTORY);
                if (!rq.Url.ToString().Contains("Login"))
                {
                    cookieHistory["path"] = rq.Url.ToString();
                    res.Cookies.Add(cookieHistory);
                }

            }
            else
            {
                if (!rq.Url.ToString().Contains("Login"))
                {
                    cookieHistory["path"] = rq.Url.ToString();
                    res.Cookies.Add(cookieHistory);
                }
            }
            if (cookie == null)
            {
                res.Redirect("~/Admin/Login.aspx");
            }
        }

        public static String getTenNha(Int32 ID)
        {
            switch (ID)
            {
                case Constant.NHA_NAO.ANAN:
                    return "[-ANAN-]";

                case Constant.NHA_NAO.SAFA:
                    return "[-SAFA-]";

                case Constant.NHA_NAO.YOKO:
                    return "[-YOKO-]";
                case Constant.NHA_NAO.TINA:
                    return "[-TINA-]";
                case Constant.NHA_NAO.SAMSAM:
                    return "[-SAMSAM-]";
                default:
                    return "[Không biết]";
            }
        }

        public static DropDownList bindataNha(DropDownList dr, Int32 role)
        {
            dr.Items.Clear();
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.ANAN))
            {
                dr.Items.Add(new ListItem("ANAN - SAPA", "1"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAFA))
            {
                dr.Items.Add(new ListItem("SAFA - SAPA", "2"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.YOKO))
            {
                dr.Items.Add(new ListItem("YOKO - DALAT", "3"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.TINA))
            {
                dr.Items.Add(new ListItem("TINA - PHUOCHAI", "4"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAMSAM ))
            {
                dr.Items.Add(new ListItem("SAMSAM - VUNGTAU", "5"));
            }
            dr.DataBind();
            return dr;
        }

        public static RadioButtonList bindataNhaHoiPhong(RadioButtonList dr, Int32 role)
        {

            dr.Items.Clear();
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.ANAN))
            {
                dr.Items.Add(new ListItem("ANAN", "1"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAFA))
            {
                dr.Items.Add(new ListItem("SAFA", "2"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.YOKO))
            {
                dr.Items.Add(new ListItem("YOKO", "3"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.TINA))
            {
                dr.Items.Add(new ListItem("TINA", "4"));
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAMSAM))
            {
                dr.Items.Add(new ListItem("SAMSAM", "5"));
            }
            dr.DataBind();

            return dr;
        }

        public static Int32 returnViTri(int role)
        {

            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.ANAN))
            {
                return Constant.NHA_NAO.ANAN;
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAFA))
            {
                return Constant.NHA_NAO.SAFA;
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.YOKO))
            {
                return Constant.NHA_NAO.YOKO;
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.TINA))
            {
                return Constant.NHA_NAO.TINA;
            }
            if (checkQuyenHienNha(role, Constant.BIT_AND_NHA_NAO.SAMSAM))
            {
                return Constant.NHA_NAO.SAMSAM;
            }
            return 0;

        }

        public static String getMaHieuPhong(Int32 nhaNao)
        {
            switch (nhaNao)
            {
                case Constant.NHA_NAO.ANAN:
                    return " (1 p2: phòng 2 người, 1 p4: phòng 4 người)";
                case Constant.NHA_NAO.SAFA:
                    return " (F1,F2,F3: phòng 2 người, F4: phòng 4 người)";
                case Constant.NHA_NAO.YOKO:
                    return " (Y1,Y2: phòng 2 người, Y3: phòng 3 người)";
                case Constant.NHA_NAO.TINA:
                    return " (CC: nhà nhỏ nguyên căn, DD: phòng dorm nhà lớn, LL: Lều sân thượng)";
                case Constant.NHA_NAO.SAMSAM:
                    return " (S1: Phòng Riêng, S2: Phòng Dorm)";
                default:
                    return "";
            }


        }

        public static Boolean checkQuyenHienNha(int Role, int Nha)
        {
            if ((Role & Nha) == Nha)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public static Boolean checkQuyenHienChucNang(int Function_Role, int Role)
        {
            if ((Function_Role & Role) == Role)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static String getKetQuaPhong(List<Trang_Thai_Phong_Obj> lstTrangThaiRoom)
        {

            String strTable1 = "";
            strTable1 += " <table cellspacing ='50' style='color:white; width: 100%'> ";
            strTable1 += "  <tr> ";
            strTable1 += "<td  align='center' style='border-right : 1px solid white;border-bottom : 1px solid white;padding-right:4px;padding-bottom:4px'> Date</td> ";
            strTable1 += " <td  align='center' style='border-bottom : 1px solid white;padding-right:4px;padding-bottom:4px'> Status</td> ";
            strTable1 += " </tr> ";

            foreach (Trang_Thai_Phong_Obj item in lstTrangThaiRoom)
            {
                strTable1 += "  <tr style='margin-top:4px'> ";
                strTable1 += "  <td style='border-right : 1px solid white;border-bottom : 1px solid white;padding-top:5px;padding-bottom:5px;padding-right:6px'> " + item.Ngay_Phong.Date.ToString("dd/MM/yyyy") + "</td> ";
                strTable1 += "  <td style='padding-left:6px;border-bottom : 1px solid white;padding-top:5px;padding-bottom:5px' > " + item.Tinh_Trang + "  " + item.Trang_Thai_Dat + "</td> ";
                strTable1 += " </tr> ";
            }

            strTable1 += "  </table> ";
            return strTable1;

        }

        public static void checkPhong(TextBox txtKetQua, int noidat, StringBuilder MaHieuPhongCon1, List<DateTime> lstNgayCheck, List<Trang_Thai_Phong_Obj> lstTrangThaiRoom)
        {
            List<LichDatPhong_Obj> lstPhong = new List<LichDatPhong_Obj>();
            Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
            int i = 1;
            foreach (DateTime item in lstNgayCheck)
            {
                Trang_Thai_Phong_Obj objTrangThaiRoom = new Trang_Thai_Phong_Obj();
                objTrangThaiRoom.Ngay_Phong = item;
                //StringBuilder MaHieuPhongCon = new StringBuilder("[PR][DT][DD]");
                StringBuilder MaHieuPhongCon = new StringBuilder(MaHieuPhongCon1.ToString());
                String[] strLoaiPhong = MaHieuPhongCon.ToString().Replace("[", "").Replace("]", "").Split(',');
                lstPhong = ctl.select_item_checkin_out(item, noidat);
                if (lstPhong.Count > 0)
                {
                    StringBuilder phongTrongNgay = new StringBuilder();

                    foreach (LichDatPhong_Obj objLich in lstPhong)
                    {
                        String[] str = objLich.So_Phong_Dat.Trim().ToUpper().Split(',');
                        foreach (String slphong in str)
                        {
                            foreach (String maPhong in strLoaiPhong)
                            {
                                if (slphong.Contains(maPhong))
                                {

                                    MaHieuPhongCon.Replace("[" + maPhong + "]", "");

                                }

                            }
                        }
                        if (objLich.Trang_Thai_Dat == 1)
                        {
                            phongTrongNgay.Append(objLich.So_Phong_Dat + " ");
                        }

                    }


                    String phongTrongNgayFinish = "";
                    if (!String.IsNullOrEmpty(phongTrongNgay.ToString()))
                    {
                        phongTrongNgayFinish = "<span style='color:red; font-weight:bold'>" + phongTrongNgay.ToString() + " Đặt Trong Ngày" + "</span>";
                        if (lstTrangThaiRoom.Count > 0)
                        {
                            lstTrangThaiRoom[lstTrangThaiRoom.Count - 1].Trang_Thai_Dat = "<span style='color:red; font-weight:bold'>" + phongTrongNgay.ToString() + " Có đặt trong ngày vào hôm sau" + "</span>"; ;
                        }

                    }

                    if (MaHieuPhongCon.ToString().Replace(",", "").Length <= 1)
                    {
                        objTrangThaiRoom.Tinh_Trang = "Hết phòng";
                    }
                    else
                    {
                        objTrangThaiRoom.Tinh_Trang = "Còn " + MaHieuPhongCon.ToString().Replace(",", "") + " có thể book.";
                    }
                    objTrangThaiRoom.Trang_Thai_Dat = phongTrongNgayFinish;
                    objTrangThaiRoom.Ma_Hieu_Phong = MaHieuPhongCon.ToString();

                    lstTrangThaiRoom.Add(objTrangThaiRoom);
                    if (lstNgayCheck.Count == i)
                    {
                        StringBuilder phongTrongNgay1 = new StringBuilder();
                        lstPhong = ctl.select_item_checkin_out(lstNgayCheck[lstNgayCheck.Count - 1].AddDays(1), noidat);
                        if (lstPhong.Count > 0)
                        {
                            foreach (LichDatPhong_Obj objLich in lstPhong)
                            {
                                if (objLich.Trang_Thai_Dat == 1)
                                {
                                    phongTrongNgay1.Append(objLich.So_Phong_Dat + " ");
                                }
                            }
                            if (!String.IsNullOrEmpty(phongTrongNgay1.ToString()))
                            {
                                if (lstTrangThaiRoom.Count > 0)
                                {
                                    lstTrangThaiRoom[lstTrangThaiRoom.Count - 1].Trang_Thai_Dat = "<span style='color:red; font-weight:bold'>" + phongTrongNgay1.ToString() + " Có đặt trong ngày vào hôm sau" + "</span>"; ;
                                }
                            }
                          
                        }
                    }
                }
                else
                {
                    objTrangThaiRoom.Tinh_Trang = "Còn " + MaHieuPhongCon.ToString().Replace(",", "") + " có thể book.";
                    objTrangThaiRoom.Ma_Hieu_Phong = MaHieuPhongCon.ToString();
                    lstTrangThaiRoom.Add(objTrangThaiRoom);
                    if (lstNgayCheck.Count == i)
                    {
                        StringBuilder phongTrongNgay1 = new StringBuilder();
                        lstPhong = ctl.select_item_checkin_out(lstNgayCheck[lstNgayCheck.Count - 1].AddDays(1), noidat);
                        if (lstPhong.Count > 0)
                        {
                            foreach (LichDatPhong_Obj objLich in lstPhong)
                            {
                                if (objLich.Trang_Thai_Dat == 1)
                                {
                                    phongTrongNgay1.Append(objLich.So_Phong_Dat + " ");
                                }
                            }
                            if (!String.IsNullOrEmpty(phongTrongNgay1.ToString()))
                            {
                                if (lstTrangThaiRoom.Count > 0)
                                {
                                    lstTrangThaiRoom[lstTrangThaiRoom.Count - 1].Trang_Thai_Dat = "<span style='color:red; font-weight:bold'>" + phongTrongNgay1.ToString() + " Có đặt trong ngày vào hôm sau" + "</span>"; ;
                                }
                            }

                        }
                    }
                }
                i += 1;
            }

            Boolean isHetPhongTina = false;
            String Ma_Hieu_Phong_MinTina = lstTrangThaiRoom[0].Ma_Hieu_Phong;
            foreach (Trang_Thai_Phong_Obj objTT in lstTrangThaiRoom)
            {
                if (objTT.Ma_Hieu_Phong.Replace(",", "").Length <= 1)
                {
                    txtKetQua.Text = "Hết Phòng rồi huhu.";
                    isHetPhongTina = true;
                    break;
                }
                if (Ma_Hieu_Phong_MinTina.Length > objTT.Ma_Hieu_Phong.Length)
                {
                    Ma_Hieu_Phong_MinTina = objTT.Ma_Hieu_Phong;
                }

            }
            if (!isHetPhongTina)
            {
                txtKetQua.Text = "Còn " + Ma_Hieu_Phong_MinTina.Replace(",", "") + " có thể book.";
            }

        }


        public static RadioButtonList bindataNhaRd(RadioButtonList dr)
        {
            dr.Items.Clear();
            dr.Items.Add(new ListItem("ANAN", "1"));
            dr.Items.Add(new ListItem("SAFA", "2"));
            dr.Items.Add(new ListItem("YOKO", "3"));
            dr.Items.Add(new ListItem("TINA", "4"));
            dr.DataBind();
            dr.SelectedIndex = 0;
            return dr;
        }

        public static bool IsNumeric(string input)
        {
            Int64 test;
            return Int64.TryParse(input, out test);
        }

    }
}