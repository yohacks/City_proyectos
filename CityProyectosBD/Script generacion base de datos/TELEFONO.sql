USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[TELEFONO]    Script Date: 21/03/2021 1:05:28 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TELEFONO](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NUMERO] [nvarchar](30) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_SUCURSAL] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_TELEFONO] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TELEFONO] ADD  CONSTRAINT [DF__TELEFONO__GUID__601E1781]  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[TELEFONO]  WITH NOCHECK ADD  CONSTRAINT [FK_TELEFONO_SUCURSAL] FOREIGN KEY([GUID_SUCURSAL])
REFERENCES [dbo].[SUCURSAL] ([GUID])
GO

ALTER TABLE [dbo].[TELEFONO] CHECK CONSTRAINT [FK_TELEFONO_SUCURSAL]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el consecutivo con el cual es identificado el registro en la tabla ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el telefono ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'NUMERO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del telefono' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite ocultar o mostrar la información mediante un true/false ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'GUID_SUCURSAL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de creación del regsitro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TELEFONO', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


