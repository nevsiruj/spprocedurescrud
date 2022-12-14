USE [tbl]
GO
/****** Object:  StoredProcedure [dbo].[SocioCrudOperations]    Script Date: 31/10/2022 13:16:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER   PROCEDURE [dbo].[SocioCrudOperations]   
    -- Add the parameters for the stored procedure here  
    @Id uniqueidentifier,  
    @Nombre nvarchar(50),  
    @Apellido nvarchar(50),
	@Direccion nvarchar(50),
    @TipoDocumento uniqueidentifier,  
    @NumeroDocumento int,  
	@TipoSocio uniqueidentifier,
	@FechaAlta datetime,
	@Telefonos int,
	@Email nvarchar(50),
	@IdSocioContacto uniqueidentifier,
    @OperationType int   
    --================================================  
    --operation types   
    -- 1) Insert  
    -- 2) Update  
    -- 3) Delete  
    -- 4) Select Perticular Record  
    -- 5) Selec All  
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
      
    --select operation  
    IF @OperationType=1  
    BEGIN  
        INSERT INTO Socio VALUES (@Id,@Nombre,@Apellido,@Direccion,@TipoDocumento,@NumeroDocumento,@TipoSocio,@FechaAlta)  
		INSERT INTO SocioContacto VALUES (@IdSocioContacto, @Email, @Telefonos, @Id)
    END  
    --ELSE IF @OperationType=2  
    --BEGIN  
    --    UPDATE Employee SET EmployeeName=@EmployeeName , EmployeeSalary=@EmployeeSalary ,EmployeeCity=@EmployeeCity WHERE EmployeeId=@Employeeid  
    --END  
    --ELSE IF @OperationType=3  
    --BEGIN  
    --    DELETE FROM Employee WHERE EmployeeId=@Employeeid  
    --END  
    ELSE IF @OperationType=4  
    BEGIN  
        SELECT * FROM Socio WHERE Nombre=@Nombre  
    END  
    --ELSE   
    --BEGIN  
    --    SELECT * FROM Employee   
    --END  
       
END  

-----------------
-- EXEC SocioCrudOperations ('00000000-0000-0000-0000-000000000000')
-----------------
