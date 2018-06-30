using DataAcees;
using DataAcees.Object;
using DevExpress.Web;
using Housing.Common;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyAnhVideo.Anh
{
    public partial class SuaAnh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID_IMAGE"] == null)
            {
                lkButton1.PostBackUrl = "~/Admin/QuanLyAnhVideo/Anh/DanhSachAnh.aspx" + "?ID=" + Request.QueryString["ID"] + "&isAV=1";
            }
            else
            lkButton1.PostBackUrl = "~/Admin/QuanLyAnhVideo/Anh/DanhSachAnh.aspx" + "?ID=" + Request.QueryString["ID_IMAGE"] + "&isAV=1";
            if (Request.QueryString["isAoS"].Equals("1"))
            {
                if (!IsPostBack)
                {
                    hidIDImage.Value = Request.QueryString["ID"];
                }
                
                btnSua.Visible = false;
                btnThem.Visible = true;
                imgAnhWeb.Visible = false;
                uploadChoalbum.AdvancedModeSettings.EnableMultiSelect = true;
            }
            else
            {
                btnSua.Visible = true;
                btnThem.Visible = false;
                imgAnhWeb.Visible = true;
                uploadChoalbum.AdvancedModeSettings.EnableMultiSelect = false;
                if (!IsPostBack)
                {
                    BindData();
                }

            }

        }


        public void BindData()
        {
            hidID.Value = Request.QueryString["ID"];
            hidIDImage.Value = Request.QueryString["ID_IMAGE"];
            Int64 ID = Convert.ToInt64(hidID.Value);
            lblTe.Text = "SỬA ẢNH CÓ ID [" + hidID.Value + "].";
            Anh_DH ctlAnh = new Anh_DH();
            Anh_Obj objAnh = ctlAnh.Anh_SelectitemID(ID);
            imgAnhWeb.ImageUrl = objAnh.IMAGE_URL;
            txtVitri.Text = objAnh.VITRI_IMAGE .ToString();
            txtHover.Text = objAnh.IMAGE_HOVER;
            txtTieuDeImage.Text = objAnh.TITLE_IMAGE;
            txtSapXep.Text = objAnh.Sap_xep.ToString();
        }

        protected void uploadChoalbum_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            Anh_DH ctl = new Anh_DH();
            Anh_Obj tmp = new Anh_Obj();
            if (uploadChoalbum.HasFile)
            {
                String UploadDirectory = utilsWeb.getPathAlbum(drDiaDiemBoAnhVideo.SelectedValue);
                string resultExtension = Path.GetExtension(e.UploadedFile.FileName);
                string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
                string resultFileUrl = UploadDirectory + resultFileName;
                string resultFilePath = MapPath(resultFileUrl);
                e.UploadedFile.SaveAs(resultFilePath);
                tmp.IMAGE_THUMB_URL = resultFileUrl;
                tmp.IMAGE_URL = resultFileUrl;
            }

             ctl.Anh_insertItem(tmp);
        }

        protected void btnUpdateAnh_Click(object sender, EventArgs e)
        {
            Anh_DH ctl = new Anh_DH();
            Anh_Obj tmp = new Anh_Obj();

            //tmp.ID_IMAGE = Convert.ToInt64(txtIdImage.Text);
            tmp.VITRI_IMAGE = txtVitri.Text;
            tmp.TITLE_IMAGE = txtTieuDeImage.Text;
            tmp.IMAGE_HOVER = txtHover.Text;

            ctl.Anh_updateItem(Convert.ToInt64(Session["ID"].ToString()), tmp);
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                Anh_DH ctl = new Anh_DH();
                Anh_Obj tmp = new Anh_Obj();
                if (uploadChoalbum.HasFile)
                {
                    String UploadDirectory = utilsWeb.getPathAlbum(drDiaDiemBoAnhVideo.SelectedValue);
                    string resultExtension = Path.GetExtension(uploadChoalbum.FileName);
                    string resultFileName = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension);
                    string resultFileUrl = UploadDirectory + resultFileName;
                    string resultFilePath = MapPath(resultFileUrl);
                    uploadChoalbum.SaveAs(resultFilePath);
                    tmp.IMAGE_THUMB_URL = resultFileUrl;
                    tmp.IMAGE_URL = resultFileUrl;
                    imgAnhWeb.ImageUrl = resultFileUrl;
                }
                else
                {
                    tmp.IMAGE_URL = imgAnhWeb.ImageUrl;
                }
               
                tmp.VITRI_IMAGE = txtVitri.Text;
                tmp.TITLE_IMAGE = txtTieuDeImage.Text;
                tmp.IMAGE_HOVER = txtHover.Text;
                tmp.Sap_xep =Convert .ToInt64 ( txtSapXep.Text);
                ctl.Anh_updateItemSua(Convert.ToInt64(hidID.Value), tmp);
                lblError.Text = "Cập nhập ảnh thành công.";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + " " + ex.StackTrace;
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Anh_DH ctl = new Anh_DH();
            Anh_Obj tmp = new Anh_Obj();

            tmp.ID_IMAGE = Convert.ToInt64( hidIDImage.Value);
            tmp.VITRI_IMAGE = txtVitri.Text;
            tmp.TITLE_IMAGE = txtTieuDeImage.Text;
            tmp.IMAGE_HOVER = txtHover.Text;
            tmp.Sap_xep =Convert .ToInt32 ( txtSapXep.Text);
            ctl.Anh_updateItem(Convert.ToInt64(hidIDImage.Value), tmp);
            lblError.Text = "Thêm ảnh thành công cho Album";
        }
    }
}