using DataAcees;
using DataAcees.Object;
using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Housing.Admin.QuanLyAnhVideo.Anh
{
    public partial class DanhSachAnh : System.Web.UI.Page
    {
        public List<Video_Obj> lstVideo = new List<Video_Obj>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                hdID.Value = Request.QueryString["ID"];
                if (Request.QueryString["isAV"].Equals("1"))
                {
                    lblThemAnhChoAlBum.Visible = true;
                    lblThemAnhChoAlBum.PostBackUrl = "/Admin/QuanLyAnhVideo/Anh/SuaAnh.aspx?isAoS=1" + "&ID=" + Request.QueryString["ID"];
                    lblThongBao.Text = "ẢNH CỦA ALBUM";
                    pnVideo.Visible = false;
                    pnAnh.Visible = true;
                    Bindata();
                }
                else
                {
                    lblThemAnhChoAlBum.Visible = false ;
                    lblThongBao.Text = "VIDEO";
                    pnVideo.Visible =true ;
                    pnAnh.Visible = false;
                    Video_DH ctl = new Video_DH();
                    lstVideo = ctl.Video_Selectitem(Convert.ToInt64(hdID.Value));
                    if (lstVideo.Count > 0)
                    {
                        txtVideoUrl.Text = lstVideo[0].VIDEO_URL;
                        hdIDVideo.Value = lstVideo[0].ID_VIDEO.ToString () ;
                        btnThemVideo.Visible = false;
                        btnSuaVideo.Visible =true ;
                    }
                    else
                    {
                        btnThemVideo.Visible = true;
                        btnSuaVideo.Visible = false;
                    }
                 
                }
                
            }
        }
  


      public void Bindata()
        {
            try
            {
                List<Anh_Obj> lst = new List<Anh_Obj>();
                Anh_DH ctl = new Anh_DH();

                lst = ctl.Anh_Selectitem(Convert.ToInt64(hdID.Value));

                grd_DSAnhvideo.DataSource = lst;
                grd_DSAnhvideo.DataBind();

            }
            catch (Exception ex)
            {

                lblError.Text = ex.Message + " " + ex.StackTrace;
            }


        }

        protected void grd_DSPhong_RowCommand(object sender, ASPxGridViewRowCommandEventArgs e)
        {
            try
            {
                LinkButton Link = (LinkButton)e.CommandSource;
                if (Link.CommandName == "cmdXoa")
                {
                    String[] key = e.KeyValue.ToString().Split('|');
                    Anh_DH ctl = new Anh_DH();
                    Int64 ID = Convert.ToInt64(key[0]);


                    Anh_Obj objreturn = ctl.Anh_Deleteitem(ID);
                    if (!String.IsNullOrEmpty(objreturn.IMAGE_URL))
                    {
                        System.IO.File.Delete(MapPath(objreturn.IMAGE_URL));
                    }

                    Bindata();

                    lblError.Text = "Xóa thành công ảnh có ID [" + key[0] + "]";

                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message + " " + ex.StackTrace;
            }

        }



        //protected void grd_DSPhong_CustomColumnDisplayText(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewColumnDisplayTextEventArgs e)
        //{
        //    try
        //    {
        //        switch (e.Column.FieldName.ToString())
        //        {
            
        //            case "VITRI_IMAGE":
        //                if (e.Value.ToString() == "1")
        //                {
        //                    e.DisplayText = "Đà Lạt";
        //                }
        //                else if (e.Value.ToString() == "2")
        //                {
        //                    e.DisplayText = "Hải Phòng";
        //                }
        //                else if (e.Value.ToString() == "3")
        //                {
        //                    e.DisplayText = "Sapa";
        //                }
        //                else
        //                    e.DisplayText = "";
        //                break;
        //            default:
        //                break;
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //        lblThongBao.Text = ex.Message + " " + ex.StackTrace;
        //    }

        //}

        protected void grd_DSPhong_PageIndexChanged(object sender, EventArgs e)
        {
            Bindata();
        }

        protected void btnSuaVideo_Click(object sender, EventArgs e)
        {
            Video_DH ctlVideo = new Video_DH();
            ctlVideo.Video_Updateitem(Convert.ToInt64(hdIDVideo.Value), txtVideoUrl.Text);
            lblError.Text = "Sửa thành công video có ID [" + hdIDVideo.Value + "]";
            lstVideo.Add(new Video_Obj(txtVideoUrl.Text));
        }

        protected void btnThemVideo_Click(object sender, EventArgs e)
        {
            Video_DH ctlVideo = new Video_DH();
            ctlVideo.Video_Insertitem(Convert.ToInt64(hdID.Value), txtVideoUrl.Text);
            lblError.Text = "Thêm thành công video.";
            lstVideo.Add(new Video_Obj(txtVideoUrl.Text));
        }

}
}