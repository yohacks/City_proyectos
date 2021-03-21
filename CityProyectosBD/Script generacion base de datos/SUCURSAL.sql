USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[SUCURSAL]    Script Date: 21/03/2021 1:05:24 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SUCURSAL](
	[GUID] [uniqueidentifier] NOT NULL,
	[VALOR] [varchar](100) NOT NULL,
	[GUID_CIUDAD] [uniqueidentifier] NOT NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[IATA] [varchar](5) NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[DIRECCION] [varchar](100) NULL,
	[TELEFONO] [varchar](max) NULL,
	[CODIGO_POSTAL] [varchar](20) NULL,
 CONSTRAINT [PK_SUCURSAL] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la sucursal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el nombre de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'VALOR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la cuidad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'GUID_CIUDAD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite ocultar o mostrar la información mediante un true/false ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el regsitro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la IATA(Sigla) de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'IATA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de creación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación del registro' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la dirección de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'DIRECCION'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el teléfono de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'TELEFONO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el código postal de la sucursal ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SUCURSAL', @level2type=N'COLUMN',@level2name=N'CODIGO_POSTAL'
GO


