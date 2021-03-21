namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("INSPECCION")]
    public partial class INSPECCION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public INSPECCION()
        {
            ITEM_FACTURABLE = new HashSet<ITEM_FACTURABLE>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Key]
        public Guid GUID { get; set; }

        [Required]
        [StringLength(1000)]
        public string DESCRIPCION_GOLPE { get; set; }

        [Required]
        [StringLength(1000)]
        public string DESCRIPCION_RAYON { get; set; }

        [Required]
        [StringLength(1000)]
        public string OBSERVACION { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ITEM_FACTURABLE> ITEM_FACTURABLE { get; set; }
    }
}
