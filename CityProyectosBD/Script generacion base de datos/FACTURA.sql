USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[FACTURA]    Script Date: 21/03/2021 1:04:20 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACTURA](
	[GUID] [uniqueidentifier] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NUMERO_FACTURA] [int] NULL,
	[GUID_ESTADO_FACTURA] [uniqueidentifier] NOT NULL,
	[FECHA_FACTURA] [datetime] NULL,
	[GUID_CLIENTE] [uniqueidentifier] NOT NULL,
	[OBSERVACIONES] [nvarchar](1000) NULL,
	[VALOR_SUBTOTAL] [decimal](20, 2) NOT NULL,
	[VALOR_TOTAL] [decimal](20, 2) NOT NULL,
	[VALOR_IVA] [decimal](20, 2) NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_FACTURA] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FACTURA]  WITH NOCHECK ADD  CONSTRAINT [FK_FACTURA_CLIENTE] FOREIGN KEY([GUID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([GUID])
GO

ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FK_FACTURA_CLIENTE]
GO

ALTER TABLE [dbo].[FACTURA]  WITH NOCHECK ADD  CONSTRAINT [FK_FACTURA_ESTADO_NEGOCIO] FOREIGN KEY([GUID_ESTADO_FACTURA])
REFERENCES [dbo].[ESTADO_NEGOCIO] ([GUID])
GO

ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FK_FACTURA_ESTADO_NEGOCIO]
GO

ALTER TABLE [dbo].[FACTURA]  WITH NOCHECK ADD  CONSTRAINT [FK_FACTURA_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[FACTURA] CHECK CONSTRAINT [FK_FACTURA_SUCURSAL]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el consecutivo que identifica el registro en la tabla ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el numero de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'NUMERO_FACTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del estado de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID_ESTADO_FACTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'FECHA_FACTURA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID_CLIENTE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra las observaciones de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra subtotal de la factura ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'VALOR_SUBTOTAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el total de la factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'VALOR_TOTAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el valor del IVA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'VALOR_IVA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite identificar el estado de la factura mediante un true/false' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACTURA', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


