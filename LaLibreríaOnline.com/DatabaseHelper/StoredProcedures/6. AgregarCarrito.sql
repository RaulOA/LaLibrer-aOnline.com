CREATE PROCEDURE [dbo].[AgregarCarrito]
    @isbn VARCHAR(17),
    @idUsuario INT,
    @cantidad INT
AS
BEGIN
    IF EXISTS(SELECT * FROM Carrito WHERE isbn = @isbn AND idUsuario = @idUsuario)
    BEGIN
        UPDATE Carrito SET cantidad = cantidad + @cantidad WHERE isbn = @isbn AND idUsuario = @idUsuario;
    END
    ELSE
    BEGIN
        INSERT INTO Carrito(isbn, idUsuario, cantidad)
        VALUES (@isbn, @idUsuario, @cantidad);
    END
END