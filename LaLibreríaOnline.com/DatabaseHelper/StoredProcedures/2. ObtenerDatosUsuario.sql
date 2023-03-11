CREATE PROCEDURE ObtenerDatosUsuario
	@email VARCHAR(50)
AS
BEGIN
    SELECT [idUsuario], [nombre], [email], [pais], [provincia], [direccion], [codigoPostal], [numeroTarjeta], [expiracion], [codigoSeguridad]
    FROM [Usuarios]
	WHERE [email] = @email
END