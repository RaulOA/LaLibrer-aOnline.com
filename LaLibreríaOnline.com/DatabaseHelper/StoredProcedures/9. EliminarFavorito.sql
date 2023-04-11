CREATE PROCEDURE [dbo].[EliminarFavorito]
	@isbn VARCHAR(17),
	@idUsuario INT
AS
BEGIN
	DELETE FROM Favoritos WHERE isbn = @isbn AND idUsuario = @idUsuario;
END
