CREATE PROCEDURE ObtenerFavoritosUsuario
    @idUsuario INT
AS
BEGIN
    SELECT libros.isbn, titulo, autor, fechaPublicacion, precio, foto
	FROM libros
    INNER JOIN favoritos ON libros.isbn = favoritos.isbn
    WHERE favoritos.idUsuario = @idUsuario;
END
