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
    
    public partial class Question
    {
        public Question()
        {
            this.Answers = new HashSet<Answer>();
        }
    
        public int STT { get; set; }
        public int ID_SUBJECT { get; set; }
        public string CAU_HOI { get; set; }
    
        public virtual ICollection<Answer> Answers { get; set; }
    }
}
