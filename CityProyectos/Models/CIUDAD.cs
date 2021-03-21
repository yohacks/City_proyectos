namespace CityProyectos.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CIUDAD")]
    public partial class CIUDAD
    {
        [Key]
        public Guid GUID { get; set; }

        [Required]
        [StringLength(100)]
        public string VALOR { get; set; }

        [StringLength(3)]
        public string IATA { get; set; }

        public bool ESTADO { get; set; }

        public Guid GUID_USUARIO_CREA { get; set; }

        public Guid? GUID_USUARIO_MODIFICA { get; set; }

        public DateTime FECHA_REGISTRO { get; set; }

        public DateTime? FECHA_MODIFICACION { get; set; }

        [StringLength(10)]
        public string CODIGO_DANE { get; set; }
    }
}
