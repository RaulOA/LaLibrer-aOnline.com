CREATE PROCEDURE [dbo].[SumarArticuloCarrito]
	@isbn VARCHAR(17),
	@idUsuario INT
AS
BEGIN
	UPDATE Carrito
	SET cantidad = cantidad + 1
	WHERE isbn = @isbn AND idUsuario = @idUsuario;
END