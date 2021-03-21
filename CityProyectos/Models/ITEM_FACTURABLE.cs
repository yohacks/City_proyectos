namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ITEM_FACTURABLE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ITEM_FACTURABLE()
        {
            VEHICULO_PARTE = new HashSet<VEHICULO_PARTE>();
        }

        [Key]
        public Guid GUID { get; set; }

        public bool ES_FACTURABLE { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public Guid GUID_USUARIO_RETIRA { get; set; }

        public Guid GUID_ESTADO_INGRESO { get; set; }

        public DateTime? FECHA_INGRESO { get; set; }

        public DateTime? FECHA_AVISO { get; set; }

        public DateTime? FECHA_DEVOLUCION { get; set; }

        public Guid? GUID_VEHICULO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public Guid GUID_CLIENTE { get; set; }

        public Guid GUID_SUCURSAL_ENTREGA { get; set; }

        public int? NUMERO_FACTURA { get; set; }

        public DateTime? FECHA_FACTURA { get; set; }

        [StringLength(1000)]
        public string OBSERVACIONES_ADICIONALES { get; set; }

        public decimal TOTAL_TARIFA { get; set; }

        public Guid GUID_INSPECCION { get; set; }

        public virtual CLIENTE CLIENTE { get; set; }

        public virtual ESTADO_NEGOCIO ESTADO_NEGOCIO { get; set; }

        public virtual INSPECCION INSPECCION { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        public virtual SUCURSAL SUCURSAL1 { get; set; }

        public virtual VEHICULO VEHICULO { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VEHICULO_PARTE> VEHICULO_PARTE { get; set; }
    }
}
