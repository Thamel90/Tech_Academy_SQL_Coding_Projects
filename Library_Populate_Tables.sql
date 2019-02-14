USE db_Library
GO

INSERT INTO tbl_libraryBranch
	(BranchName, BranchAddress)
	VALUES
	('Central', '2215 Broadway Ct'),
	('Sharpstown', '1843 Riverside Ave'),
	('Riverside', '1513 Cherry Blvd'),
	('Mandarin', '2120 Baymeadows Dr')
;

INSERT INTO tbl_libraryBooks
	(PublisherName, Title)
	VALUES
	('Doubleday', 'Pet Sematary'),										/* 101 King Starts */
	('Doubleday', 'The Shining'),
	('Scribner', 'The Outsider'),
	('Doubleday', 'The Stand'),
	('Signet Books', 'The Green Mile')	,								/* 105 */
	('Viking', 'Misery'),
	('Grant', 'The Dark Tower: The Gunslinger'),
	('Viking', 'Needful Things'),										/* 108 King Ends */
	('Secker & Warburg', 'Nineteen Eighty-Four'),						/* Orwell Starts */
	('Secker & Warburg', 'Animal Farm'),								/* 110 */
	('Victor Gollancz Ltd', 'The Road to Wigan Pier'),
	('Victor Gollancz Ltd', 'Keep the Aspidistra Flying'),
	('Harper & Brothers', 'Burmese Days'),
	('Victor Gollancz Ltd', 'Down and Out in Paris and London'),
	('Secker & Warburg', 'Homage to Catalonia'),						/* 115 Orwell ends */
	('Picador USA','The Lost Tribe'),									/* 116 The Lost Tribe */
	('Farrar, Straus and Giroux','Rites of Passage'),					/* 117 William Golding Starts */
	('Farrar, Straus and Giroux','Close Quarters'),
	('Farrar, Straus and Giroux','Fire Down Below'),
	('Faber and Faber', 'The Spire'),									/* 120 William Golding Ends */
	('Bantam Books', 'A Game of Thrones'),								/* 121 GRR Martin Starts */
	('Bantam Books', 'A Clash of Kings'),
	('Bantam Books', 'A Storm of Swords'),
	('Bantam Books', 'A Feast for Crows'),
	('Bantam Books', 'A Dance with Dragons'),							/* 125 GRR Martin Ends */
	('Francisco de Robles', 'Don Quixote'),								/* Miguel de Cervantes */
	('Sylvia Beach', 'Ulysses'),										/* James Joyce */
	('Charles Scribners Sons','The Great Gatsby'),						/* F. Scott Fitzgerald */
	('The Russian Messenger','War and Peace'),							/* Leo Tolstoy */
	('Chatto & Windus','The Adventures of Huckleberry Finn'),			/* 130 Mark Twain */
	('Macmillan', 'Alices Adventures in Wonderland')					/* Lewis Carroll */
;


INSERT INTO tbl_borrowers
	(FullName, Address, Phone)
	VALUES
	('Dale Gribble', '804 Rainey Street', '389-532-6830'),		/* 10001 */
	('Hank Hill', '800 Rainey Street', '389-682-3368'),
	('Bill Dauterive', '807 Rainey Street', '389-492-6421'),
	('Jeffrey Boomhauer', '799 Rainey Street', '389-721-5221'),
	('Peggy Hill', '800 Rainey Street', '389-682-3368'),		/* 10005 */
	('Peter Griffin', '31 Spooner Street', '473-583-2473'),
	('Glenn Quagmire', '35 Spooner Street', '473-444-4489'),
	('Horace Crocker', '270 Windward Dr', '386-582-5920'),
	('Adam West', '500 Pawtucket Ave', '538-295-3953'),
	('Homer Simpson', '742 Evergreen Terrace', '305-382-5694'),	/* 10010 */
	('Ned Flanders', '744 Evergreen Terrace', '305-289-4210'),
	('Milhouse Van Houten', '316 Pikeland Ave.', '305-583-3921'),
	('Abraham Simpson II', '219 Parkland Ct.', '305-689-4385'),
	('Izuku Midoriya', '505 Bayside Blvd', '583-214-9320'),
	('Toshinori Yagi', '235 Waterbridge Ct.', '304-284-3569')	/* 10015 */
;


INSERT INTO tbl_bookCopies
	(BookID, BranchID, Number_Of_Copies)
	VALUES
	(101, 1, 5),
	(102, 1, 8),
	(103, 1, 5),
	(104, 1, 6),
	(105, 1, 5),
	(106, 1, 7),
	(107, 1, 5),
	(108, 1, 6),
	(116, 1, 8),
	(117, 1, 5),
	(118, 1, 6),
	(119, 1, 5),
	(120, 1, 9),
	(126, 1, 5),
	(127, 1, 7),
	(101, 2, 5),
	(109, 2, 5),
	(110, 2, 6),
	(111, 2, 8),
	(112, 2, 6),
	(113, 2, 5),
	(114, 2, 7),
	(115, 2, 9),
	(116, 2, 5),
	(121, 2, 6),
	(122, 2, 7),
	(123, 2, 6),
	(124, 2, 5),
	(125, 2, 7),
	(126, 2, 7),
	(101, 3, 7),
	(102, 3, 8),
	(103, 3, 9),
	(104, 3, 5),
	(105, 3, 5),
	(106, 3, 6),
	(107, 3, 5),
	(108, 3, 5),
	(109, 3, 5),
	(126, 3, 5),
	(127, 3, 7),
	(128, 3, 8),
	(129, 3, 5),
	(130, 3, 6),
	(131, 3, 5),
	(101, 4, 6),
	(102, 4, 5),
	(104, 4, 5),
	(105, 4, 7),
	(107, 4, 5),
	(109, 4, 5),
	(110, 4, 5),
	(111, 4, 5),
	(113, 4, 8),
	(115, 4, 5),
	(116, 4, 5),
	(117, 4, 6),
	(118, 4, 7),
	(121, 4, 8),
	(122, 4, 5)
;

INSERT INTO tbl_bookLoans
	(CardNo, BookID, BranchID, DateOut, DateDue)
	VALUES
	(10001, 121, 2, '2019-02-01', '2019-02-14'),
	(10001, 122, 2, '2019-02-01', '2019-02-14'),
	(10001, 123, 2, '2019-02-01', '2019-02-14'),
	(10001, 124, 2, '2019-02-01', '2019-02-14'),
	(10001, 125, 2, '2019-02-01', '2019-02-14'),
	(10002, 109, 2, '2019-02-07', '2019-02-21'),
	(10002, 110, 2, '2019-02-07', '2019-02-21'),
	(10002, 111, 2, '2019-02-07', '2019-02-21'),
	(10003, 112, 2, '2019-02-03', '2019-02-17'),
	(10003, 113, 2, '2019-02-03', '2019-02-17'),
	(10003, 114, 2, '2019-02-03', '2019-02-17'),
	(10003, 115, 2, '2019-02-03', '2019-02-17'),
	(10004, 121, 2, '2019-02-05', '2019-02-19'),
	(10004, 122, 2, '2019-02-05', '2019-02-19'),
	(10004, 123, 2, '2019-02-05', '2019-02-19'),
	(10005, 116, 2, '2019-02-04', '2019-02-18'),
	(10005, 124, 2, '2019-02-04', '2019-02-18'),
	(10005, 125, 2, '2019-02-04', '2019-02-17'),
	(10005, 126, 2, '2019-02-04', '2019-02-17'),
	(10006, 121, 2, '2019-02-08', '2019-02-22'),
	(10006, 122, 2, '2019-02-08', '2019-02-22'),
	(10006, 123, 2, '2019-02-08', '2019-02-22'),
	(10006, 124, 2, '2019-02-08', '2019-02-22'),
	(10006, 125, 2, '2019-02-08', '2019-02-22'),
	(10008, 101, 1, '2019-02-10', '2019-02-24'),
	(10008, 102, 1, '2019-02-10', '2019-02-24'),
	(10008, 103, 1, '2019-02-10', '2019-02-24'),
	(10008, 104, 1, '2019-02-10', '2019-02-24'),
	(10009, 105, 1, '2019-02-11', '2019-02-25'),
	(10009, 106, 1, '2019-02-11', '2019-02-25'),
	(10009, 107, 1, '2019-02-11', '2019-02-25'),
	(10009, 108, 1, '2019-02-11', '2019-02-25'),
	(10010, 127, 3, '2019-02-06', '2019-02-20'),
	(10010, 128, 3, '2019-02-06', '2019-02-20'),
	(10010, 129, 3, '2019-02-06', '2019-02-20'),
	(10010, 130, 3, '2019-02-06', '2019-02-20'),
	(10010, 104, 3, '2019-02-06', '2019-02-20'),
	(10011, 105, 3, '2019-02-05', '2019-02-19'),
	(10011, 106, 3, '2019-02-05', '2019-02-19'),
	(10011, 107, 3, '2019-02-05', '2019-02-19'),
	(10011, 108, 3, '2019-02-05', '2019-02-19'),
	(10011, 109, 3, '2019-02-05', '2019-02-19'),
	(10011, 131, 3, '2019-02-05', '2019-02-19'),
	(10013, 101, 4, '2019-02-04', '2019-02-18'),
	(10013, 102, 4, '2019-02-04', '2019-02-18'),
	(10013, 105, 4, '2019-02-04', '2019-02-18'),
	(10014, 109, 4, '2019-02-02', '2019-02-16'),
	(10014, 110, 4, '2019-02-02', '2019-02-16'),
	(10014, 111, 4, '2019-02-02', '2019-02-16'),
	(10015, 115, 4, '2019-02-01', '2019-02-14'),
	(10015, 116, 4, '2019-02-01', '2019-02-14'),
	(10015, 117, 4, '2019-02-01', '2019-02-14'),
	(10015, 118, 4, '2019-02-01', '2019-02-14'),
	(10015, 121, 4, '2019-02-01', '2019-02-14')
;


INSERT INTO tbl_Publishers
	(PublisherName, Address, Phone)
	VALUES
	('Doubleday', '1745 Broadway, New York, NY', '+1-212-782-9000'),
	('Scribner','1230 Avenue of the Americas, New York, NY','212-632-4915'),
	('Signet Books', '375 Hudson Street, New York, NY', '212-366-2000'),
	('Viking','1745 Broadway, New York, NY', '212-782-9000'),
	('Grant', '658 Church Street, Richmond, VIC Australia', '+61-3-8520-6444'),
	('Secker & Warburg','20 Vauxhall Bridge Road, London', '020-7840-8570'),
	('Victor Gallancz Ltd','50 Victoria Embankment, London', '020-3122-6444'),
	('Faber and Faber', '74-77 Great Russell Street, London', '+44-020-7927-3800'),
	('Farrar, Straus and Giroux','175 Varick Street, New York, NY', '212-741-6900'),
	('Bantam Books','1745 Broadway, New York, NY', '212-782-9000'),
	('Francisco de Robles','N/A','N/A'),
	('Sylvia Beach','N/A','N/A'),
	('Charles Scribners Sons','N/A','N/A'),
	('The Russian Messenger','N/A','N/A'),
	('Chatto & Windus','1745 Broadway, New York, NY', '212-782-9000'),
	('Macmillan','175 5th Ave, New York, NY', '609-409-0298'),
	('Picador USA', '175 5th Ave, New York, NY', '609-409-0298')
;


INSERT INTO tbl_Authors
	(BookID, AuthorName)
	VALUES
	(101, 'Stephen King'),
	(102, 'Stephen King'),
	(103, 'Stephen King'),
	(104, 'Stephen King'),
	(105, 'Stephen King'),
	(106, 'Stephen King'),
	(107, 'Stephen King'),
	(108, 'Stephen King'),
	(109, 'George Orwell'),
	(110, 'George Orwell'),
	(111, 'George Orwell'),
	(112, 'George Orwell'),
	(113, 'George Orwell'),
	(114, 'George Orwell'),
	(115, 'George Orwell'),
	(116, 'Mark Lee'),
	(117, 'William Golding'),
	(118, 'William Golding'),
	(119, 'William Golding'),
	(120, 'William Golding'),
	(121, 'George R. R. Martin'),
	(122, 'George R. R. Martin'),
	(123, 'George R. R. Martin'),
	(124, 'George R. R. Martin'),
	(125, 'George R. R. Martin'),
	(126, 'Miguel de Cervantes'),
	(127, 'James Joyce'),
	(128, 'F. Scott Fitzgerald'),
	(129, 'Leo Tolstoy'),
	(130, 'Mark Twain'),
	(131, 'Lewis Carroll')
;
