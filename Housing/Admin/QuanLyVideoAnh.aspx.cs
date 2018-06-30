using Common;
using DataAcees;
using DataAcees.Object;
using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin
{
    public partial class QuanLyVideoAnh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblID.Text =Convert.ToString( Session["ID"]);
        }


        protected void UploadControl_FilesUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
           
            QuanLyAnhVideoDH ctl = new QuanLyAnhVideoDH();
            string UploadDirectory = "/imageofthumb/";
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.DALAT)
            {
                UploadDirectory = "/ImageAlbum/DaLat/";
            }
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.SAPA)
            {
                UploadDirectory = "/ImageAlbum/Sapa/";
            }
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.HAIPHONG)
            {
                UploadDirectory = "/ImageAlbum/HaiPhong/";
            }
            string resultExtension = Path.GetExtension(e.UploadedFile.FileName);
            string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
            string resultFileUrl = UploadDirectory + resultFileName;
            string resultFilePath = MapPath(resultFileUrl);
            e.UploadedFile.SaveAs(resultFilePath);
            QuanLyAnhVideo_Obj tmp = new QuanLyAnhVideo_Obj();
  
            tmp.ICON_VIDEO_IMAGE = resultFileUrl;
          
            Session["ID"] = ctl.Insert_QuanLyAnhVideo(tmp);
           
            
        }

        protected void uploadChoalbum_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            Anh_DH ctl = new Anh_DH();
            string UploadDirectory = "/imageofthumb/";
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.DALAT)
            {
                UploadDirectory = "/ImageAlbum/DaLat/";
            }
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.SAPA)
            {
                UploadDirectory = "/ImageAlbum/Sapa/";
            }
            if (Convert.ToInt32(drDiaDiemBoAnhVideo.SelectedValue) == Constant.DIA_DIEM.HAIPHONG)
            {
                UploadDirectory = "/ImageAlbum/HaiPhong/";
            }
            string resultExtension = Path.GetExtension(e.UploadedFile.FileName);
            string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
            string resultFileUrl = UploadDirectory + resultFileName;
            string resultFilePath = MapPath(resultFileUrl);
            e.UploadedFile.SaveAs(resultFilePath);
            Anh_Obj tmp = new Anh_Obj();


            tmp.IMAGE_THUMB_URL = resultFileUrl;
            tmp.IMAGE_URL = resultFileUrl;


         Session["ID_IMAGE"] =  ctl.Anh_insertItem(tmp);
        }

        protected void btnThemAlbum_Click(object sender, EventArgs e)
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
             
             
             tmp.THU_TU_UU_TIEN = Convert.ToInt64(txtthutuuutien.Text);
             ctl.update_QuanlyAnhVideo(Convert.ToInt64(Session["ID"].ToString()), tmp);
        }

        protected void btnUpdateAnh_Click(object sender, EventArgs e)
        {
            Anh_DH ctl = new Anh_DH();
            Anh_Obj tmp = new Anh_Obj();

            tmp.ID_IMAGE =Convert .ToInt64( txtIdImage.Text);
            tmp.VITRI_IMAGE = txtVitri.Text;
            tmp.TITLE_IMAGE = txtTieuDeImage.Text;
            tmp.IMAGE_HOVER = txtHover.Text;

            ctl.Anh_updateItem(Convert.ToInt64(Session["ID_IMAGE"].ToString()),tmp);
        }

    }
}