USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_SOCIO]    Script Date: 31/10/2022 13:17:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROCEDURE [dbo].[SP_ELIMINAR_SOCIO]
 @id uniqueidentifier
AS
BEGIN
       SET NOCOUNT ON;
       DELETE FROM Socio WHERE ID = @id
END