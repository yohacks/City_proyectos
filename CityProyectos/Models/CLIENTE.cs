namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CLIENTE")]
    public partial class CLIENTE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CLIENTE()
        {
            FACTURA = new HashSet<FACTURA>();
            ITEM_FACTURABLE = new HashSet<ITEM_FACTURABLE>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [StringLength(50)]
        public string IDENTIFICACION { get; set; }

        [StringLength(200)]
        public string NOMBRE { get; set; }

        public bool ESTADO { get; set; }

        [Key]
        public Guid GUID { get; set; }

        public Guid GUID_ESTADO_CLIENTE { get; set; }

        public Guid? GUID_TIPO_DOCUMENTO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public Guid GUID_DIRECCION { get; set; }

        public Guid GUID_TELEFONO { get; set; }

        public virtual DIRECCION DIRECCION { get; set; }

        public virtual ESTADO_NEGOCIO ESTADO_NEGOCIO { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        public virtual TELEFONO TELEFONO { get; set; }

        public virtual TIPO_DOCUMENTO TIPO_DOCUMENTO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FACTURA> FACTURA { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ITEM_FACTURABLE> ITEM_FACTURABLE { get; set; }
    }
}
