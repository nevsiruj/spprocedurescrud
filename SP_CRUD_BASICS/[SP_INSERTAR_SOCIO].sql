USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_SOCIO]    Script Date: 31/10/2022 13:18:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_INSERTAR_SOCIO]
  @Id uniqueidentifier,  
  @Nombre nvarchar(50),  
  @Apellido nvarchar(50),
  @Direccion nvarchar(50),
  @TipoDocumento uniqueidentifier,  
  @NumeroDocumento int,  
  @TipoSocio uniqueidentifier,
  @FechaAlta datetime
AS
    SET NOCOUNT ON;
	BEGIN
        INSERT INTO Socio VALUES (@Id,@Nombre,@Apellido,@Direccion,@TipoDocumento,@NumeroDocumento,@TipoSocio,@FechaAlta)  
END
