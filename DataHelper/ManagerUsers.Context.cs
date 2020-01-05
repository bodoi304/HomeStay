﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataHelper
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class HouzingEntities : DbContext
    {
        public HouzingEntities()
            : base("name=HouzingEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AccountLog> AccountLogs { get; set; }
        public virtual DbSet<Anh> Anhs { get; set; }
        public virtual DbSet<Answer> Answers { get; set; }
        public virtual DbSet<CategoryDocument> CategoryDocuments { get; set; }
        public virtual DbSet<Document> Documents { get; set; }
        public virtual DbSet<Group> Groups { get; set; }
        public virtual DbSet<Lich_Dat_Phong> Lich_Dat_Phong { get; set; }
        public virtual DbSet<MenuItemFunction> MenuItemFunctions { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Quan_Ly_Chi_Phi> Quan_Ly_Chi_Phi { get; set; }
        public virtual DbSet<Quan_Ly_Ghi_No> Quan_Ly_Ghi_No { get; set; }
        public virtual DbSet<QuanLyAnhVideo> QuanLyAnhVideos { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Subject> Subjects { get; set; }
        public virtual DbSet<Users> Users { get; set; }
        public virtual DbSet<VIDEO> VIDEOs { get; set; }
    
        [DbFunction("HouzingEntities", "IntegerCommaSplit")]
        public virtual IQueryable<IntegerCommaSplit_Result> IntegerCommaSplit(string listofIds)
        {
            var listofIdsParameter = listofIds != null ?
                new ObjectParameter("ListofIds", listofIds) :
                new ObjectParameter("ListofIds", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<IntegerCommaSplit_Result>("[HouzingEntities].[IntegerCommaSplit](@ListofIds)", listofIdsParameter);
        }
    
        public virtual ObjectResult<Anh_Deleteitem_Result> Anh_Deleteitem(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Anh_Deleteitem_Result>("Anh_Deleteitem", iDParameter);
        }
    
        public virtual int Anh_insertItem(Nullable<long> iD_IMAGE, string iMAGE_THUMB_URL, string iMAGE_URL, string vITRI_IMAGE, string tITLE_IMAGE, string iMAGE_HOVER)
        {
            var iD_IMAGEParameter = iD_IMAGE.HasValue ?
                new ObjectParameter("ID_IMAGE", iD_IMAGE) :
                new ObjectParameter("ID_IMAGE", typeof(long));
    
            var iMAGE_THUMB_URLParameter = iMAGE_THUMB_URL != null ?
                new ObjectParameter("IMAGE_THUMB_URL", iMAGE_THUMB_URL) :
                new ObjectParameter("IMAGE_THUMB_URL", typeof(string));
    
            var iMAGE_URLParameter = iMAGE_URL != null ?
                new ObjectParameter("IMAGE_URL", iMAGE_URL) :
                new ObjectParameter("IMAGE_URL", typeof(string));
    
            var vITRI_IMAGEParameter = vITRI_IMAGE != null ?
                new ObjectParameter("VITRI_IMAGE", vITRI_IMAGE) :
                new ObjectParameter("VITRI_IMAGE", typeof(string));
    
            var tITLE_IMAGEParameter = tITLE_IMAGE != null ?
                new ObjectParameter("TITLE_IMAGE", tITLE_IMAGE) :
                new ObjectParameter("TITLE_IMAGE", typeof(string));
    
            var iMAGE_HOVERParameter = iMAGE_HOVER != null ?
                new ObjectParameter("IMAGE_HOVER", iMAGE_HOVER) :
                new ObjectParameter("IMAGE_HOVER", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Anh_insertItem", iD_IMAGEParameter, iMAGE_THUMB_URLParameter, iMAGE_URLParameter, vITRI_IMAGEParameter, tITLE_IMAGEParameter, iMAGE_HOVERParameter);
        }
    
        public virtual ObjectResult<Anh_Selectitem_Result> Anh_Selectitem(Nullable<long> iD_IMAGE)
        {
            var iD_IMAGEParameter = iD_IMAGE.HasValue ?
                new ObjectParameter("ID_IMAGE", iD_IMAGE) :
                new ObjectParameter("ID_IMAGE", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Anh_Selectitem_Result>("Anh_Selectitem", iD_IMAGEParameter);
        }
    
        public virtual ObjectResult<Anh_SelectitemID_Result> Anh_SelectitemID(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Anh_SelectitemID_Result>("Anh_SelectitemID", iDParameter);
        }
    
        public virtual int Anh_updateItem(Nullable<long> iD, Nullable<long> iD_IMAGE, string vITRI_IMAGE, string tITLE_IMAGE, string iMAGE_HOVER)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            var iD_IMAGEParameter = iD_IMAGE.HasValue ?
                new ObjectParameter("ID_IMAGE", iD_IMAGE) :
                new ObjectParameter("ID_IMAGE", typeof(long));
    
            var vITRI_IMAGEParameter = vITRI_IMAGE != null ?
                new ObjectParameter("VITRI_IMAGE", vITRI_IMAGE) :
                new ObjectParameter("VITRI_IMAGE", typeof(string));
    
            var tITLE_IMAGEParameter = tITLE_IMAGE != null ?
                new ObjectParameter("TITLE_IMAGE", tITLE_IMAGE) :
                new ObjectParameter("TITLE_IMAGE", typeof(string));
    
            var iMAGE_HOVERParameter = iMAGE_HOVER != null ?
                new ObjectParameter("IMAGE_HOVER", iMAGE_HOVER) :
                new ObjectParameter("IMAGE_HOVER", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Anh_updateItem", iDParameter, iD_IMAGEParameter, vITRI_IMAGEParameter, tITLE_IMAGEParameter, iMAGE_HOVERParameter);
        }
    
        public virtual int Anh_updateItemSua(Nullable<long> iD, string vITRI_IMAGE, string tITLE_IMAGE, string iMAGE_HOVER, string iMAGE_URL, Nullable<long> sap_xep)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            var vITRI_IMAGEParameter = vITRI_IMAGE != null ?
                new ObjectParameter("VITRI_IMAGE", vITRI_IMAGE) :
                new ObjectParameter("VITRI_IMAGE", typeof(string));
    
            var tITLE_IMAGEParameter = tITLE_IMAGE != null ?
                new ObjectParameter("TITLE_IMAGE", tITLE_IMAGE) :
                new ObjectParameter("TITLE_IMAGE", typeof(string));
    
            var iMAGE_HOVERParameter = iMAGE_HOVER != null ?
                new ObjectParameter("IMAGE_HOVER", iMAGE_HOVER) :
                new ObjectParameter("IMAGE_HOVER", typeof(string));
    
            var iMAGE_URLParameter = iMAGE_URL != null ?
                new ObjectParameter("IMAGE_URL", iMAGE_URL) :
                new ObjectParameter("IMAGE_URL", typeof(string));
    
            var sap_xepParameter = sap_xep.HasValue ?
                new ObjectParameter("Sap_xep", sap_xep) :
                new ObjectParameter("Sap_xep", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Anh_updateItemSua", iDParameter, vITRI_IMAGEParameter, tITLE_IMAGEParameter, iMAGE_HOVERParameter, iMAGE_URLParameter, sap_xepParameter);
        }
    
        public virtual int ApplicationUserRoles_DeleteItem(Nullable<long> userId, Nullable<int> roleID)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("UserId", userId) :
                new ObjectParameter("UserId", typeof(long));
    
            var roleIDParameter = roleID.HasValue ?
                new ObjectParameter("RoleID", roleID) :
                new ObjectParameter("RoleID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ApplicationUserRoles_DeleteItem", userIdParameter, roleIDParameter);
        }
    
        public virtual int ApplicationUserRoles_InsertItem(Nullable<long> userId, Nullable<int> roleID)
        {
            var userIdParameter = userId.HasValue ?
                new ObjectParameter("UserId", userId) :
                new ObjectParameter("UserId", typeof(long));
    
            var roleIDParameter = roleID.HasValue ?
                new ObjectParameter("RoleID", roleID) :
                new ObjectParameter("RoleID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("ApplicationUserRoles_InsertItem", userIdParameter, roleIDParameter);
        }
    
        public virtual ObjectResult<Check_User_Result> Check_User(string user_Name, string password)
        {
            var user_NameParameter = user_Name != null ?
                new ObjectParameter("User_Name", user_Name) :
                new ObjectParameter("User_Name", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Check_User_Result>("Check_User", user_NameParameter, passwordParameter);
        }
    
        public virtual int delete_lich_dat_phong(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("delete_lich_dat_phong", iDParameter);
        }
    
        public virtual int Insert_QuanLyAnhVideo(Nullable<short> iS_IMAGE_VIDEO, string qUOTE, string nAME, string iCON_VIDEO_IMAGE, string dURATION_VIDEO, Nullable<short> dIA_DIEM, Nullable<short> lOAI_VIDEO, Nullable<short> lOAI_IMAGE, Nullable<long> tHU_TU_UU_TIEN)
        {
            var iS_IMAGE_VIDEOParameter = iS_IMAGE_VIDEO.HasValue ?
                new ObjectParameter("IS_IMAGE_VIDEO", iS_IMAGE_VIDEO) :
                new ObjectParameter("IS_IMAGE_VIDEO", typeof(short));
    
            var qUOTEParameter = qUOTE != null ?
                new ObjectParameter("QUOTE", qUOTE) :
                new ObjectParameter("QUOTE", typeof(string));
    
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var iCON_VIDEO_IMAGEParameter = iCON_VIDEO_IMAGE != null ?
                new ObjectParameter("ICON_VIDEO_IMAGE", iCON_VIDEO_IMAGE) :
                new ObjectParameter("ICON_VIDEO_IMAGE", typeof(string));
    
            var dURATION_VIDEOParameter = dURATION_VIDEO != null ?
                new ObjectParameter("DURATION_VIDEO", dURATION_VIDEO) :
                new ObjectParameter("DURATION_VIDEO", typeof(string));
    
            var dIA_DIEMParameter = dIA_DIEM.HasValue ?
                new ObjectParameter("DIA_DIEM", dIA_DIEM) :
                new ObjectParameter("DIA_DIEM", typeof(short));
    
            var lOAI_VIDEOParameter = lOAI_VIDEO.HasValue ?
                new ObjectParameter("LOAI_VIDEO", lOAI_VIDEO) :
                new ObjectParameter("LOAI_VIDEO", typeof(short));
    
            var lOAI_IMAGEParameter = lOAI_IMAGE.HasValue ?
                new ObjectParameter("LOAI_IMAGE", lOAI_IMAGE) :
                new ObjectParameter("LOAI_IMAGE", typeof(short));
    
            var tHU_TU_UU_TIENParameter = tHU_TU_UU_TIEN.HasValue ?
                new ObjectParameter("THU_TU_UU_TIEN", tHU_TU_UU_TIEN) :
                new ObjectParameter("THU_TU_UU_TIEN", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Insert_QuanLyAnhVideo", iS_IMAGE_VIDEOParameter, qUOTEParameter, nAMEParameter, iCON_VIDEO_IMAGEParameter, dURATION_VIDEOParameter, dIA_DIEMParameter, lOAI_VIDEOParameter, lOAI_IMAGEParameter, tHU_TU_UU_TIENParameter);
        }
    
        public virtual ObjectResult<Nullable<decimal>> Lich_Dat_Phong_InsertItem(string ten_Khach_Hang, string so_Dien_Thoai, Nullable<System.DateTime> ngay_Sinh_Nhat, string noi_Song, string so_Phong_Dat, Nullable<System.DateTime> check_in, Nullable<System.DateTime> check_out, Nullable<decimal> tong_tien_phong, Nullable<decimal> tien_chuyen_khoan, string trang_Thai_CK, Nullable<decimal> tien_Con_Phai_Tra, Nullable<int> tong_so_dem, string quoc_Gia, string ghi_chu, string thu_checkin, string th_checkout, Nullable<int> nha_Nao, string nguoi_Nhap, Nullable<int> trangThai, Nullable<int> trang_Thai_Dat)
        {
            var ten_Khach_HangParameter = ten_Khach_Hang != null ?
                new ObjectParameter("Ten_Khach_Hang", ten_Khach_Hang) :
                new ObjectParameter("Ten_Khach_Hang", typeof(string));
    
            var so_Dien_ThoaiParameter = so_Dien_Thoai != null ?
                new ObjectParameter("So_Dien_Thoai", so_Dien_Thoai) :
                new ObjectParameter("So_Dien_Thoai", typeof(string));
    
            var ngay_Sinh_NhatParameter = ngay_Sinh_Nhat.HasValue ?
                new ObjectParameter("Ngay_Sinh_Nhat", ngay_Sinh_Nhat) :
                new ObjectParameter("Ngay_Sinh_Nhat", typeof(System.DateTime));
    
            var noi_SongParameter = noi_Song != null ?
                new ObjectParameter("Noi_Song", noi_Song) :
                new ObjectParameter("Noi_Song", typeof(string));
    
            var so_Phong_DatParameter = so_Phong_Dat != null ?
                new ObjectParameter("So_Phong_Dat", so_Phong_Dat) :
                new ObjectParameter("So_Phong_Dat", typeof(string));
    
            var check_inParameter = check_in.HasValue ?
                new ObjectParameter("Check_in", check_in) :
                new ObjectParameter("Check_in", typeof(System.DateTime));
    
            var check_outParameter = check_out.HasValue ?
                new ObjectParameter("Check_out", check_out) :
                new ObjectParameter("Check_out", typeof(System.DateTime));
    
            var tong_tien_phongParameter = tong_tien_phong.HasValue ?
                new ObjectParameter("Tong_tien_phong", tong_tien_phong) :
                new ObjectParameter("Tong_tien_phong", typeof(decimal));
    
            var tien_chuyen_khoanParameter = tien_chuyen_khoan.HasValue ?
                new ObjectParameter("Tien_chuyen_khoan", tien_chuyen_khoan) :
                new ObjectParameter("Tien_chuyen_khoan", typeof(decimal));
    
            var trang_Thai_CKParameter = trang_Thai_CK != null ?
                new ObjectParameter("Trang_Thai_CK", trang_Thai_CK) :
                new ObjectParameter("Trang_Thai_CK", typeof(string));
    
            var tien_Con_Phai_TraParameter = tien_Con_Phai_Tra.HasValue ?
                new ObjectParameter("Tien_Con_Phai_Tra", tien_Con_Phai_Tra) :
                new ObjectParameter("Tien_Con_Phai_Tra", typeof(decimal));
    
            var tong_so_demParameter = tong_so_dem.HasValue ?
                new ObjectParameter("Tong_so_dem", tong_so_dem) :
                new ObjectParameter("Tong_so_dem", typeof(int));
    
            var quoc_GiaParameter = quoc_Gia != null ?
                new ObjectParameter("Quoc_Gia", quoc_Gia) :
                new ObjectParameter("Quoc_Gia", typeof(string));
    
            var ghi_chuParameter = ghi_chu != null ?
                new ObjectParameter("Ghi_chu", ghi_chu) :
                new ObjectParameter("Ghi_chu", typeof(string));
    
            var thu_checkinParameter = thu_checkin != null ?
                new ObjectParameter("Thu_checkin", thu_checkin) :
                new ObjectParameter("Thu_checkin", typeof(string));
    
            var th_checkoutParameter = th_checkout != null ?
                new ObjectParameter("Th_checkout", th_checkout) :
                new ObjectParameter("Th_checkout", typeof(string));
    
            var nha_NaoParameter = nha_Nao.HasValue ?
                new ObjectParameter("Nha_Nao", nha_Nao) :
                new ObjectParameter("Nha_Nao", typeof(int));
    
            var nguoi_NhapParameter = nguoi_Nhap != null ?
                new ObjectParameter("Nguoi_Nhap", nguoi_Nhap) :
                new ObjectParameter("Nguoi_Nhap", typeof(string));
    
            var trangThaiParameter = trangThai.HasValue ?
                new ObjectParameter("TrangThai", trangThai) :
                new ObjectParameter("TrangThai", typeof(int));
    
            var trang_Thai_DatParameter = trang_Thai_Dat.HasValue ?
                new ObjectParameter("Trang_Thai_Dat", trang_Thai_Dat) :
                new ObjectParameter("Trang_Thai_Dat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<decimal>>("Lich_Dat_Phong_InsertItem", ten_Khach_HangParameter, so_Dien_ThoaiParameter, ngay_Sinh_NhatParameter, noi_SongParameter, so_Phong_DatParameter, check_inParameter, check_outParameter, tong_tien_phongParameter, tien_chuyen_khoanParameter, trang_Thai_CKParameter, tien_Con_Phai_TraParameter, tong_so_demParameter, quoc_GiaParameter, ghi_chuParameter, thu_checkinParameter, th_checkoutParameter, nha_NaoParameter, nguoi_NhapParameter, trangThaiParameter, trang_Thai_DatParameter);
        }
    
        public virtual int MenuItemRoles_DeleteByRoleID(Nullable<int> iDRole)
        {
            var iDRoleParameter = iDRole.HasValue ?
                new ObjectParameter("IDRole", iDRole) :
                new ObjectParameter("IDRole", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("MenuItemRoles_DeleteByRoleID", iDRoleParameter);
        }
    
        public virtual int MenuItemRoles_InsertItem(string menuItem_ID, Nullable<int> role_ID)
        {
            var menuItem_IDParameter = menuItem_ID != null ?
                new ObjectParameter("MenuItem_ID", menuItem_ID) :
                new ObjectParameter("MenuItem_ID", typeof(string));
    
            var role_IDParameter = role_ID.HasValue ?
                new ObjectParameter("Role_ID", role_ID) :
                new ObjectParameter("Role_ID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("MenuItemRoles_InsertItem", menuItem_IDParameter, role_IDParameter);
        }
    
        public virtual ObjectResult<qlchiphi_select_item_ngaytao_exact_Result> qlchiphi_select_item_ngaytao_exact(Nullable<System.DateTime> ngaytao_tu, Nullable<System.DateTime> ngaytao_den, Nullable<int> nhaNao)
        {
            var ngaytao_tuParameter = ngaytao_tu.HasValue ?
                new ObjectParameter("ngaytao_tu", ngaytao_tu) :
                new ObjectParameter("ngaytao_tu", typeof(System.DateTime));
    
            var ngaytao_denParameter = ngaytao_den.HasValue ?
                new ObjectParameter("ngaytao_den", ngaytao_den) :
                new ObjectParameter("ngaytao_den", typeof(System.DateTime));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<qlchiphi_select_item_ngaytao_exact_Result>("qlchiphi_select_item_ngaytao_exact", ngaytao_tuParameter, ngaytao_denParameter, nhaNaoParameter);
        }
    
        public virtual ObjectResult<QuanLyVideo_deleteById_Result> QuanLyVideo_deleteById(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyVideo_deleteById_Result>("QuanLyVideo_deleteById", iDParameter);
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectAll_Result> QuanLyViDeo_SelectAll()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectAll_Result>("QuanLyViDeo_SelectAll");
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectAll_QL_Result> QuanLyViDeo_SelectAll_QL()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectAll_QL_Result>("QuanLyViDeo_SelectAll_QL");
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectByCanHo_Result> QuanLyViDeo_SelectByCanHo(Nullable<short> lOAI_IMAGE)
        {
            var lOAI_IMAGEParameter = lOAI_IMAGE.HasValue ?
                new ObjectParameter("LOAI_IMAGE", lOAI_IMAGE) :
                new ObjectParameter("LOAI_IMAGE", typeof(short));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectByCanHo_Result>("QuanLyViDeo_SelectByCanHo", lOAI_IMAGEParameter);
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectByDiaDiem_Result> QuanLyViDeo_SelectByDiaDiem(Nullable<short> dIA_DIEM)
        {
            var dIA_DIEMParameter = dIA_DIEM.HasValue ?
                new ObjectParameter("DIA_DIEM", dIA_DIEM) :
                new ObjectParameter("DIA_DIEM", typeof(short));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectByDiaDiem_Result>("QuanLyViDeo_SelectByDiaDiem", dIA_DIEMParameter);
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectByLoaiVideo_Result> QuanLyViDeo_SelectByLoaiVideo(Nullable<int> loai_video)
        {
            var loai_videoParameter = loai_video.HasValue ?
                new ObjectParameter("Loai_video", loai_video) :
                new ObjectParameter("Loai_video", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectByLoaiVideo_Result>("QuanLyViDeo_SelectByLoaiVideo", loai_videoParameter);
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectID_Result> QuanLyViDeo_SelectID(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectID_Result>("QuanLyViDeo_SelectID", iDParameter);
        }
    
        public virtual ObjectResult<QuanLyViDeo_SelectIsAnhVideo_Result> QuanLyViDeo_SelectIsAnhVideo(Nullable<short> isAnhVideo)
        {
            var isAnhVideoParameter = isAnhVideo.HasValue ?
                new ObjectParameter("isAnhVideo", isAnhVideo) :
                new ObjectParameter("isAnhVideo", typeof(short));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<QuanLyViDeo_SelectIsAnhVideo_Result>("QuanLyViDeo_SelectIsAnhVideo", isAnhVideoParameter);
        }
    
        public virtual ObjectResult<select_item_checkin_out_Result> select_item_checkin_out(Nullable<System.DateTime> check, Nullable<int> nhaNao)
        {
            var checkParameter = check.HasValue ?
                new ObjectParameter("check", check) :
                new ObjectParameter("check", typeof(System.DateTime));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_checkin_out_Result>("select_item_checkin_out", checkParameter, nhaNaoParameter);
        }
    
        public virtual ObjectResult<select_item_checkin_out_exact_Result> select_item_checkin_out_exact(Nullable<System.DateTime> checkin, Nullable<System.DateTime> checkout, Nullable<int> nhaNao)
        {
            var checkinParameter = checkin.HasValue ?
                new ObjectParameter("checkin", checkin) :
                new ObjectParameter("checkin", typeof(System.DateTime));
    
            var checkoutParameter = checkout.HasValue ?
                new ObjectParameter("checkout", checkout) :
                new ObjectParameter("checkout", typeof(System.DateTime));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_checkin_out_exact_Result>("select_item_checkin_out_exact", checkinParameter, checkoutParameter, nhaNaoParameter);
        }
    
        public virtual ObjectResult<select_item_checkin_out_exact_byPageIndex_Result> select_item_checkin_out_exact_byPageIndex(Nullable<System.DateTime> checkin, Nullable<System.DateTime> checkout, Nullable<int> nhaNao, Nullable<int> pageIndex, Nullable<int> pageSize)
        {
            var checkinParameter = checkin.HasValue ?
                new ObjectParameter("checkin", checkin) :
                new ObjectParameter("checkin", typeof(System.DateTime));
    
            var checkoutParameter = checkout.HasValue ?
                new ObjectParameter("checkout", checkout) :
                new ObjectParameter("checkout", typeof(System.DateTime));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            var pageIndexParameter = pageIndex.HasValue ?
                new ObjectParameter("PageIndex", pageIndex) :
                new ObjectParameter("PageIndex", typeof(int));
    
            var pageSizeParameter = pageSize.HasValue ?
                new ObjectParameter("PageSize", pageSize) :
                new ObjectParameter("PageSize", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_checkin_out_exact_byPageIndex_Result>("select_item_checkin_out_exact_byPageIndex", checkinParameter, checkoutParameter, nhaNaoParameter, pageIndexParameter, pageSizeParameter);
        }
    
        public virtual ObjectResult<select_item_Id_Result> select_item_Id(Nullable<long> iD)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_Id_Result>("select_item_Id", iDParameter);
        }
    
        public virtual ObjectResult<select_item_ngaytao_exact_Result> select_item_ngaytao_exact(Nullable<System.DateTime> ngaytao_tu, Nullable<System.DateTime> ngaytao_den, Nullable<int> nhaNao)
        {
            var ngaytao_tuParameter = ngaytao_tu.HasValue ?
                new ObjectParameter("ngaytao_tu", ngaytao_tu) :
                new ObjectParameter("ngaytao_tu", typeof(System.DateTime));
    
            var ngaytao_denParameter = ngaytao_den.HasValue ?
                new ObjectParameter("ngaytao_den", ngaytao_den) :
                new ObjectParameter("ngaytao_den", typeof(System.DateTime));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_ngaytao_exact_Result>("select_item_ngaytao_exact", ngaytao_tuParameter, ngaytao_denParameter, nhaNaoParameter);
        }
    
        public virtual ObjectResult<select_item_Sdt_Result> select_item_Sdt(string sodienthoai, Nullable<int> nhaNao)
        {
            var sodienthoaiParameter = sodienthoai != null ?
                new ObjectParameter("sodienthoai", sodienthoai) :
                new ObjectParameter("sodienthoai", typeof(string));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_item_Sdt_Result>("select_item_Sdt", sodienthoaiParameter, nhaNaoParameter);
        }
    
        public virtual ObjectResult<select_list_trangthai_Result> select_list_trangthai(Nullable<int> trangThai, Nullable<int> nhaNao)
        {
            var trangThaiParameter = trangThai.HasValue ?
                new ObjectParameter("TrangThai", trangThai) :
                new ObjectParameter("TrangThai", typeof(int));
    
            var nhaNaoParameter = nhaNao.HasValue ?
                new ObjectParameter("NhaNao", nhaNao) :
                new ObjectParameter("NhaNao", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<select_list_trangthai_Result>("select_list_trangthai", trangThaiParameter, nhaNaoParameter);
        }
    
        public virtual int update_lich_dat_phong(Nullable<long> iD, string ten_Khach_Hang, Nullable<System.DateTime> checkin, Nullable<System.DateTime> checkout, string so_Dien_Thoai, Nullable<System.DateTime> ngay_Sinh_Nhat, Nullable<decimal> tong_tien_phong, Nullable<decimal> tien_chuyen_khoan, Nullable<decimal> tien_Con_Phai_Tra, string so_Phong_Dat, string nguoi_nhap, Nullable<int> trangThai, string trang_Thai_CK, Nullable<int> nha_Nao, string ghi_chu, Nullable<int> trang_Thai_Dat)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            var ten_Khach_HangParameter = ten_Khach_Hang != null ?
                new ObjectParameter("Ten_Khach_Hang", ten_Khach_Hang) :
                new ObjectParameter("Ten_Khach_Hang", typeof(string));
    
            var checkinParameter = checkin.HasValue ?
                new ObjectParameter("checkin", checkin) :
                new ObjectParameter("checkin", typeof(System.DateTime));
    
            var checkoutParameter = checkout.HasValue ?
                new ObjectParameter("checkout", checkout) :
                new ObjectParameter("checkout", typeof(System.DateTime));
    
            var so_Dien_ThoaiParameter = so_Dien_Thoai != null ?
                new ObjectParameter("So_Dien_Thoai", so_Dien_Thoai) :
                new ObjectParameter("So_Dien_Thoai", typeof(string));
    
            var ngay_Sinh_NhatParameter = ngay_Sinh_Nhat.HasValue ?
                new ObjectParameter("Ngay_Sinh_Nhat", ngay_Sinh_Nhat) :
                new ObjectParameter("Ngay_Sinh_Nhat", typeof(System.DateTime));
    
            var tong_tien_phongParameter = tong_tien_phong.HasValue ?
                new ObjectParameter("Tong_tien_phong", tong_tien_phong) :
                new ObjectParameter("Tong_tien_phong", typeof(decimal));
    
            var tien_chuyen_khoanParameter = tien_chuyen_khoan.HasValue ?
                new ObjectParameter("Tien_chuyen_khoan", tien_chuyen_khoan) :
                new ObjectParameter("Tien_chuyen_khoan", typeof(decimal));
    
            var tien_Con_Phai_TraParameter = tien_Con_Phai_Tra.HasValue ?
                new ObjectParameter("Tien_Con_Phai_Tra", tien_Con_Phai_Tra) :
                new ObjectParameter("Tien_Con_Phai_Tra", typeof(decimal));
    
            var so_Phong_DatParameter = so_Phong_Dat != null ?
                new ObjectParameter("So_Phong_Dat", so_Phong_Dat) :
                new ObjectParameter("So_Phong_Dat", typeof(string));
    
            var nguoi_nhapParameter = nguoi_nhap != null ?
                new ObjectParameter("nguoi_nhap", nguoi_nhap) :
                new ObjectParameter("nguoi_nhap", typeof(string));
    
            var trangThaiParameter = trangThai.HasValue ?
                new ObjectParameter("TrangThai", trangThai) :
                new ObjectParameter("TrangThai", typeof(int));
    
            var trang_Thai_CKParameter = trang_Thai_CK != null ?
                new ObjectParameter("Trang_Thai_CK", trang_Thai_CK) :
                new ObjectParameter("Trang_Thai_CK", typeof(string));
    
            var nha_NaoParameter = nha_Nao.HasValue ?
                new ObjectParameter("Nha_Nao", nha_Nao) :
                new ObjectParameter("Nha_Nao", typeof(int));
    
            var ghi_chuParameter = ghi_chu != null ?
                new ObjectParameter("Ghi_chu", ghi_chu) :
                new ObjectParameter("Ghi_chu", typeof(string));
    
            var trang_Thai_DatParameter = trang_Thai_Dat.HasValue ?
                new ObjectParameter("Trang_Thai_Dat", trang_Thai_Dat) :
                new ObjectParameter("Trang_Thai_Dat", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("update_lich_dat_phong", iDParameter, ten_Khach_HangParameter, checkinParameter, checkoutParameter, so_Dien_ThoaiParameter, ngay_Sinh_NhatParameter, tong_tien_phongParameter, tien_chuyen_khoanParameter, tien_Con_Phai_TraParameter, so_Phong_DatParameter, nguoi_nhapParameter, trangThaiParameter, trang_Thai_CKParameter, nha_NaoParameter, ghi_chuParameter, trang_Thai_DatParameter);
        }
    
        public virtual int update_QuanlyAnhVideo(Nullable<long> iD, Nullable<short> iS_IMAGE_VIDEO, string qUOTE, string nAME, string dURATION_VIDEO, Nullable<short> dIA_DIEM, Nullable<short> lOAI_VIDEO, Nullable<short> lOAI_IMAGE, Nullable<long> tHU_TU_UU_TIEN, string iCON_VIDEO_IMAGE)
        {
            var iDParameter = iD.HasValue ?
                new ObjectParameter("ID", iD) :
                new ObjectParameter("ID", typeof(long));
    
            var iS_IMAGE_VIDEOParameter = iS_IMAGE_VIDEO.HasValue ?
                new ObjectParameter("IS_IMAGE_VIDEO", iS_IMAGE_VIDEO) :
                new ObjectParameter("IS_IMAGE_VIDEO", typeof(short));
    
            var qUOTEParameter = qUOTE != null ?
                new ObjectParameter("QUOTE", qUOTE) :
                new ObjectParameter("QUOTE", typeof(string));
    
            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));
    
            var dURATION_VIDEOParameter = dURATION_VIDEO != null ?
                new ObjectParameter("DURATION_VIDEO", dURATION_VIDEO) :
                new ObjectParameter("DURATION_VIDEO", typeof(string));
    
            var dIA_DIEMParameter = dIA_DIEM.HasValue ?
                new ObjectParameter("DIA_DIEM", dIA_DIEM) :
                new ObjectParameter("DIA_DIEM", typeof(short));
    
            var lOAI_VIDEOParameter = lOAI_VIDEO.HasValue ?
                new ObjectParameter("LOAI_VIDEO", lOAI_VIDEO) :
                new ObjectParameter("LOAI_VIDEO", typeof(short));
    
            var lOAI_IMAGEParameter = lOAI_IMAGE.HasValue ?
                new ObjectParameter("LOAI_IMAGE", lOAI_IMAGE) :
                new ObjectParameter("LOAI_IMAGE", typeof(short));
    
            var tHU_TU_UU_TIENParameter = tHU_TU_UU_TIEN.HasValue ?
                new ObjectParameter("THU_TU_UU_TIEN", tHU_TU_UU_TIEN) :
                new ObjectParameter("THU_TU_UU_TIEN", typeof(long));
    
            var iCON_VIDEO_IMAGEParameter = iCON_VIDEO_IMAGE != null ?
                new ObjectParameter("ICON_VIDEO_IMAGE", iCON_VIDEO_IMAGE) :
                new ObjectParameter("ICON_VIDEO_IMAGE", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("update_QuanlyAnhVideo", iDParameter, iS_IMAGE_VIDEOParameter, qUOTEParameter, nAMEParameter, dURATION_VIDEOParameter, dIA_DIEMParameter, lOAI_VIDEOParameter, lOAI_IMAGEParameter, tHU_TU_UU_TIENParameter, iCON_VIDEO_IMAGEParameter);
        }
    
        public virtual ObjectResult<Users_SelectUsersNoRole_Result> Users_SelectUsersNoRole(Nullable<int> iDRole)
        {
            var iDRoleParameter = iDRole.HasValue ?
                new ObjectParameter("IDRole", iDRole) :
                new ObjectParameter("IDRole", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Users_SelectUsersNoRole_Result>("Users_SelectUsersNoRole", iDRoleParameter);
        }
    
        public virtual int Video_Insertitem(string video_URL, Nullable<long> iD_Video)
        {
            var video_URLParameter = video_URL != null ?
                new ObjectParameter("Video_URL", video_URL) :
                new ObjectParameter("Video_URL", typeof(string));
    
            var iD_VideoParameter = iD_Video.HasValue ?
                new ObjectParameter("ID_Video", iD_Video) :
                new ObjectParameter("ID_Video", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Video_Insertitem", video_URLParameter, iD_VideoParameter);
        }
    
        public virtual ObjectResult<Video_Selectitem_Result> Video_Selectitem(Nullable<long> iD_VIDEO)
        {
            var iD_VIDEOParameter = iD_VIDEO.HasValue ?
                new ObjectParameter("ID_VIDEO", iD_VIDEO) :
                new ObjectParameter("ID_VIDEO", typeof(long));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Video_Selectitem_Result>("Video_Selectitem", iD_VIDEOParameter);
        }
    
        public virtual int Video_Updateitem(Nullable<long> iD_VIDEO, string video_URL)
        {
            var iD_VIDEOParameter = iD_VIDEO.HasValue ?
                new ObjectParameter("ID_VIDEO", iD_VIDEO) :
                new ObjectParameter("ID_VIDEO", typeof(long));
    
            var video_URLParameter = video_URL != null ?
                new ObjectParameter("Video_URL", video_URL) :
                new ObjectParameter("Video_URL", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("Video_Updateitem", iD_VIDEOParameter, video_URLParameter);
        }
    }
}
