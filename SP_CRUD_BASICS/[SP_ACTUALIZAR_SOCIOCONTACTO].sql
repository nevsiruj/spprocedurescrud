USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_SOCIOCONTACTO]    Script Date: 31/10/2022 13:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_ACTUALIZAR_SOCIOCONTACTO]
 @mail varchar(50)
,@telefonos varchar(250)
,@idSocio uniqueidentifier
AS
BEGIN
       SET NOCOUNT ON;
    UPDATE SocioContacto
    SET     mail = @mail
                ,@telefonos = @telefonos
       WHERE  IdSocio = @idSocio
END
