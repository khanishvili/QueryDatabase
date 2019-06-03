
===SET UP DATABASE ====

USE [master];
GO
IF CLOUD_DATABASEPROPERTYEX (N'Credit', N'Verstion')>0
BEGIN
   ALTER DATABASE [Credit]
	SET SINGLE_USER
	WITH ROLLBACK  IMMEDIATE;
	DROP DATABASE [Credit];
	END;
GO


=====RESTORE FILE FROM DIRECTORY===

USE [master];
GO
RESTORE DATABASE [Credit]
FROM DISK  = N'C:\DataBase\CreditBackup100.bak'
WITH 
		  MOVE N'CreditData'
		  TO N'C:\DataBase\CreditData.mdf',
		  MOVE N'CreditLog'
		  TO N'C:\DataBase\CreditData.ldf';
GO


==PARAMETERIZATION==
ALTER DATABASE [Credit]
SET PARAMETERIZATION SIMPLE;
GO


==Compatibility Level===
EXEC [sp_dbcmptlevel] N'Credit' , 120;
GO
	