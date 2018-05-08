using DataAcees;
using DataAcees.Object;
using DevExpress.Web.ASPxUploadControl;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Housing.Admin.QuanLyAnhVideo.QuanLyAnh
{
    public partial class ThemQuanLyAnhVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["isAoS"].Equals("1"))
            {
                btnSuaAlbum.Visible = false;
                btnThemAlbum.Visible = true;
                btnThemDuoiDuoi.Visible = true;
                btnSuaDuoi.Visible = false;
                imgAnhWeb.Visible = false;
            }
            else
            {
                btnSuaAlbum.Visible = true;
                btnThemAlbum.Visible = false;
                btnThemDuoiDuoi.Visible = false;
                btnSuaDuoi.Visible = true;
                imgAnhWeb.Visible = true;
                if (!IsPostBack)
                {
                     BindData();
                }
               
            }
            
            
        }

        protected void btnThemAlbum_Click(object sender, EventArgs e)
        {
            try
            {
                QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
                QuanLyAnhVideo_Obj tmp = new QuanLyAnhVideo_Obj();
                tmp.DIA_DIEM = Convert.ToInt16(drDiaDiemBoAnhVideo.SelectedValue);
                tmp.DURATION_VIDEO = txtduration.Text;

                tmp.IS_IMAGE_VIDEO = Convert.ToInt16(drAnhVideo.SelectedValue);
                tmp.QUOTE = txtQuote.Text;
                tmp.NAME = txtName.Text;
                if (tmp.IS_IMAGE_VIDEO == 1)
                {
                    tmp.LOAI_VIDEO = 0;
                }
                else
                {
                    tmp.LOAI_VIDEO = Convert.ToInt16(drLoaiVideo.SelectedValue);
                }

                if (tmp.IS_IMAGE_VIDEO == 1)
                {
                    tmp.LOAI_IMAGE = Convert.ToInt16(drLoaiYmage.SelectedValue);
                }
                else
                {
                    tmp.LOAI_IMAGE = 0;
                }
                String UploadDirectory = utilsWeb.getPathAlbum(drDiaDiemBoAnhVideo.SelectedValue);
                if (UploadControl.HasFile)
                {
                    string resultExtension = Path.GetExtension(UploadControl.FileName);
                    string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
                    string resultFileUrl = UploadDirectory + resultFileName;
                    string resultFilePath = MapPath(resultFileUrl);
                    UploadControl.SaveAs(resultFilePath);

                    tmp.ICON_VIDEO_IMAGE = resultFileUrl;
                }
                tmp.THU_TU_UU_TIEN = Convert.ToInt64(txtthutuuutien.Text);
                //ctl.update_QuanlyAnhVideo(Convert.ToInt64(Session["ID"].ToString()), tmp);
                ctl.Insert_QuanLyAnhVideo(tmp);
                lblError.Text = "Thêm Album thành công.";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + " " + ex.StackTrace;
            }
        }

        public void BindData()
        {
            hidID.Value = Request.QueryString["ID"];
            Int64 ID = Convert.ToInt64(hidID.Value);
            lblTe.Text = "SỬA ALBUM CÓ ID [" + hidID.Value + "].";
            QuanLyAnhVideoDH ctlQLAnh = new QuanLyAnhVideoDH();
            QuanLyAnhVideo_Obj objAlbum = ctlQLAnh.QuanLyViDeo_SelectID(ID);
            imgAnhWeb.ImageUrl = objAlbum.ICON_VIDEO_IMAGE;
            txtQuote.Text = objAlbum.QUOTE;
            txtName.Text = objAlbum.NAME;
            drAnhVideo.SelectedValue = objAlbum.IS_IMAGE_VIDEO.ToString();
            drDiaDiemBoAnhVideo.SelectedValue = objAlbum.DIA_DIEM.ToString();
            drLoaiVideo.SelectedValue = objAlbum.LOAI_VIDEO.ToString();
            drLoaiYmage.SelectedValue = objAlbum.LOAI_IMAGE.ToString();
            txtthutuuutien.Text = objAlbum.THU_TU_UU_TIEN.ToString();
            txtduration.Text = objAlbum.DURATION_VIDEO.ToString();
        }

        protected void UploadControl_FilesUploadComplete(object sender, DevExpress.Web.ASPxUploadControl.FileUploadCompleteEventArgs e)
        {
            //QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
            //string UploadDirectory = "/imageofthumb/";
            //if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == DataAcees.Common.Constant.DIA_DIEM.DALAT)
            //{
            //    UploadDirectory = "/ImageAlbum/DaLat/";
            //}
            //if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == DataAcees.Common.Constant.DIA_DIEM.SAPA)
            //{
            //    UploadDirectory = "/ImageAlbum/Sapa/";
            //}
            //if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == DataAcees.Common.Constant.DIA_DIEM.HAIPHONG)
            //{
            //    UploadDirectory = "/ImageAlbum/HaiPhong/";
            //}
            //string resultExtension = Path.GetExtension(e.UploadedFile.FileName);
            //string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
            //string resultFileUrl = UploadDirectory + resultFileName;
            //string resultFilePath = MapPath(resultFileUrl);
            //e.UploadedFile.SaveAs(resultFilePath);
            //QuanLyAnhVideo_Obj tmp = new QuanLyAnhVideo_Obj();

            //tmp.ICON_VIDEO_IMAGE = resultFileUrl;

            //Session["ID"] = ctl.Insert_QuanLyAnhVideo(tmp);
        }

        protected void btnSuaAlbum_Click(object sender, EventArgs e)
        {
            try
            {
                QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
                QuanLyAnhVideo_Obj tmp = new QuanLyAnhVideo_Obj();
                tmp.DIA_DIEM = Convert.ToInt16(drDiaDiemBoAnhVideo.SelectedValue);
                tmp.DURATION_VIDEO = txtduration.Text;

                tmp.IS_IMAGE_VIDEO = Convert.ToInt16(drAnhVideo.SelectedValue);
                tmp.QUOTE = txtQuote.Text;
                tmp.NAME = txtName.Text;
                if (tmp.IS_IMAGE_VIDEO == 1)
                {
                    tmp.LOAI_VIDEO = 0;
                }
                else
                {
                    tmp.LOAI_VIDEO = Convert.ToInt16(drLoaiVideo.SelectedValue);
                }

                if (tmp.IS_IMAGE_VIDEO == 1)
                {
                    tmp.LOAI_IMAGE = Convert.ToInt16(drLoaiYmage.SelectedValue);
                }
                else
                {
                    tmp.LOAI_IMAGE = 0;
                }
                  string resultFileUrl="";
                String UploadDirectory = utilsWeb.getPathAlbum(drDiaDiemBoAnhVideo.SelectedValue);
                if (UploadControl.HasFile)
                {
                    string resultExtension = Path.GetExtension(UploadControl.FileName);
                    string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
                     resultFileUrl = UploadDirectory + resultFileName;
                    string resultFilePath = MapPath(resultFileUrl);
                    UploadControl.SaveAs(resultFilePath);

                    tmp.ICON_VIDEO_IMAGE = resultFileUrl;
                }
                else
                {
                    tmp.ICON_VIDEO_IMAGE = imgAnhWeb.ImageUrl;
                }
               
                tmp.THU_TU_UU_TIEN = Convert.ToInt64(txtthutuuutien.Text);
                if (UploadControl.HasFile)
                {
                    if (!String.IsNullOrEmpty(imgAnhWeb.ImageUrl))
                    {
                        System.IO.File.Delete(MapPath(imgAnhWeb.ImageUrl));
                    }
                    imgAnhWeb.ImageUrl = resultFileUrl;
                }
                ctl.update_QuanlyAnhVideo(Convert.ToInt64(hidID.Value), tmp);
                lblError.Text = "Cập nhập Album thành công.";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + " " + ex.StackTrace;
            }
        }
    }
}