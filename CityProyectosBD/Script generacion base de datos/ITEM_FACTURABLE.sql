USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[ITEM_FACTURABLE]    Script Date: 21/03/2021 1:04:27 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ITEM_FACTURABLE](
	[GUID] [uniqueidentifier] NOT NULL,
	[ES_FACTURABLE] [bit] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[GUID_USUARIO_RETIRA] [uniqueidentifier] NOT NULL,
	[GUID_ESTADO_INGRESO] [uniqueidentifier] NOT NULL,
	[FECHA_INGRESO] [datetime] NULL,
	[FECHA_AVISO] [datetime] NULL,
	[FECHA_DEVOLUCION] [datetime] NULL,
	[GUID_VEHICULO] [uniqueidentifier] NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[GUID_CLIENTE] [uniqueidentifier] NOT NULL,
	[GUID_SUCURSAL_ENTREGA] [uniqueidentifier] NOT NULL,
	[NUMERO_FACTURA] [int] NULL,
	[FECHA_FACTURA] [datetime] NULL,
	[OBSERVACIONES_ADICIONALES] [varchar](1000) NULL,
	[TOTAL_TARIFA] [decimal](18, 2) NOT NULL,
	[GUID_INSPECCION] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ORDEN_INSTALACION_ITEM_FACTURACION] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] ADD  CONSTRAINT [DF_ITEM_FACTURABLE_TOTAL_TARIFA]  DEFAULT ((0)) FOR [TOTAL_TARIFA]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_CLIENTE] FOREIGN KEY([GUID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_CLIENTE]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_ESTADO_NEGOCIO] FOREIGN KEY([GUID_ESTADO_INGRESO])
REFERENCES [dbo].[ESTADO_NEGOCIO] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_ESTADO_NEGOCIO]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_INSPECCION] FOREIGN KEY([GUID_INSPECCION])
REFERENCES [dbo].[INSPECCION] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_INSPECCION]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_SUCURSAL]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_SUCURSAL1] FOREIGN KEY([GUID_SUCURSAL_ENTREGA])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_SUCURSAL1]
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_ITEM_FACTURABLE_VEHICULO] FOREIGN KEY([GUID_VEHICULO])
REFERENCES [dbo].[VEHICULO] ([GUID])
GO

ALTER TABLE [dbo].[ITEM_FACTURABLE] CHECK CONSTRAINT [FK_ITEM_FACTURABLE_VEHICULO]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del items facturable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite identificar si es facturable o no, mediante un true/false ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'ES_FACTURABLE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el regsitro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el regsitro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_RETIRA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del estado de la orden del serial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_ESTADO_INGRESO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la de inicio de facturación del item ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_INGRESO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de aviso del item ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_AVISO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de devolución del item ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_DEVOLUCION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del serial ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_VEHICULO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la sucursal asociada la registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de creación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_CLIENTE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la sucursal de entrega ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL_ENTREGA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el numero de la ultima factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'NUMERO_FACTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de la ultima factura del item' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'FECHA_FACTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra las observaciones adicionales ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES_ADICIONALES'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el total de la tarifa ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'TOTAL_TARIFA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del INSPECCION ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ITEM_FACTURABLE', @level2type=N'COLUMN',@level2name=N'GUID_INSPECCION'
GO


