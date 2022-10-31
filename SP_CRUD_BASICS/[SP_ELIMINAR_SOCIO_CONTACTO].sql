USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_SOCIO_CONTACTO]    Script Date: 31/10/2022 13:17:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_ELIMINAR_SOCIO_CONTACTO]
 @id uniqueidentifier
AS
BEGIN
       SET NOCOUNT ON;
       DELETE FROM SocioContacto WHERE SocioContacto.IdSocio = @id
END
