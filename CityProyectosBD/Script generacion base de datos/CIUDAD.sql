USE [City_Proyectos]
GO

/****** Object:  Table [dbo].[CIUDAD]    Script Date: 21/03/2021 1:02:37 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CIUDAD](
	[GUID] [uniqueidentifier] NOT NULL,
	[VALOR] [varchar](100) NOT NULL,
	[IATA] [char](3) NULL,
	[ESTADO] [bit] NOT NULL,
	[GUID_USUARIO_CREA] [uniqueidentifier] NOT NULL,
	[GUID_USUARIO_MODIFICA] [uniqueidentifier] NULL,
	[FECHA_REGISTRO] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[CODIGO_DANE] [varchar](10) NULL,
 CONSTRAINT [PK__CIUDAD__15B69B8E5583D3B9] PRIMARY KEY CLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico de la ciudad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'GUID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra el nombre de la ciudad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'VALOR'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la IATA da la ciudad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'IATA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que permite identificar el estado de la cuidad con un True/false' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del usuario que crea el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_CREA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador unico del ultimo usuario que modifica el registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'GUID_USUARIO_MODIFICA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la fecha de creación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'FECHA_REGISTRO'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Campo que muestra la ultima fecha de modificación del registro ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CIUDAD', @level2type=N'COLUMN',@level2name=N'FECHA_MODIFICACION'
GO


