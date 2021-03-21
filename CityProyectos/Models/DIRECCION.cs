namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DIRECCION")]
    public partial class DIRECCION
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DIRECCION()
        {
            CLIENTE = new HashSet<CLIENTE>();
            DIRECCION1 = new HashSet<DIRECCION>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [StringLength(200)]
        public string SINFORMATO { get; set; }

        [StringLength(50)]
        public string TIPO_DIRECCION { get; set; }

        [Key]
        public Guid GUID { get; set; }

        public Guid? GUID_TIPO_VIA { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        [StringLength(20)]
        public string CODIGO_POSTAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CLIENTE> CLIENTE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIRECCION> DIRECCION1 { get; set; }

        public virtual DIRECCION DIRECCION2 { get; set; }
    }
}
