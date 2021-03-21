namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class VEHICULO_PARTE
    {
        [Key]
        public Guid GUID { get; set; }

        public Guid GUID_VEHICULO { get; set; }

        public bool? ESTADO { get; set; }

        public Guid? GUID_ITEM_FACTURABLE { get; set; }

        [Required]
        [StringLength(1000)]
        public string OBSERVACION_PARTE { get; set; }

        public Guid GUID_PARTE { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public virtual ITEM_FACTURABLE ITEM_FACTURABLE { get; set; }

        public virtual PARTE PARTE { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        public virtual VEHICULO VEHICULO { get; set; }
    }
}
