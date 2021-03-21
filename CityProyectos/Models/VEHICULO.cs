namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("VEHICULO")]
    public partial class VEHICULO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VEHICULO()
        {
            ITEM_FACTURABLE = new HashSet<ITEM_FACTURABLE>();
            VEHICULO_PARTE = new HashSet<VEHICULO_PARTE>();
        }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [Key]
        public Guid GUID { get; set; }

        [Required]
        [StringLength(100)]
        public string PLACA { get; set; }

        public Guid GUID_MODELO { get; set; }

        public Guid GUID_ESTADO { get; set; }

        [StringLength(1000)]
        public string DESCRIPCION { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public virtual ESTADO_NEGOCIO ESTADO_NEGOCIO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ITEM_FACTURABLE> ITEM_FACTURABLE { get; set; }

        public virtual MODELO MODELO { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VEHICULO_PARTE> VEHICULO_PARTE { get; set; }
    }
}
