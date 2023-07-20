CREATE PROCEDURE update_user
(
            @UserID INT,
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
    UPDATE users
    SET username = @username, first_name = @first_name, last_name = @last_name, bio = @bio, website = @website, location = @location, is_admin = @is_admin
    WHERE UserID = @UserID;
END


EXEC update_user @UserID=2, @username='GifttT', @first_name='Gift', @last_name='Mwaiseghe', @bio='Just a demo, some dummy bio', @website='itsregalo.github.io', @location='Nairobi', @is_admin=1;


SELECT * FROM users;