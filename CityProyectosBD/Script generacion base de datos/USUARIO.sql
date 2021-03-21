USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[USUARIO]    Script Date: 21/03/2021 1:06:03 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[USUARIO](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IDENTIFICACION] [nvarchar](50) NULL,
	[NOMBRE] [nvarchar](200) NULL,
	[EMAIL] [nvarchar](200) NULL,
	[TELEFONO] [nvarchar](max) NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[GUID_ESTADO_USUARIO] [uniqueidentifier] NOT NULL,
	[GUID_TIPO_DOCUMENTO] [uniqueidentifier] NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[FECHA_NACIMIENTO] [datetime] NOT NULL,
	[NUMERO_LICENCIA] [nvarchar](50) NULL,
	[FECHA_LICENCIA] [datetime] NOT NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_USUARIO] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF__USUARIO__ESTADO__45151B8A]  DEFAULT ((1)) FOR [ESTADO]
GO

ALTER TABLE [dbo].[USUARIO] ADD  CONSTRAINT [DF__USUARIO__GUID__2E86BBED]  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[USUARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_USUARIO_ESTADO_NEGOCIO] FOREIGN KEY([GUID_ESTADO_USUARIO])
REFERENCES [dbo].[ESTADO_NEGOCIO] ([GUID])
GO

ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_ESTADO_NEGOCIO]
GO

ALTER TABLE [dbo].[USUARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_USUARIO_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_SUCURSAL]
GO

ALTER TABLE [dbo].[USUARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_USUARIO_TIPO_DOCUMENTO] FOREIGN KEY([GUID_TIPO_DOCUMENTO])
REFERENCES [dbo].[TIPO_DOCUMENTO] ([GUID])
GO

ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [FK_USUARIO_TIPO_DOCUMENTO]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el consecutivo con el cual es identificado el registro en el tabel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el identificador del USUARIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'IDENTIFICACION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el nombre actual del USUARIO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'NOMBRE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el correo del  USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'EMAIL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el telefono del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'TELEFONO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite identificar el estado del USUARIO mediante un true/false ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del estado del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'GUID_ESTADO_USUARIO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del tipo de documento ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'GUID_TIPO_DOCUMENTO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del sucursal del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el ultima fecha de nacimiento del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'FECHA_NACIMIENTO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el numero de licencia del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'NUMERO_LICENCIA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el ultima fecha de expedicion de la licencia del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'FECHA_LICENCIA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el fecha de creación del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muetra el ultima fecha de modificación del USUARIO ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USUARIO', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


