USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_SELECCIONAR_SOCIOSPAGOS]    Script Date: 31/10/2022 13:18:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER    PROCEDURE [dbo].[SP_SELECCIONAR_SOCIOSPAGOS] 
AS
BEGIN
	SELECT Socio.ID, Socio.Nombre, Apellido, TipoSocio.Nombre as TipoSocio, SUM(SociosPagos.MontoTotal) AS MontoTotal
FROM Socio
LEFT JOIN SociosPagos ON Socio.ID = SociosPagos.IdSocio
LEFT JOIN TipoSocio ON Socio.TipoSocioId = TipoSocio.Id
GROUP BY Socio.ID, Socio.Nombre, Socio.Apellido, TipoSocio.Nombre;

END