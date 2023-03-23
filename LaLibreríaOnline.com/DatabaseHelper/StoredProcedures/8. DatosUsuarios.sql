CREATE PROCEDURE [dbo].[DatosUsuarios]
	
AS
BEGIN

    SELECT 
	idUsuario, 
	nombre, 
	email,
	pais,
	provincia,
	direccion, 
	codigoPostal,
	numeroTarjeta,
	expiracion, 
	codigoSeguridad

    FROM Usuarios
	
END