namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class TIPO_DOCUMENTO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TIPO_DOCUMENTO()
        {
            CLIENTE = new HashSet<CLIENTE>();
            USUARIO = new HashSet<USUARIO>();
        }

        [Key]
        public Guid GUID { get; set; }

        [Required]
        [StringLength(100)]
        public string VALOR { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CLIENTE> CLIENTE { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USUARIO> USUARIO { get; set; }
    }
}
