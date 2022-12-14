USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_SOCIOCONTACTO]    Script Date: 31/10/2022 13:18:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_INSERTAR_SOCIOCONTACTO]
  @Id uniqueidentifier,  
  @Mail nvarchar(50),  
  @Telefonos nvarchar(50),
  @IdSocio uniqueidentifier
AS
    SET NOCOUNT ON;
	BEGIN
		INSERT INTO SocioContacto VALUES (@Id, @Mail, @Telefonos, @IdSocio)
END
