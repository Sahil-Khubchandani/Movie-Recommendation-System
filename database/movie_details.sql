-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 01:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie_details`
--

CREATE TABLE `movie_details` (
  `id` int(11) NOT NULL,
  `movieName` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `releaseDate` date DEFAULT NULL,
  `rating` decimal(4,2) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_details`
--

INSERT INTO `movie_details` (`id`, `movieName`, `category`, `summary`, `releaseDate`, `rating`, `link`) VALUES
(1, 'Inception', 'Science Fiction', 'A thief enters people\'s dreams to steal their secrets, but now he must plant an idea in someone\'s mind.', '2010-07-16', 8.80, 'https://www.imdb.com/title/tt1375666/'),
(2, 'The Shawshank Redemption', 'Drama', 'Two imprisoned men bond over many years, finding solace and eventual redemption through acts of common decency.', '1994-09-23', 9.30, 'https://www.imdb.com/title/tt0111161/'),
(3, 'The Godfather', 'Crime', 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.', '1972-03-24', 9.20, 'https://www.imdb.com/title/tt0068646/'),
(4, 'Pulp Fiction', 'Crime', 'Various interconnected stories revolve around crime, redemption, and unexpected circumstances.', '1994-10-14', 8.90, 'https://www.imdb.com/title/tt0110912/'),
(5, 'Jurassic Park', 'Science Fiction', 'A theme park with genetically-engineered dinosaurs becomes a disaster when the dinosaurs escape.', '1993-06-11', 8.10, 'https://www.imdb.com/title/tt0107290/'),
(6, 'Avatar', 'Science Fiction', 'A paraplegic Marine is sent to the alien moon Pandora and gets involved in a conflict between humans and native Na\'vi.', '2009-12-18', 7.80, 'https://www.imdb.com/title/tt0499549/'),
(7, 'The Avengers', 'Action', 'A group of superheroes must unite to stop a powerful enemy from subjugating humanity.', '2012-04-11', 8.00, 'https://www.imdb.com/title/tt0848228/'),
(8, 'Titanic', 'Romance', 'A young artist and a wealthy woman fall in love on the ill-fated maiden voyage of the RMS Titanic.', '1997-12-19', 7.80, 'https://www.imdb.com/title/tt0120338/'),
(9, 'Interstellar', 'Science Fiction', 'A group of explorers travel through a wormhole in space to find a new habitable planet as Earth faces a global food crisis.', '2014-11-05', 8.60, 'https://www.imdb.com/title/tt0816692/'),
(10, 'The Silence of the Lambs', 'Crime', 'A young FBI cadet seeks the help of a brilliant but insane serial killer to catch another serial killer.', '1991-02-14', 8.60, 'https://www.imdb.com/title/tt0102926/'),
(11, 'The Matrix Reloaded', 'Science Fiction', 'Neo continues his journey as The One, facing new challenges in the simulated reality created by the machines.', '2003-05-15', 7.20, 'https://www.imdb.com/title/tt0234215/'),
(12, 'Inglourious Basterds', 'War', 'In Nazi-occupied France, a group of Jewish-American soldiers plan to assassinate top Nazi officials.', '2009-08-21', 8.30, 'https://www.imdb.com/title/tt0361748/'),
(13, 'The Revenant', 'Adventure', 'A frontiersman left for dead survives in the wilderness and seeks revenge on those who betrayed him.', '2015-12-25', 8.00, 'https://www.imdb.com/title/tt1663202/'),
(14, 'La La Land', 'Musical', 'An aspiring actress and a jazz musician fall in love while pursuing their dreams in Los Angeles.', '2016-12-09', 8.00, 'https://www.imdb.com/title/tt3783958/'),
(15, 'Black Panther', 'Action', 'T\'Challa returns to the hidden, technologically advanced African nation of Wakanda to take the throne as king.', '2018-02-16', 7.30, 'https://www.imdb.com/title/tt1825683/'),
(16, 'Eternal Sunshine of the Spotless Mind', 'Romance', 'A man discovers his ex-girlfriend underwent a procedure to erase him from her memory.', '2004-03-19', 8.30, 'https://www.imdb.com/title/tt0338013/'),
(17, 'The Lion King', 'Animation', 'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', '1994-06-15', 8.50, 'https://www.imdb.com/title/tt0110357/'),
(18, 'Gone with the Wind', 'Drama', 'Set against the backdrop of the American Civil War, a strong-willed woman falls for a charismatic but roguish man.', '1939-12-15', 8.10, 'https://www.imdb.com/title/tt0031381/'),
(19, 'Gravity', 'Science Fiction', 'Two astronauts are stranded in space after the destruction of their space shuttle and must find a way to return to Earth.', '2013-10-04', 7.70, 'https://www.imdb.com/title/tt1454468/'),
(20, 'Schindler\'s List', 'Drama', 'In German-occupied Poland during World War II, a businessman seeks to save the lives of thousands of Jewish refugees.', '1993-12-15', 8.90, 'https://www.imdb.com/title/tt0108052/'),
(21, 'The Dark Knight Rises', 'Action', 'Batman must come out of hiding to save Gotham City from the ruthless villain Bane.', '2012-07-20', 8.40, 'https://www.imdb.com/title/tt1345836/'),
(22, 'The Exorcist', 'Horror', 'A mother seeks the help of two priests to save her daughter from a malevolent entity.', '1973-12-26', 8.00, 'https://www.imdb.com/title/tt0070047/'),
(23, 'The Sixth Sense', 'Mystery', 'A troubled young boy claims to see and communicate with the dead, leading a psychologist to question his own beliefs.', '1999-08-06', 8.10, 'https://www.imdb.com/title/tt0167404/'),
(24, 'Back to the Future', 'Science Fiction', 'A young man accidentally travels 30 years into the past and must ensure his parents fall in love or risk altering the course of history.', '1985-07-03', 8.50, 'https://www.imdb.com/title/tt0088763/'),
(25, 'Saving Private Ryan', 'War', 'A group of soldiers search for a paratrooper during World War II to send him home after his brothers are killed in action.', '1998-07-24', 8.60, 'https://www.imdb.com/title/tt0120815/'),
(26, 'Inception', 'Science Fiction', 'A thief enters people\'s dreams to steal their secrets, but now he must plant an idea in someone\'s mind.', '2010-07-16', 8.80, 'https://www.imdb.com/title/tt1375666/'),
(27, 'The Social Network', 'Drama', 'The story of how Mark Zuckerberg created the social networking site Facebook and the controversies that followed.', '2010-10-01', 7.70, 'https://www.imdb.com/title/tt1285016/'),
(28, 'Mad Max: Fury Road', 'Action', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search of her homeland with the help of a group of female prisoners.', '2015-05-15', 8.10, 'https://www.imdb.com/title/tt1392190/'),
(29, 'Forrest Gump', 'Drama', 'A man with a low IQ witnesses and influences major historical events in the 20th century United States.', '1994-07-06', 8.80, 'https://www.imdb.com/title/tt0109830/'),
(30, 'Casablanca', 'Drama', 'During World War II, a nightclub owner tries to help his ex-lover and her husband escape to America.', '1942-11-26', 8.50, 'https://www.imdb.com/title/tt0034583/'),
(31, 'The Godfather: Part II', 'Crime', 'The story of the early life and rise to power of Vito Corleone, as well as his son Michael\'s journey as the new Don.', '1974-12-20', 9.00, 'https://www.imdb.com/title/tt0071562/'),
(32, 'Forrest Gump', 'Drama', 'A man with a low IQ witnesses and influences major historical events in the 20th century United States.', '1994-07-06', 8.80, 'https://www.imdb.com/title/tt0109830/'),
(33, 'The Prestige', 'Drama', 'Two magicians engage in a bitter rivalry that becomes a dangerous obsession, leading them to perform increasingly risky tricks.', '2006-10-20', 8.50, 'https://www.imdb.com/title/tt0482571/'),
(34, 'The Lord of the Rings: The Two Towers', 'Fantasy', 'Frodo and Sam continue their journey to Mordor, while Aragorn, Legolas, and Gimli face challenges in Rohan and Isengard.', '2002-12-18', 8.70, 'https://www.imdb.com/title/tt0167261/'),
(35, 'The Truman Show', 'Comedy', 'A man discovers that his entire life has been a television show and decides to escape the controlled reality.', '1998-06-05', 8.10, 'https://www.imdb.com/title/tt0120382/'),
(36, 'The Departed', 'Crime', 'An undercover cop and a mole in the police force attempt to identify each other while infiltrating an Irish gang in Boston.', '2006-10-06', 8.50, 'https://www.imdb.com/title/tt0407887/'),
(37, 'The Silence of the Lambs', 'Crime', 'A young FBI cadet seeks the help of a brilliant but insane serial killer to catch another serial killer.', '1991-02-14', 8.60, 'https://www.imdb.com/title/tt0102926/'),
(38, 'The Big Lebowski', 'Comedy', 'An eccentric bowling enthusiast gets involved in a series of odd events and confronts a millionaire who shares his name.', '1998-03-06', 8.10, 'https://www.imdb.com/title/tt0118715/'),
(39, 'The Sound of Music', 'Musical', 'A woman becomes a governess for a widowed naval captain\'s seven children and brings music and joy back into their lives.', '1965-03-02', 8.00, 'https://www.imdb.com/title/tt0059742/'),
(40, 'A Beautiful Mind', 'Drama', 'The story of mathematician John Nash and his struggles with schizophrenia while making groundbreaking contributions to mathematics.', '2001-12-21', 8.20, 'https://www.imdb.com/title/tt0268978/'),
(41, 'The Green Mile', 'Drama', 'The lives of guards on Death Row are affected by the arrival of a new inmate, who possesses supernatural healing powers.', '1999-12-10', 8.60, 'https://www.imdb.com/title/tt0120689/'),
(42, 'The Truman Show', 'Comedy', 'A man discovers that his entire life has been a television show and decides to escape the controlled reality.', '1998-06-05', 8.10, 'https://www.imdb.com/title/tt0120382/'),
(43, 'Memento', 'Mystery', 'A man with short-term memory loss tries to solve the mystery of his wife\'s murder by using Polaroid photos and tattoos.', '2000-09-05', 8.40, 'https://www.imdb.com/title/tt0209144/'),
(44, 'Pan\'s Labyrinth', 'Fantasy', 'In post-Civil War Spain, a young girl discovers a magical labyrinth and encounters strange creatures, blending fantasy and reality.', '2006-10-11', 8.20, 'https://www.imdb.com/title/tt0457430/'),
(45, 'The Social Network', 'Drama', 'The story of how Mark Zuckerberg created the social networking site Facebook and the controversies that followed.', '2010-10-01', 7.70, 'https://www.imdb.com/title/tt1285016/'),
(46, 'Inglourious Basterds', 'War', 'In Nazi-occupied France, a group of Jewish-American soldiers plan to assassinate top Nazi officials.', '2009-08-21', 8.30, 'https://www.imdb.com/title/tt0361748/'),
(47, 'The Grand Budapest Hotel', 'Comedy', 'The story of a legendary hotel concierge and his young protégé as they become involved in a series of misadventures.', '2014-03-07', 8.10, 'https://www.imdb.com/title/tt2278388/'),
(48, 'Blade Runner 2049', 'Science Fiction', 'A young blade runner uncovers a long-buried secret that has the potential to plunge what\'s left of society into chaos.', '2017-10-06', 8.00, 'https://www.imdb.com/title/tt1856101/'),
(49, 'The Departed', 'Crime', 'An undercover cop and a mole in the police force attempt to identify each other while infiltrating an Irish gang in Boston.', '2006-10-06', 8.50, 'https://www.imdb.com/title/tt0407887/'),
(50, 'The Lion King', 'Animation', 'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', '1994-06-15', 8.50, 'https://www.imdb.com/title/tt0110357/'),
(51, 'The Lord of the Rings: The Return of the King', 'Fantasy', 'The final battle for Middle-earth begins as Frodo and Sam reach Mordor.', '2003-12-17', 8.90, 'https://www.imdb.com/title/tt0167260/'),
(52, 'The Bourne Identity', 'Thriller', 'A man with amnesia discovers he\'s a trained assassin pursued by various forces while trying to uncover his true identity.', '2002-06-14', 7.90, 'https://www.imdb.com/title/tt0258463/'),
(53, 'Finding Nemo', 'Animation', 'A clownfish embarks on a journey across the ocean to find his son who has been captured and taken to a dentist\'s office.', '2003-05-30', 8.10, 'https://www.imdb.com/title/tt0266543/'),
(54, 'The Princess Bride', 'Adventure', 'A fairy tale adventure following a young woman and her true love as they face obstacles, pirates, and a scheming prince.', '1987-10-09', 8.10, 'https://www.imdb.com/title/tt0093779/'),
(55, 'The Conjuring', 'Horror', 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.', '2013-07-19', 7.50, 'https://www.imdb.com/title/tt1457767/'),
(56, 'The Martian', 'Science Fiction', 'An astronaut becomes stranded on Mars and must rely on his ingenuity to survive while NASA and his crewmates work to bring him home.', '2015-10-02', 8.00, 'https://www.imdb.com/title/tt3659388/'),
(57, 'The Notebook', 'Romance', 'A poor young man and a wealthy woman fall in love over the course of many years.', '2004-06-25', 7.80, 'https://www.imdb.com/title/tt0332280/'),
(58, 'The Great Escape', 'War', 'Allied prisoners of war plan and execute a massive escape from a German POW camp during World War II.', '1963-07-04', 8.20, 'https://www.imdb.com/title/tt0057115/'),
(59, 'The Dark Knight', 'Action', 'Batman faces the Joker in a battle for Gotham City\'s soul.', '2008-07-18', 9.00, 'https://www.imdb.com/title/tt0468569/'),
(60, 'The Sound of Music', 'Musical', 'A woman becomes a governess for a widowed naval captain\'s seven children and brings music and joy back into their lives.', '1965-03-02', 8.00, 'https://www.imdb.com/title/tt0059742/'),
(61, 'The Incredibles', 'Family', 'A family of superheroes must come out of retirement to save the world from a new supervillain.', '2004-11-05', 8.00, 'https://www.imdb.com/title/tt0317705/'),
(62, 'The Shawshank Redemption', 'Drama', 'Two imprisoned men bond over many years, finding solace and eventual redemption through acts of common decency.', '1994-09-23', 9.30, 'https://www.imdb.com/title/tt0111161/'),
(63, 'The Terminator', 'Science Fiction', 'A cyborg assassin is sent back in time to kill the mother of the future leader of the human resistance.', '1984-10-26', 8.00, 'https://www.imdb.com/title/tt0088247/'),
(64, 'Annie Hall', 'Comedy', 'A neurotic comedian reflects on his past relationships while trying to navigate a new one with a quirky aspiring singer.', '1977-04-20', 8.00, 'https://www.imdb.com/title/tt0075686/'),
(65, 'The Italian Job', 'Action', 'A team of thieves plan to steal a gold shipment in Venice, but their plans are complicated by unforeseen obstacles.', '2003-05-30', 7.00, 'https://www.imdb.com/title/tt0317740/'),
(66, 'The Sixth Sense', 'Mystery', 'A troubled young boy claims to see and communicate with the dead, leading a psychologist to question his own beliefs.', '1999-08-06', 8.10, 'https://www.imdb.com/title/tt0167404/'),
(67, 'The Rocky Horror Picture Show', 'Musical', 'A newly engaged couple stumbles upon a bizarre mansion and is drawn into its wild and unconventional world.', '1975-09-26', 7.40, 'https://www.imdb.com/title/tt0073629/'),
(68, 'The Hunt for Red October', 'Thriller', 'A Soviet submarine captain defects to the West with his nation\'s ultimate weapon: a nuclear-armed ballistic missile submarine.', '1990-03-02', 7.60, 'https://www.imdb.com/title/tt0099810/'),
(69, 'Toy Story', 'Animation', 'Toys come to life when humans aren\'t around, leading to adventures and valuable life lessons.', '1995-11-22', 8.30, 'https://www.imdb.com/title/tt0114709/'),
(70, 'The Great Gatsby', 'Romance', 'A writer and Wall Street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.', '2013-05-10', 7.20, 'https://www.imdb.com/title/tt1343092/'),
(71, 'The Matrix', 'Science Fiction', 'A computer hacker discovers a dystopian reality and joins a group of rebels in a fight against intelligent machines.', '1999-03-31', 8.70, 'https://www.imdb.com/title/tt0133093/'),
(72, 'The Shawshank Redemption', 'Drama', 'Two imprisoned men bond over many years, finding solace and eventual redemption through acts of common decency.', '1994-09-23', 9.30, 'https://www.imdb.com/title/tt0111161/'),
(73, 'Mary Poppins', 'Musical', 'A magical nanny brings joy and order to a British family, using her unique powers and whimsical attitude.', '1964-08-27', 7.80, 'https://www.imdb.com/title/tt0058331/'),
(74, 'Die Hard', 'Action', 'A New York cop tries to save hostages and stop terrorists during a Christmas party at a Los Angeles skyscraper.', '1988-07-20', 8.20, 'https://www.imdb.com/title/tt0095016/'),
(75, 'The Conjuring', 'Horror', 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.', '2013-07-19', 7.50, 'https://www.imdb.com/title/tt1457767/'),
(76, 'Pulp Fiction', 'Crime', 'Various interconnected stories revolve around crime, redemption, and unexpected circumstances.', '1994-10-14', 8.90, 'https://www.imdb.com/title/tt0110912/'),
(77, 'The Lion King', 'Animation', 'A young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', '1994-06-15', 8.50, 'https://www.imdb.com/title/tt0110357/'),
(78, 'Gladiator', 'Adventure', 'A former Roman General seeks vengeance for the murder of his family and the downfall of his empire.', '2000-05-05', 8.50, 'https://www.imdb.com/title/tt0172495/'),
(79, 'Mamma Mia!', 'Musical', 'The story of a bride-to-be trying to find her real father told using hit songs by the popular 1970s group ABBA.', '2008-07-18', 6.40, 'https://www.imdb.com/title/tt0795421/'),
(80, 'Casablanca', 'Romance', 'During World War II, a nightclub owner tries to help his ex-lover and her husband escape to America.', '1942-11-26', 8.50, 'https://www.imdb.com/title/tt0034583/'),
(81, 'The Wizard of Oz', 'Fantasy', 'Dorothy and her dog Toto are swept away to the magical land of Oz, where they embark on a quest to find the Wizard.', '1939-08-25', 8.00, 'https://www.imdb.com/title/tt0032138/'),
(82, 'Seven', 'Mystery', 'Two detectives hunt a serial killer who uses the seven deadly sins as his motives.', '1995-09-22', 8.60, 'https://www.imdb.com/title/tt0114369/'),
(83, 'Avatar', 'Science Fiction', 'A paraplegic Marine is sent to the alien moon Pandora and gets involved in a conflict between humans and native Na\'vi.', '2009-12-18', 7.80, 'https://www.imdb.com/title/tt0499549/'),
(84, 'The Silence of the Lambs', 'Crime', 'A young FBI cadet seeks the help of a brilliant but insane serial killer to catch another serial killer.', '1991-02-14', 8.60, 'https://www.imdb.com/title/tt0102926/'),
(85, 'Ghostbusters', 'Comedy', 'A group of parapsychologists start a ghost-catching business in New York City to save the world from supernatural threats.', '1984-06-08', 7.80, 'https://www.imdb.com/title/tt0087332/'),
(86, 'Inception', 'Action', 'A thief enters people\'s dreams to steal their secrets, but now he must plant an idea in someone\'s mind.', '2010-07-16', 8.80, 'https://www.imdb.com/title/tt1375666/'),
(87, 'The Notebook', 'Romance', 'A poor young man and a wealthy woman fall in love over the course of many years.', '2004-06-25', 7.80, 'https://www.imdb.com/title/tt0332280/'),
(88, 'Jurassic Park', 'Adventure', 'A theme park with genetically-engineered dinosaurs becomes a disaster when the dinosaurs escape.', '1993-06-11', 8.10, 'https://www.imdb.com/title/tt0107290/'),
(89, 'Saving Private Ryan', 'War', 'A group of soldiers search for a paratrooper during World War II to send him home after his brothers are killed in action.', '1998-07-24', 8.60, 'https://www.imdb.com/title/tt0120815/'),
(90, 'Chicago', 'Musical', 'A murderess on death row recruits a fellow inmate to help her win the hearts of the public and avoid conviction.', '2002-12-27', 7.10, 'https://www.imdb.com/title/tt0299658/'),
(91, 'The Truman Show', 'Drama', 'A man discovers that his entire life has been a television show and decides to escape the controlled reality.', '1998-06-05', 8.10, 'https://www.imdb.com/title/tt0120382/'),
(92, 'Raiders of the Lost Ark', 'Adventure', 'Archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before the Nazis.', '1981-06-12', 8.40, 'https://www.imdb.com/title/tt0082971/'),
(93, 'The Breakfast Club', 'Comedy', 'Five high school students from different backgrounds spend a Saturday in detention, learning about themselves and each other.', '1985-02-15', 7.80, 'https://www.imdb.com/title/tt0088847/'),
(94, 'A Clockwork Orange', 'Crime', 'In a dystopian future, a delinquent is subjected to an experimental rehabilitation program that may not be as benevolent as it seems.', '1971-02-02', 8.30, 'https://www.imdb.com/title/tt0066921/'),
(95, 'Top Gun', 'Action', 'As students at the United States Navy\'s elite fighter weapons school compete to be best in the class, one daring young pilot learns a few things from a civilian instructor.', '1986-05-16', 6.90, 'https://www.imdb.com/title/tt0092099/'),
(96, 'Moulin Rouge!', 'Musical', 'A young poet falls for a beautiful courtesan whom a jealous duke covets in this lavish musical.', '2001-05-24', 7.60, 'https://www.imdb.com/title/tt0203009/'),
(97, 'E.T. the Extra-Terrestrial', 'Family', 'A young boy befriends a gentle alien and helps it return home while evading government agents.', '1982-06-11', 7.80, 'https://www.imdb.com/title/tt0083866/'),
(98, 'The Grand Budapest Hotel', 'Comedy', 'The story of a legendary hotel concierge and his young protégé as they become involved in a series of misadventures.', '2014-03-07', 8.10, 'https://www.imdb.com/title/tt2278388/'),
(99, 'The King\'s Speech', 'Drama', 'The story of King George VI, who struggles with a debilitating speech impediment, and the speech therapist who helps him find his voice.', '2010-12-25', 8.00, 'https://www.imdb.com/title/tt1504320/'),
(100, 'The Pursuit of Happyness', 'Drama', 'A struggling salesman takes custody of his son as he embarks on a challenging journey to build a better life and pursue his dreams.', '2006-12-15', 8.00, 'https://www.imdb.com/title/tt0454921/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie_details`
--
ALTER TABLE `movie_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie_details`
--
ALTER TABLE `movie_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
