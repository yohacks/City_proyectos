USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[CLIENTE]    Script Date: 21/03/2021 1:02:45 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CLIENTE](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDENTIFICACION] [nvarchar](50) NULL,
	[NOMBRE] [nvarchar](200) NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[GUID_ESTADO_CLIENTE] [uniqueidentifier] NOT NULL,
	[GUID_TIPO_DOCUMENTO] [uniqueidentifier] NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[GUID_DIRECCION] [uniqueidentifier] NOT NULL,
	[GUID_TELEFONO] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CLIENTE] ADD  CONSTRAINT [DF__CLIENTE__ESTADO__45151B8A]  DEFAULT ((1)) FOR [ESTADO]
GO

ALTER TABLE [dbo].[CLIENTE] ADD  CONSTRAINT [DF__CLIENTE__GUID__2E86BBED]  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[CLIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK_CLIENTE_DIRECCION] FOREIGN KEY([GUID_DIRECCION])
REFERENCES [dbo].[DIRECCION] ([GUID])
GO

ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_DIRECCION]
GO

ALTER TABLE [dbo].[CLIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK_CLIENTE_ESTADO_NEGOCIO] FOREIGN KEY([GUID_ESTADO_CLIENTE])
REFERENCES [dbo].[ESTADO_NEGOCIO] ([GUID])
GO

ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_ESTADO_NEGOCIO]
GO

ALTER TABLE [dbo].[CLIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK_CLIENTE_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_SUCURSAL]
GO

ALTER TABLE [dbo].[CLIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK_CLIENTE_TELEFONO] FOREIGN KEY([GUID_TELEFONO])
REFERENCES [dbo].[TELEFONO] ([GUID])
GO

ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_TELEFONO]
GO

ALTER TABLE [dbo].[CLIENTE]  WITH NOCHECK ADD  CONSTRAINT [FK_CLIENTE_TIPO_DOCUMENTO] FOREIGN KEY([GUID_TIPO_DOCUMENTO])
REFERENCES [dbo].[TIPO_DOCUMENTO] ([GUID])
GO

ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_TIPO_DOCUMENTO]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el consecutivo con el cual es identificado el registro en el tabel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el identificador del CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'IDENTIFICACION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el nombre actual del CLIENTE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite identificar el estado del CLIENTE mediante un true/false ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del estado del CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_ESTADO_CLIENTE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del tipo de documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_TIPO_DOCUMENTO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del sucursal del CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el cuenta ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el fecha de creación del CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el ultima fecha de modificación del CLIENTE ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del direccción ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_DIRECCION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del telefono asociado al registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIENTE', @level2type=N'COLUMN',@level2name=N'GUID_TELEFONO'
GO


