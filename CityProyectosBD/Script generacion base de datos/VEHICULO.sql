USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[VEHICULO]    Script Date: 21/03/2021 1:06:16 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VEHICULO](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[PLACA] [varchar](100) NOT NULL,
	[GUID_MODELO] [uniqueidentifier] NOT NULL,
	[GUID_ESTADO] [uniqueidentifier] NOT NULL,
	[DESCRIPCION] [varchar](1000) NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VEHICULO_UK] UNIQUE NONCLUSTERED 
(
	[PLACA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VEHICULO]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_ESTADO_NEGOCIO] FOREIGN KEY([GUID_ESTADO])
REFERENCES [dbo].[ESTADO_NEGOCIO] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO] CHECK CONSTRAINT [FK_VEHICULO_ESTADO_NEGOCIO]
GO

ALTER TABLE [dbo].[VEHICULO]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_MODELO] FOREIGN KEY([GUID_MODELO])
REFERENCES [dbo].[MODELO] ([GUID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[VEHICULO] CHECK CONSTRAINT [FK_VEHICULO_MODELO]
GO

ALTER TABLE [dbo].[VEHICULO]  WITH NOCHECK ADD  CONSTRAINT [FK_VEHICULO_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[VEHICULO] CHECK CONSTRAINT [FK_VEHICULO_SUCURSAL]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Consecutivo auto num�rico de la tabla.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Llave primaria de la tabla que se usar� para identificar el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la placa del vehiculo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'PLACA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa el c�digo, Llave for�nea de la tabla modelo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID_MODELO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Representa el estado del equipo, si est� en funcionamiento o no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID_ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la descripci�n del VEHICULO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define el estado del registro, True = Activo, False = Inactivo.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la sucursal a la que pertenece el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica al usuario que cre� el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifica al �ltimo usuario que modific� el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la fecha en la que se cre�  el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Define la �ltima fecha en la que se modific�  el registro.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VEHICULO', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


