USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_SOCIOPAGO]    Script Date: 31/10/2022 13:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
ALTER   PROCEDURE [dbo].[SP_INSERTAR_SOCIOPAGO]
  @Id uniqueidentifier,  
  @IdSocio uniqueidentifier,
  @Monto money,
  @MontoTotal money,
  @Fecha datetime
AS
    SET NOCOUNT ON;
	BEGIN
        INSERT INTO dbo.SociosPagos VALUES (@Id,@IdSocio,@Monto,@MontoTotal,@Fecha)  
END
