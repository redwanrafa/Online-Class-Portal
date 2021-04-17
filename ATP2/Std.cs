using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ATP2
{
    public class Std
    {
        public DateTime startDate { get; set; }
        public DateTime EndDate { get; set; }
        public int CourseId { get; set; }
        public int SectionId { get; set; }
        public int TeacherId { get; set; }
        public string sectionName { get; set; }
        public string CourseName { get; set; }
        public string CourseDetail{ get; set; }
        public string TeacherName { get; set; }
        public string TeacherEmail { get; set; }

    }
}