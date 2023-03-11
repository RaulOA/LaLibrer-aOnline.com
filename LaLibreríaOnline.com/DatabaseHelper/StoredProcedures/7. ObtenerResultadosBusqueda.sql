CREATE PROCEDURE ObtenerResultadosBusqueda
    @busqueda NVARCHAR(MAX)
AS
BEGIN
    SELECT * FROM Libros 
    WHERE isbn LIKE '%' + @busqueda + '%' 
       OR autor LIKE '%' + @busqueda + '%' 
       OR titulo LIKE '%' + @busqueda + '%'
END
GO