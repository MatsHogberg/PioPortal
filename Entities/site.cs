//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class site
    {
        public site()
        {
            this.project = new HashSet<project>();
            this.room = new HashSet<room>();
        }
    
        public int site_Id { get; set; }
        public string caption { get; set; }
    
        public virtual ICollection<project> project { get; set; }
        public virtual ICollection<room> room { get; set; }
    }
}
