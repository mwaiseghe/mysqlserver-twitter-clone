CREATE PROCEDURE add_users
(
			@username VARCHAR, 
			@first_name VARCHAR, 
			@last_name VARCHAR, 
			@bio VARCHAR,
			@website VARCHAR,
			@location VARCHAR,
			@is_admin BIT
)

AS 
BEGIN
	INSERT INTO users(username, first_name, last_name, bio, website, location, is_admin)
	VALUES (@username, @first_name, @last_name, @bio, @website, @location, @is_admin);
END

EXEC add_users @username='Gift1', @first_name='Gift', @last_name='Mwaiseghe', @bio='Just a demo, some dummy bio', @website='itsregalo.github.io', @location='Nairobi', @is_admin=1;

SELECT * FROM users;


