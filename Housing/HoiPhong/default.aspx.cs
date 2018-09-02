using DataAcees;
using DataAcees.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Housing.Common;
using Common;

namespace Housing.HoiPhong
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            utilsWeb.checkLogin(Request, Response);
            if (!IsPostBack)
            {
                utilsWeb.bindataNhaHoiPhong(rddiemden, Convert.ToInt32(Request .Cookies[Constant.USER_COOKIE][Constant.NHAROLE].ToString()));
                rddiemden.SelectedIndex = 0;
            }


        }
        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            try
            {


                if (txtCheckin.Text != null)
                {
                    List<LichDatPhong_Obj> lstPhong = new List<LichDatPhong_Obj>();
                    Lich_Dat_Phong_DH ctl = new Lich_Dat_Phong_DH();
                    DateTime checkint = new DateTime(Convert.ToInt32(txtCheckin.Text.Substring(6, 4)), Convert.ToInt32(txtCheckin.Text.Substring(3, 2)), Convert.ToInt32(txtCheckin.Text.Substring(0, 2)));
                    DateTime checkout = new DateTime(Convert.ToInt32(txtCheckout.Text.Substring(6, 4)), Convert.ToInt32(txtCheckout.Text.Substring(3, 2)), Convert.ToInt32(txtCheckout.Text.Substring(0, 2)));
                    if (checkint >= checkout)
                    {
                        txtKetQua.Text = "Bạn nhập ngày sai rồi." + txtCheckin.Text + " " + txtCheckout.Text;
                        pnThongKe.Visible = false;
                        return;
                    }
                    if ((checkout - checkint).TotalDays > 35)
                    {
                        txtKetQua.Text = "Bạn vui lòng liên hệ 0912223364 nếu ở dài ngày.";
                        pnThongKe.Visible = false;
                        return;
                    }
                    List<DateTime> lstNgayCheck = new List<DateTime>();
                    while (true)
                    {
                        lstNgayCheck.Add(checkint);
                        checkint = checkint.AddDays(1);
                        if (checkint == checkout)
                        {
                            break;
                        }
                    }
                    int noidat = Convert.ToInt32(rddiemden.SelectedValue);

                    lblKetQua.Text = "Result: [" + txtCheckin.Text + " - " + txtCheckout.Text + "]";
                    switch (noidat)
                    {
                        case Constant.NHA_NAO.ANAN:
                            List<Trang_Thai_Phong_Obj> lstTrangThaiRoom = new List<Trang_Thai_Phong_Obj>();
                            foreach (DateTime item in lstNgayCheck)
                            {
                                Trang_Thai_Phong_Obj objTrangThaiRoom = new Trang_Thai_Phong_Obj();
                                objTrangThaiRoom.Ngay_Phong = item;
                                int SophongdonTheoNgay = 6;
                                int SophongdoiTheoNgay = 1;
                                lstPhong = ctl.select_item_checkin_out(item, noidat);
                                if (lstPhong.Count > 0)
                                {
                                    foreach (LichDatPhong_Obj objLich in lstPhong)
                                    {
                                        String[] str = objLich.So_Phong_Dat.Trim().Split(',');
                                        foreach (String slphong in str)
                                        {
                                            if (slphong.Contains("p2"))
                                            {

                                                SophongdonTheoNgay = SophongdonTheoNgay - Convert.ToInt32(slphong.Trim().Substring(0, 1));

                                            }
                                            if (slphong.Contains("p4"))
                                            {

                                                SophongdoiTheoNgay = SophongdoiTheoNgay - Convert.ToInt32(slphong.Trim().Substring(0, 1));

                                            }
                                        }
                                    }
                                    if (SophongdonTheoNgay == 0 && SophongdoiTheoNgay == 0)
                                    {
                                        objTrangThaiRoom.Tinh_Trang = "Hết Phòng";
                                        objTrangThaiRoom.Phong_Don_Con_Lai = SophongdonTheoNgay;
                                        objTrangThaiRoom.Phong_Doi_Con_Lai = SophongdoiTheoNgay;
                                    }
                                    else
                                    {
                                        objTrangThaiRoom.Tinh_Trang = "Còn [" + SophongdonTheoNgay + " phòng 2] - [" + SophongdoiTheoNgay + " phòng 4]";
                                        objTrangThaiRoom.Phong_Don_Con_Lai = SophongdonTheoNgay;
                                        objTrangThaiRoom.Phong_Doi_Con_Lai = SophongdoiTheoNgay;
                                    }

                                    lstTrangThaiRoom.Add(objTrangThaiRoom);
                                }
                                else
                                {
                                    objTrangThaiRoom.Tinh_Trang = "Còn [" + SophongdonTheoNgay + " phòng 2] - [" + SophongdoiTheoNgay + " phòng 4]";
                                    objTrangThaiRoom.Phong_Don_Con_Lai = SophongdonTheoNgay;
                                    objTrangThaiRoom.Phong_Doi_Con_Lai = SophongdoiTheoNgay;
                                    lstTrangThaiRoom.Add(objTrangThaiRoom);
                                }

                            }

                            int SophongdonMin = lstTrangThaiRoom[0].Phong_Don_Con_Lai;
                            int SophongdoiMin = lstTrangThaiRoom[0].Phong_Doi_Con_Lai;
                            Boolean isHetPhong = false;
                            foreach (Trang_Thai_Phong_Obj objTT in lstTrangThaiRoom)
                            {
                                if (objTT.Phong_Don_Con_Lai == 0 && objTT.Phong_Doi_Con_Lai == 0)
                                {
                                    txtKetQua.Text = "Hết Phòng rồi huhu.";
                                    isHetPhong = true;
                                    break;
                                }
                                if (SophongdonMin > objTT.Phong_Don_Con_Lai)
                                {
                                    SophongdonMin = objTT.Phong_Don_Con_Lai;
                                }
                                if (SophongdoiMin > objTT.Phong_Doi_Con_Lai)
                                {
                                    SophongdoiMin = objTT.Phong_Doi_Con_Lai;
                                }
                            }
                            if (!isHetPhong)
                            {
                                txtKetQua.Text = "Còn [" + SophongdonMin + " p2] và [" + SophongdoiMin + " p4] có thể book.";
                            }

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
                                strTable1 += "  <td style='padding-left:6px;border-bottom : 1px solid white;padding-top:5px;padding-bottom:5px' > " + item.Tinh_Trang + "</td> ";
                                strTable1 += " </tr> ";
                            }

                            strTable1 += "  </table> ";
                            lblThongKe.Text = strTable1;
                            pnThongKe.Visible = true;
                            break;

                        case Constant.NHA_NAO.SAFA:
                            List<Trang_Thai_Phong_Obj> lstTrangThaiRoomSafa = new List<Trang_Thai_Phong_Obj>();
                            StringBuilder MaHieuPhongConSaFa = new StringBuilder("[F1],[F2],[F3],[F4]");
                            utilsWeb.checkPhong(txtKetQua, noidat, MaHieuPhongConSaFa, lstNgayCheck, lstTrangThaiRoomSafa);

                            lblThongKe.Text = utilsWeb.getKetQuaPhong(lstTrangThaiRoomSafa);
                            pnThongKe.Visible = true;
                            break;

                        case Constant.NHA_NAO.YOKO:
                            List<Trang_Thai_Phong_Obj> lstTrangThaiRoomYoko = new List<Trang_Thai_Phong_Obj>();
                            StringBuilder MaHieuPhongConYoKo = new StringBuilder("[Y1],[Y2],[Y3]");
                            utilsWeb.checkPhong(txtKetQua, noidat, MaHieuPhongConYoKo, lstNgayCheck, lstTrangThaiRoomYoko);


                            lblThongKe.Text = utilsWeb.getKetQuaPhong(lstTrangThaiRoomYoko);
                            pnThongKe.Visible = true;
                            break;

                        case Constant.NHA_NAO.TINA:
                            List<Trang_Thai_Phong_Obj> lstTrangThaiRoomTina = new List<Trang_Thai_Phong_Obj>();
                            StringBuilder MaHieuPhongConTina = new StringBuilder("[CC],[DD],[LL]");
                            utilsWeb.checkPhong(txtKetQua, noidat, MaHieuPhongConTina, lstNgayCheck, lstTrangThaiRoomTina);

                            lblThongKe.Text = utilsWeb.getKetQuaPhong(lstTrangThaiRoomTina);
                            pnThongKe.Visible = true;
                            break;
                        case Constant.NHA_NAO.LALA:
                            List<Trang_Thai_Phong_Obj> lstTrangThaiRoomLaLa = new List<Trang_Thai_Phong_Obj>();
                            StringBuilder MaHieuPhongConLaLa = new StringBuilder("[L1T],[L1D],[L2],[L3],[L4]");
                            utilsWeb.checkPhong(txtKetQua, noidat, MaHieuPhongConLaLa, lstNgayCheck, lstTrangThaiRoomLaLa);

                            lblThongKe.Text = utilsWeb.getKetQuaPhong(lstTrangThaiRoomLaLa);
                            pnThongKe.Visible = true;
                            break;
                        default:
                            break;
                    }
                }
            }
            catch (Exception ex)
            {

                txtKetQua.Text = "Bạn nhập ngày checkin - checkout như @!#$%45#" + ex.Message + ex.StackTrace;
            }
        }
    }
}