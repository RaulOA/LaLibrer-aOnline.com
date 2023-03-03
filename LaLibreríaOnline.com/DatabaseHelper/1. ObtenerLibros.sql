CREATE PROCEDURE ObtenerLibros
AS
BEGIN
    SELECT [isbn], [titulo], [autor], [fechaPublicacion], [precio], [foto]
    FROM [Libros]
	ORDER BY [titulo] ASC;
END
