CREATE PROCEDURE [dbo].[GuardarDatosUsuario]
	@idUsuario INT,
    @Email NVARCHAR(100),
    @Nombre NVARCHAR(100),
    @Pais NVARCHAR(50),
    @Provincia NVARCHAR(50),
    @Direccion NVARCHAR(200),
    @CodigoPostal NVARCHAR(20),
    @NumeroTarjeta NVARCHAR(20),
    @Expiracion NVARCHAR(10),
    @CodigoSeguridad NVARCHAR(10)
AS
BEGIN
    INSERT INTO Usuarios (idUsuario, email, nombre, pais, provincia, direccion, codigoPostal, numeroTarjeta, expiracion, codigoSeguridad)
    VALUES (@idUsuario, @Email, @Nombre, @Pais, @Provincia, @Direccion, @CodigoPostal, @NumeroTarjeta, @Expiracion, @CodigoSeguridad);
END
