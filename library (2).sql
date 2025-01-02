-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 01:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `BookId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `PublishedDate` date DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `TotalCopies` int(11) NOT NULL,
  `AvailableCopies` int(11) NOT NULL,
  `CoverImageUrl` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookId`, `Title`, `Author`, `ISBN`, `PublishedDate`, `Category`, `TotalCopies`, `AvailableCopies`, `CoverImageUrl`) VALUES
(1, 'C# Programming', 'John Doe', '1234567890123', '2020-05-15', 'Technology', 15, 13, 'https://softuni.org/wp-content/uploads/2021/10/CSharp-Programming-Basics-Book-Cover-1-e1634038541437.png'),
(2, 'Introduction to Algorithms', 'Thomas H. Cormen', '9780262033848', '2009-07-31', 'Computer Science', 12, 12, 'https://th.bing.com/th/id/OIP.yQajhsEchcAz_Bw7YwZITQAAAA?w=420&h=475&rs=1&pid=ImgDetMain'),
(3, 'Clean Code', 'Robert C. Martin', '9780132350884', '2008-08-01', 'Software Development', 10, 10, 'https://img1.od-cdn.com/ImageType-100/6852-1/%7B06C4AD1E-9D1C-42B5-986D-BD6806FEEE5A%7DImg100.jpg'),
(4, 'The Fault in Our Stars', 'John Green', '9780142424179', '2012-01-10', 'Romance', 12, 12, 'https://th.bing.com/th/id/OIP.PifilpbXUx7NxD3h8PofUwHaLH?rs=1&pid=ImgDetMain'),
(5, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides', '9780201633610', '1994-10-31', 'Software Development', 10, 10, 'https://th.bing.com/th/id/OIP.EAouqSCn94VfFPXZ-1i4ogHaJ-?rs=1&pid=ImgDetMain'),
(6, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', '1960-07-11', 'Fiction', 8, 8, 'https://cdn2.penguin.com.au/covers/original/9781784752637.jpg'),
(7, '1984', 'George Orwell', '9780451524935', '1949-06-08', 'Dystopian', 10, 10, 'https://th.bing.com/th/id/OIP.S4AzZN1Wvyk269nNiqGaTQHaMH?rs=1&pid=ImgDetMain'),
(8, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', '1951-07-16', 'Fiction', 5, 5, 'https://th.bing.com/th/id/OIP.SJrJBCkFxthW5BMIfUTZsgHaKV?rs=1&pid=ImgDetMain'),
(9, 'Brave New World', 'Aldous Huxley', '9780060850524', '1932-08-01', 'Dystopian', 7, 7, 'https://img1.od-cdn.com/ImageType-400/0293-1/582/93F/4B/%7B58293F4B-F4B2-4937-A7EF-9E3B3A558C47%7DImg400.jpg'),
(10, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', '1925-04-10', 'Fiction', 6, 6, 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9780743273565/the-great-gatsby-9780743273565_hr.jpg'),
(11, 'Moby Dick', 'Herman Melville', '9781503280786', '1851-11-14', 'Fiction', 4, 4, 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1669512309i/63849929.jpg'),
(12, 'War and Peace', 'Leo Tolstoy', '9780143039990', '1869-01-01', 'Historical Fiction', 3, 3, 'https://th.bing.com/th/id/OIP.IKbBafS4bOtZfBvnryGzzAHaLe?rs=1&pid=ImgDetMain'),
(13, 'The Hobbit', 'J.R.R. Tolkien', '9780345339683', '1937-09-21', 'Fantasy', 10, 10, 'https://images.thenile.io/r1000/9780007270613.jpg'),
(14, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', '1997-09-01', 'Fantasy', 15, 15, 'https://cdn.kobo.com/book-images/63222867-476c-48c2-862f-a2604e09ce67/1200/1200/False/harry-potter-and-the-sorcerer-s-stone-the-first-book-in-the-phenomenal-internationally-bestselling-harry-potter-series-by-j-k-rowling.jpg'),
(15, 'The Chronicles of Narnia', 'C.S. Lewis', '9780066238500', '1950-10-16', 'Fantasy', 8, 7, 'https://th.bing.com/th/id/OIP.gphrJ9Qhw7ONtONhfGuUHwHaLO?rs=1&pid=ImgDetMain'),
(16, 'The Da Vinci Code', 'Dan Brown', '9780307474278', '2003-03-18', 'Mystery', 12, 12, 'https://th.bing.com/th/id/OIP.ApF07FI29I85KfMWlF_EZgAAAA?rs=1&pid=ImgDetMain'),
(17, 'The Hunger Games', 'Suzanne Collins', '9780439023481', '2008-09-14', 'Dystopian', 20, 20, 'https://th.bing.com/th/id/R.4b4a90f337521e7152cebfb5e07d0a9c?rik=O2TnG9HTvOKr5w&riu=http%3a%2f%2f3.bp.blogspot.com%2f-HxVxhy2RH-0%2fVANY1W2HZRI%2fAAAAAAAAEig%2fvi6vPNg85ns%2fs1600%2fTheHungerGames.jpg&ehk=KQ4dOR22%2fOW%2bCyaVmxpK%2bANkKQXrjAOfaqvvVRBpsec%3d&risl=&pid=ImgRaw&r=0'),
(18, 'Pride and Prejudice', 'Jane Austen', '9780141439518', '1813-01-28', 'Romance', 9, 9, 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781471134746/pride-and-prejudice-9781471134746_hr.jpg'),
(20, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769188', '1951-07-16', 'Fiction', 6, 6, 'https://www.bookishelf.com/wp-content/uploads/2020/01/Book-Review-The-Catcher-in-the-Rye-by-J-D-Salinger.jpg'),
(21, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', '2005-08-01', 'Mystery', 14, 14, 'https://th.bing.com/th/id/OIP.JzTap-WuOXh2VPFBlkd98wAAAA?rs=1&pid=ImgDetMain'),
(22, 'The Silent Patient', 'Alex Michaelides', '9781250301697', '2019-02-05', 'Thriller', 9, 9, 'https://th.bing.com/th/id/OIP.buEf0iZV0br5VKAU_cH2jgAAAA?rs=1&pid=ImgDetMain'),
(23, 'The Secret History', 'Donna Tartt', '9780679410321', '1992-09-01', 'Mystery', 7, 7, 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1451554846i/29044.jpg'),
(24, 'The Shining', 'Stephen King', '9780307743657', '1977-01-28', 'Horror', 10, 10, 'https://pictures.abebooks.com/isbn/9780307743657-us.jpg'),
(25, 'It', 'Stephen King', '9780450411434', '1986-09-15', 'Horror', 12, 12, 'https://th.bing.com/th/id/OIP.3ubxFic7-I5F-QfZkgxKCwHaKe?rs=1&pid=ImgDetMain'),
(26, 'The Handmaid\'s Tale', 'Margaret Atwood', '9780385490818', '1985-08-01', 'Dystopian', 6, 6, 'https://images.thenile.io/r1000/9781784873189.jpg'),
(27, 'The Outsiders', 'S.E. Hinton', '9780142407332', '1967-04-24', 'Young Adult', 11, 11, 'https://th.bing.com/th/id/OIP.3FG-9lrxuoybtNP8PzY4pwAAAA?rs=1&pid=ImgDetMain'),
(28, 'The Road', 'Cormac McCarthy', '9780307387899', '2006-09-26', 'Dystopian', 8, 8, 'https://images.thenile.io/r1000/9780330468466.jpg'),
(29, 'Gone Girl', 'Gillian Flynn', '9780307588371', '2012-06-05', 'Thriller', 16, 16, 'https://th.bing.com/th/id/R.9237daf3639ed763c722fb15c4cc1534?rik=rT4hluXHeTy6xw&riu=http%3a%2f%2f3.bp.blogspot.com%2f-f6QoW1dbw08%2fVCA2kZO9U6I%2fAAAAAAAAF-Y%2fKt1je-ai49E%2fs1600%2fGONE_GIRL.jpg&ehk=NqddZmDcAEirqnhZeW9TsxzL04Qsr1ZHVYFE52T2eps%3d&risl=&pid=ImgRaw&r=0'),
(30, 'The Hunger Games: Catching Fire', 'Suzanne Collins', '9780439029520', '2009-09-01', 'Dystopian', 15, 15, 'https://th.bing.com/th/id/R.2d65f9e1471503c19415316dcebe8a77?rik=qV7IwIx%2bGTPrsw&riu=http%3a%2f%2fstateofmind13.files.wordpress.com%2f2012%2f03%2fcatching-fire-book-cover.jpg&ehk=ydlUP1zVf5Rx%2fzr7RLGdgaOH3V6W8G7s5Ifh6cZyKBA%3d&risl=&pid=ImgRaw&r=0'),
(31, 'The Hunger Games: Mockingjay', 'Suzanne Collins', '9780439029544', '2010-08-24', 'Dystopian', 12, 12, 'https://th.bing.com/th/id/OIP.jzZhS28lKWbwUQrVVrlMLQAAAA?rs=1&pid=ImgDetMain'),
(32, 'The Night Circus', 'Erin Morgenstern', '9780385534635', '2011-09-13', 'Fantasy', 9, 9, 'https://cdn2.penguin.com.au/covers/original/9781446468265.jpg'),
(33, 'Circe', 'Madeline Miller', '9780316556347', '2018-04-10', 'Fantasy', 10, 10, 'https://th.bing.com/th/id/OIP.wIQvCuezgwFptrLSoR5-SAHaLZ?rs=1&pid=ImgDetMain'),
(34, 'The Nightingale', 'Kristin Hannah', '9780312577221', '2015-02-03', 'Historical Fiction', 11, 11, 'https://th.bing.com/th/id/OIP.ymyFxrYUmIJK8wJNWVZJ-wAAAA?rs=1&pid=ImgDetMain'),
(35, 'Big Little Lies', 'Liane Moriarty', '9780399167065', '2014-07-29', 'Mystery', 8, 8, 'https://i0.wp.com/candidcover.net/wp-content/uploads/91hxAg7WaL.jpg?fit=1403%2C2475&ssl=1'),
(36, 'The Woman in the Window', 'A.J. Finn', '9780062678416', '2018-01-02', 'Thriller', 7, 7, 'https://th.bing.com/th/id/OIP.k6xSsyW9R9GLdEnaDIxbTQAAAA?rs=1&pid=ImgDetMain'),
(37, 'The Help', 'Kathryn Stockett', '9780399155345', '2009-02-10', 'Historical Fiction', 12, 12, 'https://th.bing.com/th/id/OIP.RHG-0HxD8rijQqNWi3isUAHaLC?rs=1&pid=ImgDetMain'),
(38, 'Where the Crawdads Sing', 'Delia Owens', '9780735219090', '2018-08-14', 'Fiction', 14, 14, 'https://images-na.ssl-images-amazon.com/images/I/51VG7wnnj0L._SY346_.jpg'),
(39, 'Educated', 'Tara Westover', '9780399590504', '2018-02-20', 'Biography', 10, 10, 'https://th.bing.com/th/id/OIP.Jg5Zkjii8xXlqw6FYJ-ymwHaJS?rs=1&pid=ImgDetMain'),
(40, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', '9780062316097', '2015-09-04', 'Non-fiction', 13, 13, 'https://d30a6s96kk7rhm.cloudfront.net/original/readings/978/009/959/9780099590088.jpg'),
(42, 'Becoming', 'Michelle Obama', '9781524763138', '2018-11-13', 'Biography', 15, 15, 'https://tomandlorenzo.com/wp-content/uploads/2020/05/Becoming-Michelle-Obama-Netflix-Documentaries-Previews-Tom-Lorenzo-Site-2.jpg'),
(43, 'The Book Thief', 'Markus Zusak', '9780375842207', '2005-03-14', 'Historical Fiction', 9, 9, 'https://picfiles.alphacoders.com/131/131440.jpg'),
(45, 'dsl', 'sd', '098789076545', '2024-12-10', 'sdd', 12, 12, 'C:\\Users\\eralyn dapula\\Pictures\\Saved Pictures\\IMG_20211022_094443.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `borrowingrecords`
--

CREATE TABLE `borrowingrecords` (
  `BorrowId` int(11) NOT NULL,
  `BookId` int(11) NOT NULL,
  `PatronId` int(11) NOT NULL,
  `BorrowDate` datetime NOT NULL,
  `DueDate` datetime NOT NULL,
  `ReturnDate` datetime DEFAULT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowingrecords`
--

INSERT INTO `borrowingrecords` (`BorrowId`, `BookId`, `PatronId`, `BorrowDate`, `DueDate`, `ReturnDate`, `Status`) VALUES
(1, 1, 1, '2024-12-09 07:32:56', '2024-12-09 07:32:56', '2024-12-09 14:36:16', 2),
(2, 4, 1, '2024-12-09 15:17:50', '2024-12-23 15:17:50', '2024-12-11 11:12:50', 2),
(3, 15, 2, '2024-12-11 16:52:35', '2024-12-25 16:52:35', NULL, 1),
(4, 1, 1, '2024-12-11 16:53:11', '2024-12-25 16:53:11', NULL, 1),
(5, 13, 2, '2024-12-11 16:57:00', '2024-12-25 16:57:00', NULL, 3),
(6, 3, 2, '2024-12-11 16:57:04', '2024-12-25 16:57:04', NULL, 0),
(7, 5, 2, '2024-12-11 16:57:08', '2024-12-25 16:57:08', NULL, 0),
(8, 4, 1, '2024-12-11 16:57:32', '2024-12-25 16:57:32', NULL, 0),
(9, 7, 1, '2024-12-11 16:57:37', '2024-12-25 16:57:37', '2024-12-12 01:05:48', 2);

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE `librarians` (
  `LibrarianId` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `librarians`
--

INSERT INTO `librarians` (`LibrarianId`, `FirstName`, `LastName`, `Email`, `Username`, `Password`, `Role`) VALUES
(1, 'Rashel', 'Dapula', 'asheldred30@gmail.com', 'ashel', '5969a5c558ce04ed20cda600f882e539d8ec07e20c9c4aae31bbbba4118cf928', 'librarian');

-- --------------------------------------------------------

--
-- Table structure for table `patrons`
--

CREATE TABLE `patrons` (
  `PatronsId` int(11) NOT NULL,
  `ProfilePicture` longtext NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `JoinDate` datetime NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patrons`
--

INSERT INTO `patrons` (`PatronsId`, `ProfilePicture`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `JoinDate`, `Username`, `Password`, `Role`) VALUES
(1, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\459724068_1341129120595942_8683689041845000406_n_03cb91af-c27d-4acb-9617-ca1a32252b26.jpg', 'Wilmen', 'Lecong', 'wilmen@gmai.com', '09991566433', '2024-12-08 00:41:57', 'willai', '488621c77ab8936a0c65eef45facf961aee67d465678f3b2444b460e7385cbec', 'patron'),
(2, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\IMG_20220514_184440 (1)_65dce642-da0b-4ce8-bb07-09dc2ad4a529.jpg', 'Luna', 'Dapula', 'luna@gmail.com', '09875678467', '2024-12-11 16:51:36', 'luna', '238e8aacc8eef268e18945850bf3bb0be3f7a1f43fa62d6482f9e94406f43326', 'patron'),
(5, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\received_254981760347302_2fa5aefc-56b1-4126-a4ed-58396334d3ea.jpeg', 'Bea', 'Joe', 'joe@gmai.com', '0987678654', '2024-12-12 01:53:20', 'as', 'f489d566e7dc7cbadfea4404dd73b92e6461403a15b88e0752603148ea572054', 'patron'),
(6, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\1715057194448-removebg-preview (1) (2)_d5846ee7-9c60-4f7f-a92a-2d4b60cc22dd.png', 'Rica', 'Dapula', 'rica@gmail.com', '09878980765', '2024-12-12 02:04:13', 'riks', 'cf0881920bb51503b98a78b9d9e0ed3397e498440678bcb9a7aa77f90a05fcb4', 'patron'),
(7, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\IMG_20221018_121811_3d979643-bf22-4ccb-be15-3a55f6534c8e.jpg', 'Rachel', 'Baga', 'ashel@gmail.com', '09785786547', '2024-12-12 02:13:04', 'ash', 'dbcf08b1e6a46b1027033cacd12b74273cf01a47870c5b014c00ecb5a0da2a1d', 'patron'),
(8, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\IMG_20221123_191003_2edf8be8-6249-4df7-b47e-2a8795937af2.jpg', 'Run', 'Code', 'run@gmail.com', '09877896098', '2024-12-12 16:46:01', 'ass', 'abd0155550b2f4952b4e10f86a69e898cef1aea12aff694fc4798d3de956eab9', 'patron'),
(10, 'C:\\Users\\eralyn dapula\\Documents\\Rashel2ndYearCode\\ObjectOrientedProgramming\\LibraryBookTracker_FinalProject\\LibraryBookTracker_FinalProject\\wwwroot\\images\\7d70dd585a8c2e862ccbac59ee9b79ee_839d1934-0636-47da-9ef9-b9a5cbec98c9.jpg', 'dsd', 'sds', 'sd', '09878765456', '2024-12-12 20:41:13', 'sd', '726762b4bac244c8d2369c5e222887d8ed900ffe810791788f0e929ba7c4642b', 'patron');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`BookId`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `borrowingrecords`
--
ALTER TABLE `borrowingrecords`
  ADD PRIMARY KEY (`BorrowId`),
  ADD KEY `BookId` (`BookId`),
  ADD KEY `PatronId` (`PatronId`);

--
-- Indexes for table `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`LibrarianId`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `patrons`
--
ALTER TABLE `patrons`
  ADD PRIMARY KEY (`PatronsId`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `borrowingrecords`
--
ALTER TABLE `borrowingrecords`
  MODIFY `BorrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `librarians`
--
ALTER TABLE `librarians`
  MODIFY `LibrarianId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patrons`
--
ALTER TABLE `patrons`
  MODIFY `PatronsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowingrecords`
--
ALTER TABLE `borrowingrecords`
  ADD CONSTRAINT `borrowingrecords_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `books` (`BookId`),
  ADD CONSTRAINT `borrowingrecords_ibfk_2` FOREIGN KEY (`PatronId`) REFERENCES `patrons` (`PatronsId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
