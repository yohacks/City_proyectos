namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TELEFONO")]
    public partial class TELEFONO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TELEFONO()
        {
            CLIENTE = new HashSet<CLIENTE>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Required]
        [StringLength(30)]
        public string NUMERO { get; set; }

        [Key]
        public Guid GUID { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CLIENTE> CLIENTE { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }
    }
}
