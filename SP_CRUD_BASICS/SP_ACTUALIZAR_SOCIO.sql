USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_SOCIO]    Script Date: 31/10/2022 13:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_ACTUALIZAR_SOCIO]
  @Id uniqueidentifier,  
  @Nombre nvarchar(50),  
  @Apellido nvarchar(50),
  @Direccion nvarchar(50),
  @TipoDocumento uniqueidentifier,  
  @NumeroDocumento int,  
  @TipoSocio uniqueidentifier
AS
BEGIN
       SET NOCOUNT ON;
    UPDATE Socio
    SET     nombre = @Nombre
                ,Apellido = @Apellido
           ,Direccion = @Direccion
           ,TipoDocId = @TipoDocumento
           ,Documento = @NumeroDocumento
		   ,TipoSocioId = @TipoSocio
       WHERE  id = @id
END
