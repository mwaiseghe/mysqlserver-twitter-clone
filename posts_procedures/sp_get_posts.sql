
-- procedure to get all posts
CREATE PROCEDURE get_posts
AS
BEGIN
	SELECT * FROM posts;
END
GO

-- procedure to get all posts by a user
CREATE PROCEDURE get_user_posts (@UserID INT)
AS
BEGIN
	SELECT * FROM posts WHERE UserID = @UserID;
END
GO


-- procedure to get a single post
CREATE PROCEDURE get_post (@PostID INT)
AS
BEGIN
    SELECT * FROM posts WHERE PostID = @PostID;
END
GO