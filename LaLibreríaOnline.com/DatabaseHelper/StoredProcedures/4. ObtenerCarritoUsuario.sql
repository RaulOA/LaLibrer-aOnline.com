CREATE PROCEDURE ObtenerCarritoUsuario
	@idUsuario INT
AS
BEGIN
	SELECT l.isbn, l.titulo, l.autor, l.fechaPublicacion, l.precio, SUM(c.cantidad) AS total_comprado, l.foto
	FROM libros l
	JOIN carrito c ON l.isbn = c.isbn
	WHERE c.idUsuario = @idUsuario
	GROUP BY l.isbn, l.titulo, l.autor,l.fechaPublicacion, l.precio, l.foto;
END
GO
