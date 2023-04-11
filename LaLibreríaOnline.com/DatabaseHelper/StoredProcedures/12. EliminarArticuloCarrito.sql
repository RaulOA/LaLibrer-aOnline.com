CREATE PROCEDURE [dbo].[EliminarArticuloCarrito]
	@isbn VARCHAR(17),
	@idUsuario INT
AS
BEGIN
	DELETE FROM Carrito WHERE isbn = @isbn AND idUsuario = @idUsuario;
END
