
CREATE PROCEDURE add_posts
(
			@UserID INT,
			@post_title VARCHAR,
			@post_content VARCHAR
)

AS
BEGIN
	INSERT INTO posts(UserID, post_title, post_content)
	VALUES (@UserID, @post_title, @post_content);
END
