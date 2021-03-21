namespace CityProyectos.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelDB : DbContext
    {
        public ModelDB()
            : base("name=ModelDB")
        {
        }

        public virtual DbSet<CATEGORIA> CATEGORIA { get; set; }
        public virtual DbSet<CIUDAD> CIUDAD { get; set; }
        public virtual DbSet<CLIENTE> CLIENTE { get; set; }
        public virtual DbSet<DIRECCION> DIRECCION { get; set; }
        public virtual DbSet<ESTADO_NEGOCIO> ESTADO_NEGOCIO { get; set; }
        public virtual DbSet<FACTURA> FACTURA { get; set; }
        public virtual DbSet<INSPECCION> INSPECCION { get; set; }
        public virtual DbSet<ITEM_FACTURABLE> ITEM_FACTURABLE { get; set; }
        public virtual DbSet<MARCA> MARCA { get; set; }
        public virtual DbSet<MODELO> MODELO { get; set; }
        public virtual DbSet<PARTE> PARTE { get; set; }
        public virtual DbSet<SUCURSAL> SUCURSAL { get; set; }
        public virtual DbSet<TELEFONO> TELEFONO { get; set; }
        public virtual DbSet<TIPO_DOCUMENTO> TIPO_DOCUMENTO { get; set; }
        public virtual DbSet<USUARIO> USUARIO { get; set; }
        public virtual DbSet<VEHICULO> VEHICULO { get; set; }
        public virtual DbSet<VEHICULO_PARTE> VEHICULO_PARTE { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CATEGORIA>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<CATEGORIA>()
                .HasMany(e => e.MODELO)
                .WithRequired(e => e.CATEGORIA)
                .HasForeignKey(e => e.GUID_CATEGORIA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CATEGORIA>()
                .HasMany(e => e.PARTE)
                .WithRequired(e => e.CATEGORIA)
                .HasForeignKey(e => e.GUID_CATEGORIA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CIUDAD>()
                .Property(e => e.VALOR)
                .IsUnicode(false);

            modelBuilder.Entity<CIUDAD>()
                .Property(e => e.IATA)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<CIUDAD>()
                .Property(e => e.CODIGO_DANE)
                .IsUnicode(false);

            modelBuilder.Entity<CLIENTE>()
                .HasMany(e => e.FACTURA)
                .WithRequired(e => e.CLIENTE)
                .HasForeignKey(e => e.GUID_CLIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CLIENTE>()
                .HasMany(e => e.ITEM_FACTURABLE)
                .WithRequired(e => e.CLIENTE)
                .HasForeignKey(e => e.GUID_CLIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DIRECCION>()
                .Property(e => e.SINFORMATO)
                .IsUnicode(false);

            modelBuilder.Entity<DIRECCION>()
                .Property(e => e.TIPO_DIRECCION)
                .IsUnicode(false);

            modelBuilder.Entity<DIRECCION>()
                .HasMany(e => e.CLIENTE)
                .WithRequired(e => e.DIRECCION)
                .HasForeignKey(e => e.GUID_DIRECCION)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<DIRECCION>()
                .HasMany(e => e.DIRECCION1)
                .WithRequired(e => e.DIRECCION2)
                .HasForeignKey(e => e.GUID_SUCURSAL);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .Property(e => e.VALOR)
                .IsUnicode(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .Property(e => e.GRUPO)
                .IsUnicode(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .HasMany(e => e.CLIENTE)
                .WithRequired(e => e.ESTADO_NEGOCIO)
                .HasForeignKey(e => e.GUID_ESTADO_CLIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .HasMany(e => e.FACTURA)
                .WithRequired(e => e.ESTADO_NEGOCIO)
                .HasForeignKey(e => e.GUID_ESTADO_FACTURA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .HasMany(e => e.ITEM_FACTURABLE)
                .WithRequired(e => e.ESTADO_NEGOCIO)
                .HasForeignKey(e => e.GUID_ESTADO_INGRESO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .HasMany(e => e.USUARIO)
                .WithRequired(e => e.ESTADO_NEGOCIO)
                .HasForeignKey(e => e.GUID_ESTADO_USUARIO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESTADO_NEGOCIO>()
                .HasMany(e => e.VEHICULO)
                .WithRequired(e => e.ESTADO_NEGOCIO)
                .HasForeignKey(e => e.GUID_ESTADO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<FACTURA>()
                .Property(e => e.VALOR_SUBTOTAL)
                .HasPrecision(20, 2);

            modelBuilder.Entity<FACTURA>()
                .Property(e => e.VALOR_TOTAL)
                .HasPrecision(20, 2);

            modelBuilder.Entity<FACTURA>()
                .Property(e => e.VALOR_IVA)
                .HasPrecision(20, 2);

            modelBuilder.Entity<INSPECCION>()
                .Property(e => e.DESCRIPCION_GOLPE)
                .IsUnicode(false);

            modelBuilder.Entity<INSPECCION>()
                .Property(e => e.DESCRIPCION_RAYON)
                .IsUnicode(false);

            modelBuilder.Entity<INSPECCION>()
                .Property(e => e.OBSERVACION)
                .IsUnicode(false);

            modelBuilder.Entity<INSPECCION>()
                .HasMany(e => e.ITEM_FACTURABLE)
                .WithRequired(e => e.INSPECCION)
                .HasForeignKey(e => e.GUID_INSPECCION)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ITEM_FACTURABLE>()
                .Property(e => e.OBSERVACIONES_ADICIONALES)
                .IsUnicode(false);

            modelBuilder.Entity<ITEM_FACTURABLE>()
                .HasMany(e => e.VEHICULO_PARTE)
                .WithOptional(e => e.ITEM_FACTURABLE)
                .HasForeignKey(e => e.GUID_ITEM_FACTURABLE);

            modelBuilder.Entity<MARCA>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<MARCA>()
                .HasMany(e => e.MODELO)
                .WithRequired(e => e.MARCA)
                .HasForeignKey(e => e.GUID_MARCA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MODELO>()
                .Property(e => e.DESCRIPCION)
                .IsUnicode(false);

            modelBuilder.Entity<MODELO>()
                .HasMany(e => e.VEHICULO)
                .WithRequired(e => e.MODELO)
                .HasForeignKey(e => e.GUID_MODELO);

            modelBuilder.Entity<PARTE>()
                .Property(e => e.DESCRIPCION)
                .IsUnicode(false);

            modelBuilder.Entity<PARTE>()
                .HasMany(e => e.VEHICULO_PARTE)
                .WithRequired(e => e.PARTE)
                .HasForeignKey(e => e.GUID_PARTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .Property(e => e.VALOR)
                .IsUnicode(false);

            modelBuilder.Entity<SUCURSAL>()
                .Property(e => e.IATA)
                .IsUnicode(false);

            modelBuilder.Entity<SUCURSAL>()
                .Property(e => e.DIRECCION)
                .IsUnicode(false);

            modelBuilder.Entity<SUCURSAL>()
                .Property(e => e.TELEFONO)
                .IsUnicode(false);

            modelBuilder.Entity<SUCURSAL>()
                .Property(e => e.CODIGO_POSTAL)
                .IsUnicode(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.CLIENTE)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.FACTURA)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.INSPECCION)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.ITEM_FACTURABLE)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.ITEM_FACTURABLE1)
                .WithRequired(e => e.SUCURSAL1)
                .HasForeignKey(e => e.GUID_SUCURSAL_ENTREGA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.PARTE)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.TELEFONO1)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.USUARIO)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.VEHICULO_PARTE)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SUCURSAL>()
                .HasMany(e => e.VEHICULO)
                .WithRequired(e => e.SUCURSAL)
                .HasForeignKey(e => e.GUID_SUCURSAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TELEFONO>()
                .HasMany(e => e.CLIENTE)
                .WithRequired(e => e.TELEFONO)
                .HasForeignKey(e => e.GUID_TELEFONO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TIPO_DOCUMENTO>()
                .Property(e => e.VALOR)
                .IsUnicode(false);

            modelBuilder.Entity<TIPO_DOCUMENTO>()
                .HasMany(e => e.CLIENTE)
                .WithOptional(e => e.TIPO_DOCUMENTO)
                .HasForeignKey(e => e.GUID_TIPO_DOCUMENTO);

            modelBuilder.Entity<TIPO_DOCUMENTO>()
                .HasMany(e => e.USUARIO)
                .WithOptional(e => e.TIPO_DOCUMENTO)
                .HasForeignKey(e => e.GUID_TIPO_DOCUMENTO);

            modelBuilder.Entity<VEHICULO>()
                .Property(e => e.PLACA)
                .IsUnicode(false);

            modelBuilder.Entity<VEHICULO>()
                .Property(e => e.DESCRIPCION)
                .IsUnicode(false);

            modelBuilder.Entity<VEHICULO>()
                .HasMany(e => e.ITEM_FACTURABLE)
                .WithOptional(e => e.VEHICULO)
                .HasForeignKey(e => e.GUID_VEHICULO);

            modelBuilder.Entity<VEHICULO>()
                .HasMany(e => e.VEHICULO_PARTE)
                .WithRequired(e => e.VEHICULO)
                .HasForeignKey(e => e.GUID_VEHICULO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<VEHICULO_PARTE>()
                .Property(e => e.OBSERVACION_PARTE)
                .IsUnicode(false);
        }
    }
}
