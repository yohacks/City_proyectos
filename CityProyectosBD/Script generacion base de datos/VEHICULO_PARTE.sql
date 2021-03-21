USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[VEHICULO_PARTE]    Script Date: 21/03/2021 1:06:20 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VEHICULO_PARTE](
	[GUID] [uniqueidentifier] NOT NULL,
	[GUID_VEHICULO] [uniqueidentifier] NOT NULL,
	[ESTADO] [bit] NULL,
	[GUID_ITEM_FACTURABLE] [uniqueidentifier] NULL,
	[OBSERVACION_PARTE] [varchar](1000) NOT NULL,
	[GUID_PARTE] [uniqueidentifier] NOT NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_VEHICULO_PARTE] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VEHICULO_PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_PARTE_ITEM_FACTURABLE] FOREIGN KEY([GUID_ITEM_FACTURABLE])
REFERENCES [dbo].[ITEM_FACTURABLE] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO_PARTE] CHECK CONSTRAINT [FK_VEHICULO_PARTE_ITEM_FACTURABLE]
GO

ALTER TABLE [dbo].[VEHICULO_PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_PARTE_PARTE] FOREIGN KEY([GUID_PARTE])
REFERENCES [dbo].[PARTE] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO_PARTE] CHECK CONSTRAINT [FK_VEHICULO_PARTE_PARTE]
GO

ALTER TABLE [dbo].[VEHICULO_PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_PARTE_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO_PARTE] CHECK CONSTRAINT [FK_VEHICULO_PARTE_SUCURSAL]
GO

ALTER TABLE [dbo].[VEHICULO_PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_PARTE_VEHICULO] FOREIGN KEY([GUID_VEHICULO])
REFERENCES [dbo].[VEHICULO] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO_PARTE] CHECK CONSTRAINT [FK_VEHICULO_PARTE_VEHICULO]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la orden de instalación PARTE parte' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del la orden de instalación PARTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_VEHICULO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite ocultar o mostrar la información mediante un true/false' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del item facturable ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_ITEM_FACTURABLE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la decripción del PARTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'OBSERVACION_PARTE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del PARTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_PARTE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la sucursal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de creación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO_PARTE', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


