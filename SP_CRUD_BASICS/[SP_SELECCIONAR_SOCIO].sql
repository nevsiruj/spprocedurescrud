USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_SELECCIONAR_SOCIO]    Script Date: 31/10/2022 13:18:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_SELECCIONAR_SOCIO]
 @id uniqueidentifier
AS
BEGIN
       SELECT S.ID, S.Apellido, TipoDocumento.Nombre as TipoDocumentoNombre
	   FROM Socio as S
	   LEFT JOIN TipoDocumento ON TipoDocumento.ID = S.TipoDocId
       ORDER BY S.Apellido;

END
