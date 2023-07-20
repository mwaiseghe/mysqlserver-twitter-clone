DROP DATABASE IF EXISTS TwitterCloneDB;

CREATE DATABASE TwitterCloneDB;

USE TwitterCloneDB;

DROP TABLE IF EXISTS dbo.users;

CREATE TABLE users (
	UserID  INT NOT NULL UNIQUE IDENTITY(1,1),
	username VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	bio VARCHAR(1000),
	website VARCHAR(255),
	location VARCHAR(255),
	is_admin BIT,
	PRIMARY KEY (UserID)
)


DROP TABLE IF EXISTS dbo.posts;
CREATE TABLE posts (
	PostID INT NOT NULL UNIQUE IDENTITY(1,1),
	UserID INT NOT NULL,
	post_title VARCHAR,
	post_content VARCHAR,
	PRIMARY KEY(PostID),
	FOREIGN KEY(UserID) REFERENCES users(UserID)
	)

DROP TABLE IF EXISTS dbo.comments;

CREATE TABLE comments (
	CommentID INT NOT NULL UNIQUE IDENTITY(1,1),
	UserID INT NOT NULL,
	PostID INT NOT NULL,
	comment_comment VARCHAR,
	PRIMARY KEY(CommentID),
	FOREIGN KEY(UserID) REFERENCES users(UserID),
	FOREIGN KEY(PostID) REFERENCES posts(PostID)
	)








	


