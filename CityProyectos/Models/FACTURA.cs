namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FACTURA")]
    public partial class FACTURA
    {
        [Key]
        public Guid GUID { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        public int? NUMERO_FACTURA { get; set; }

        public Guid GUID_ESTADO_FACTURA { get; set; }

        public DateTime? FECHA_FACTURA { get; set; }

        public Guid GUID_CLIENTE { get; set; }

        [StringLength(1000)]
        public string OBSERVACIONES { get; set; }

        public decimal VALOR_SUBTOTAL { get; set; }

        public decimal VALOR_TOTAL { get; set; }

        public decimal VALOR_IVA { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public virtual CLIENTE CLIENTE { get; set; }

        public virtual ESTADO_NEGOCIO ESTADO_NEGOCIO { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }
    }
}
