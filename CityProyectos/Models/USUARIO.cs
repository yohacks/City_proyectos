namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("USUARIO")]
    public partial class USUARIO
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ID { get; set; }

        [StringLength(50)]
        public string IDENTIFICACION { get; set; }

        [StringLength(200)]
        public string NOMBRE { get; set; }

        [StringLength(200)]
        public string EMAIL { get; set; }

        public string TELEFONO { get; set; }

        public bool ESTADO { get; set; }

        [Key]
        public Guid GUID { get; set; }

        public Guid GUID_ESTADO_USUARIO { get; set; }

        public Guid? GUID_TIPO_DOCUMENTO { get; set; }

        public Guid GUID_SUCURSAL { get; set; }

        public DateTime FECHA_NACIMIENTO { get; set; }

        [StringLength(50)]
        public string NUMERO_LICENCIA { get; set; }

        public DateTime FECHA_LICENCIA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        public virtual ESTADO_NEGOCIO ESTADO_NEGOCIO { get; set; }

        public virtual SUCURSAL SUCURSAL { get; set; }

        public virtual TIPO_DOCUMENTO TIPO_DOCUMENTO { get; set; }
    }
}
