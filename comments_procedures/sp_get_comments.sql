
CREATE PROCEDURE get_comments (@PostID INT)
AS
BEGIN
	SELECT * FROM comments WHERE PostID = @PostID;
END
GO

CREATE PROCEDURE get_user_comments (@UserID INT)
AS
BEGIN
	SELECT * FROM comments WHERE UserID = @UserID;
END
