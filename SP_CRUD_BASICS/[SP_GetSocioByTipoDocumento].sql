USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSocioByTipoDocumento]    Script Date: 31/10/2022 13:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_GetSocioByTipoDocumento] 
@NombreTipoDocumento nvarchar(50)
AS
BEGIN
	SELECT S.ID, S.Apellido, S.Nombre, S.Direccion, TipoDocumento.Nombre as TipoDocumento, S.Documento as Documento, TipoSocio.Nombre as TipoSocio, SocioContacto.Mail, SocioContacto.Telefonos
	   FROM Socio as S
	   LEFT JOIN TipoDocumento ON TipoDocumento.ID = S.TipoDocId
	   LEFT JOIN TipoSocio ON TipoSocio.Id = S.TipoSocioId
	   LEFT JOIN SocioContacto ON SocioContacto.IdSocio = S.ID
	   WHERE  TipoDocumento.Nombre = @NombreTipoDocumento
       ORDER BY S.Apellido;
END