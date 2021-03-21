USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[PARTE]    Script Date: 21/03/2021 1:05:21 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PARTE](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[DESCRIPCION] [varchar](1000) NOT NULL,
	[GUID_CATEGORIA] [uniqueidentifier] NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_EQUIPO_PARTE] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_EQUIPO_PARTE_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[PARTE] CHECK CONSTRAINT [FK_EQUIPO_PARTE_SUCURSAL]
GO

ALTER TABLE [dbo].[PARTE]  WITH NOCHECK ADD  CONSTRAINT [FK_PARTE_CATEGORIA] FOREIGN KEY([GUID_CATEGORIA])
REFERENCES [dbo].[CATEGORIA] ([GUID])
GO

ALTER TABLE [dbo].[PARTE] CHECK CONSTRAINT [FK_PARTE_CATEGORIA]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consecutivo auto numérico de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla que se usará para identificar el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la parte donde se expresa la información natural' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa el serial de la parte, Llave foránea de la tabla SERIAL.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'GUID_CATEGORIA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define el estado del registro, True = Activo, False = Inactivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la sucursal a la que pertenece el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica al usuario que creó el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica al último usuario que modificó el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la fecha en la que se creó  el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la última fecha en la que se modificó  el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PARTE', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


