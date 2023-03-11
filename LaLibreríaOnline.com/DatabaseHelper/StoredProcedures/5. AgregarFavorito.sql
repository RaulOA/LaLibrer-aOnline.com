CREATE PROCEDURE [dbo].[AgregarFavorito]
	@isbn VARCHAR(17),
	@idUsuario INT
AS
BEGIN
	IF NOT EXISTS (SELECT * FROM Favoritos WHERE isbn = @isbn AND idUsuario = @idUsuario)
	BEGIN
		INSERT INTO Favoritos(isbn, idUsuario)
		VALUES (@isbn, @idUsuario);
	END
END