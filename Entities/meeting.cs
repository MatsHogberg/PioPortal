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
    
    public partial class meeting
    {
        public meeting()
        {
            this.person = new HashSet<person>();
        }
    
        public int meeting_Id { get; set; }
        public Nullable<int> meetingtype_Id { get; set; }
        public System.DateTime starttime { get; set; }
        public Nullable<int> location_Id { get; set; }
        public Nullable<int> project_Id { get; set; }
    
        public virtual meetingtype meetingtype { get; set; }
        public virtual ICollection<person> person { get; set; }
        public virtual project project { get; set; }
        public virtual room room { get; set; }
    }
}