//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class MenuItemFunction
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MenuItemFunction()
        {
            this.Roles = new HashSet<Role>();
        }
    
        public string Item_ID { get; set; }
        public string Item_name { get; set; }
        public string Path { get; set; }
        public string Parent_Code { get; set; }
        public Nullable<bool> isMenu { get; set; }
        public Nullable<int> Order_No { get; set; }
        public Nullable<bool> ExistChild { get; set; }
        public Nullable<bool> isDisplay { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Role> Roles { get; set; }
    }
}
