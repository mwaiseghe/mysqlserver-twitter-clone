
CREATE PROCEDURE add_comments
(
			@UserID INT,
			@PostID INT,
			@comment_comment VARCHAR
)

AS
BEGIN
	INSERT INTO comments(UserID, PostID, comment_comment)
	VALUES (@UserID, @PostID, @comment_comment);
END