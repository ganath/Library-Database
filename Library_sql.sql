CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT
);

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(100),
  Author VARCHAR(100),
  ISBN VARCHAR(20),
  PublishedYear INT
);

CREATE TABLE Members (
  MemberID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(15)
);

CREATE TABLE Librarians (
  LibrarianID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100)
);

CREATE TABLE Borrow (
  BorrowID INT PRIMARY KEY,
  BookID INT,
  MemberID INT,
  BorrowDate DATE,
  ReturnDate DATE,
  FOREIGN KEY (BookID) REFERENCES Books(BookID),
  FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

