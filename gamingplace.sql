-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2016 at 10:39 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamingplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'PS3 Games'),
(2, 'Xbox One Games'),
(3, 'PS4 Games'),
(4, 'Nintendo Wii Games'),
(5, 'Xbox 360 Games');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction_id`, `qty`, `price`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '59.99', '101 Main Street', '', 'Boston', 'Massachusets', '015016'),
(2, 1, 3, '0', 1, '59.99', 'aaa', 'aaa', 'aa', 'aaa', 'aaa'),
(3, 2, 3, '0', 2, '119.98', 'aaa', 'aaa', 'aa', 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `description`, `image`, `price`) VALUES
(1, 2, 'Destiny', 'Destiny is a first-person shooter video game developed by Bungie and published by Activision. It was released worldwide on September 9, 2014, for the PlayStation 3, PlayStation 4, Xbox 360, and Xbox One consoles. Destiny marked Bungie''s first new console franchise since the Halo series, and it is the first game in a ten-year agreement between Bungie and Activision. Set in a "mythic science fiction" world, the game features a multiplayer "shared-world" environment with elements of role-playing games. Activities in Destiny are divided among player versus environment (PvE) and player versus player (PvP) game types. In addition to normal story missions, PvE features three-player "strikes" and six-player raids. A free roam patrol mode is also available for each planet and features public events. PvP features objective-based modes, as well as traditional deathmatch game modes.', 'game1.jpg', '59.99'),
(2, 2, 'Call of Duty: Ghosts', 'Call of Duty: Ghosts is a 2013 first-person shooter video game developed by Infinity Ward, with assistance from Raven Software, Neversoft and Certain Affinity. Published by Activision, it is the tenth primary installment in the Call of Duty series and the sixth developed by Infinity Ward. The video game was released for Microsoft Windows, PlayStation 3, Xbox 360, and Wii U on November 5, 2013, with Treyarch handling the port for the Wii U. The game was released with the launch of next-generation consoles PlayStation 4 and Xbox One and was the second and final Call of Duty game for the Wii U.', 'game2.jpg', '59.99'),
(3, 1, 'Watch Dogs', 'Watch Dogs (stylized as WATCH_DOGS) is an open world action-adventure third-person shooter video game developed by Ubisoft Montreal and published by Ubisoft. It was released worldwide on 27 May 2014 for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360 and Xbox One, while a Wii U version was released in November 2014. Set within a fictionalized version of Chicago, Illinois, the single-player story follows a hacker and his efforts to seek revenge after the killing of his niece. The open world design lets players freely roam Chicago, which includes the urban city, suburbs, open countryside, and the run-down neighborhoods that surround downtown.', 'game3.jpg', '49.99'),
(4, 2, 'Sniper Elite', 'Sniper Elite (also known as Sniper Elite: Berlin 1945) is a third-person tactical shooter stealth video game developed by Rebellion Developments and published by MC2 France in Europe and by Namco Hometek in North America, in 2005. In 2012, to coincide with the release of the remake Sniper Elite V2, it was re-issued through Steam by Rebellion itself. A sequel titled Sniper Elite III was released in 2014.\r\n\r\nThe main character of Sniper Elite is Karl Fairburne, an American OSS secret agent disguised as a German sniper. He is inserted into the Battle of Berlin in 1945, during the final days of World War II, with the critical objective of obtaining German nuclear technology before the Soviet Union.', 'game4.jpg', '49.99'),
(5, 3, 'Batman arkham knight ', 'Batman: Arkham Knight is a 2015 action-adventure video game developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment for PlayStation 4, Xbox One, and Microsoft Windows. Based on the DC Comics superhero Batman, it is the successor to the 2013 video game Batman: Arkham Origins, and the fourth main installment in the Batman: Arkham series. Arkham Knight was released worldwide on June 23, 2015.', 'game5.jpg', '59.99'),
(6, 3, 'Shadow of Mordor', 'The story of the game takes place between the events of The Hobbit and The Lord of the Rings. The players control Talion, a ranger who was killed by the Black Hand of Sauron. Talion''s spirit merged with the wraith of the Elf Lord Celebrimbor, and together they try to avenge the death of their loved ones. Players can engage in melee combat, and utilize some of the wraith abilities to fight against enemies. The game uses the Nemesis System, which allows the artificial intelligence of non-playable characters to remember the death of the game''s protagonist and react accordingly.', 'game6.jpg', '49.99');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `join_date`) VALUES
(1, 'Carmne', 'Buta', 'carmen@buta.com', 'CB', 'parola', '2016-07-28 07:26:16'),
(2, 'Carmen', 'Buta', 'cb@ymail.ro', 'Carmen123', '827ccb0eea8a706c4c34a16891f84e7b', '2016-08-01 08:44:43'),
(3, 'test', 'test', 'test@test.com', 'test', '098f6bcd4621d373cade4e832627b4f6', '2016-08-01 08:47:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
