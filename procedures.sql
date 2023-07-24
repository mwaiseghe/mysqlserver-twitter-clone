USE TwitterCloneDB;

CREATE PROCEDURE add_users
(
			@username VARCHAR(255), 
			@first_name VARCHAR(255), 
			@last_name VARCHAR(255), 
			@bio VARCHAR(1000),
			@website VARCHAR(255),
			@location VARCHAR(255),
			@is_admin BIT
)

AS 
BEGIN
	INSERT INTO users(username, first_name, last_name, bio, website, location, is_admin)
	VALUES (@username, @first_name, @last_name, @bio, @website, @location, @is_admin);
END

EXEC add_users @username="Gift1", 
				@first_name="Gift", @last_name="Mwaiseghe", 
				@bio="Just a demo, some dummy bio", 
				@website="itsregalo.github.io", @location="Nairobi", @is_admin=1;
