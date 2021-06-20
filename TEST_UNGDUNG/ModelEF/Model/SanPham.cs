namespace ModelEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        public int ID { get; set; }

        [StringLength(100)]
        public string Name { get; set; }

        public int? UniCost { get; set; }

        public int? Quanity { get; set; }

        [StringLength(50)]
        public string Image { get; set; }

        [StringLength(100)]
        public string Discription { get; set; }

        public int? Status { get; set; }

        public int? IDLoai { get; set; }

        public virtual LoaiSP LoaiSP { get; set; }
    }
}
