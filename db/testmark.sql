-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 12:20 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testmark`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `associate`
--

CREATE TABLE `associate` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `associate`
--

INSERT INTO `associate` (`id`, `name`, `link`) VALUES
(1, 'RealTech', 'http://info.cern.ch/hypertext/WWW/TheProject.html'),
(2, 'Tim\'s Copper', 'https://internet.com/ '),
(3, 'True Slate Tin', 'https://www.visitcornwall.com/'),
(4, 'PowerWeb', 'https://example.com/'),
(5, 'Local Tools', 'https://www.apachefriends.org/'),
(6, 'Digital Extensions', 'https://code.visualstudio.com/');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `body`) VALUES
(1, 'Sensors', 'Sensors are electronic devices designed to detect changes in the environment or an object. These sensors can be used in a variety of industries such as manufacturing, automotive, and HVAC, to ensure that levels are within a safe and optimal range. They work by detecting changes in the physical properties of the environment or object, and converting them into an electrical signal that can then be read by a computer or other device. This information can be used to control levels, monitor equipment performance, and ensure that products are stored in the correct conditions. There are many types of sensors available, each with their own unique features and applications. Regardless of the type of sensor used, they play a critical role in ensuring the safety and efficiency of various processes and systems.'),
(2, 'Thermowells, Fittings and Transmitters', 'Thermowells, fittings, and transmitters are important components of temperature measurement systems used in various industries such as oil and gas, chemical, and pharmaceutical. Thermowells are protective sleeves that are used to encase temperature sensors, allowing them to be inserted into process piping or vessels without being directly exposed to the process media. This protects the sensor from damage and allows for easy replacement without disrupting the process. Fittings are used to attach the thermowell to the process piping or vessel. Transmitters, on the other hand, are electronic devices that convert the temperature signal from the sensor into a standardized output signal that can be read by a control system or other device. These components work together to provide accurate and reliable temperature measurements in a wide range of process applications. It is important to choose the right type of thermowell, fitting, and transmitter for the specific process and application to ensure optimal performance and safety.'),
(3, 'Cables', 'Cables are an essential component in many industries, including manufacturing, telecommunications, and construction. They are used to transmit power, data, and signals from one point to another. Cables can be made from a variety of materials, including copper, aluminium, and fibre optics. The type of cable chosen depends on the specific application and the requirements for the transmission of power, data, or signals. There are different types of cables available, including power cables, communication cables, and control cables. Power cables are used to transmit electricity from a power source to a device or machine. Communication cables are used to transmit data and signals between devices, while control cables are used to control the movement and operation of machines and equipment. It is important to choose the right type of cable for the specific application to ensure optimal performance and safety.'),
(4, 'Instrumentation', 'Instrumentation refers to the process of measuring, controlling, and monitoring various parameters such as temperature, pressure, flow, and level in industrial and scientific applications. It involves the use of various instruments and devices, such as sensors, transmitters, controllers, and recorders, to ensure optimal performance and safety in a wide range of processes and systems. Instrumentation is essential in industries such as oil and gas, chemical, and pharmaceutical, where accuracy, reliability, and safety are critical. It enables operators to monitor and control the process parameters in real-time, detect potential issues, and take corrective actions to prevent accidents and ensure efficient operation. There are different types of instrumentation systems available, ranging from simple to complex, depending on the specific application and requirements. It is essential to choose the right instrumentation system and components for the specific application to ensure optimal performance and safety.'),
(5, 'Connectors', 'Connectors are devices used to join or connect electrical or mechanical components, devices, and systems. They are essential in many industries, including automotive, aerospace, and telecommunications, where secure and reliable connections are critical. Connectors come in different shapes, sizes, and configurations, and are designed to meet different requirements for power, signal, and data transmission. Some of the most common types of connectors include circular connectors, rectangular connectors, and coaxial connectors. Circular connectors are used in harsh environments and can provide multiple contacts for power and signal transmission. Rectangular connectors are designed for high-density applications and can provide a large number of contacts in a small space. Coaxial connectors are used for high-frequency applications, such as in telecommunications and radio frequency systems.');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `address`) VALUES
(1, 'BTools@Letters.org'),
(2, 'JTools@Letters.org');

-- --------------------------------------------------------

--
-- Table structure for table `email_organisation`
--

CREATE TABLE `email_organisation` (
  `email_id` int(11) NOT NULL,
  `organisation_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_organisation`
--

INSERT INTO `email_organisation` (`email_id`, `organisation_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `organisation_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `timecreated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `first_name`, `last_name`, `organisation_id`, `email_id`, `body`, `timecreated`) VALUES
(1, 'Bob', 'Smith', 1, 1, 'Can you send me more info about the thermal resistance of your cables?', '2023-03-28 07:50:09'),
(2, 'Jeb', 'Bird', 1, 2, 'Can you send me more info about your Bakelite supplier?', '2023-03-28 08:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `body`, `product_id`) VALUES
(1, 'New Bakelite Standard Released', 'A new standard for Bakelite, the first synthetic plastic material, has been released by the International Organization for Standardization (ISO). The ISO 431 standard outlines the requirements for the composition, physical properties, and performance of Bakelite, ensuring its quality and consistency across industries.\r\n\r\nAccording to the ISO, the standard was developed by a team of experts from industry, academia, and government, and is based on extensive research and testing.\r\n\r\n', 1),
(2, 'Breakthrough in Ribbon Electric Cable Technology', 'A team of researchers has announced a breakthrough in ribbon electric cable technology that could revolutionize the way we transmit electricity. The new technology, developed by a team of scientists from the University of California, Berkeley, and Lawrence Berkeley National Laboratory, utilizes a unique ribbon-shaped cable design that improves power transmission efficiency and reduces energy loss.\r\n\r\nThe technology works by arranging the conductive elements in a ribbon shape, allowing for a more compact and efficient design.', 2),
(3, 'Bolted Thermal Sensors Improve Safety', 'A new type of bolted thermal sensor has been developed that promises to improve safety in a range of industries. The sensors, developed by a team of researchers from the University of Cambridge, are designed to detect and monitor temperature changes in industrial settings, helping to prevent accidents and equipment failures.\r\n\r\nThe sensors are made up of two metal plates, which are bolted together with a small gap in between. As the temperature changes, the plates expand or contract, changing the size of the gap and creating an electrical signal that can be monitored and analysed.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`id`, `name`) VALUES
(1, 'Bob\'s Tools');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `card_text` varchar(300) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `card_text`, `category_id`, `active`) VALUES
(1, 'Bakelite Insulated Cables', 'idcCableCard.jpg', 'Our Bakelite insulated cables are made specifically to add to and replace existing Bakelite insulated cabling for maximum legacy support.', 3, 1),
(2, 'Ribbon Electric Cables', 'idcCableCard.jpg', 'Ribbon Electric Cables offers a wide range of high-quality electrical cables that are designed for maximum performance and durability. Our cables are manufactured using the latest technology and are made from premium materials to ensure reliability and safety. We have a solution for you.', 3, 1),
(3, 'Bolted Thermal Sensors', 'boltedTS.jpg', 'Introducing Bolted Thermal Sensors, the innovative solution for accurately measuring temperature in a variety of industrial applications. These sensors are designed with precision in mind, featuring a bolted design that ensures a secure and stable installation.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_section`
--

CREATE TABLE `product_section` (
  `product_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_section`
--

INSERT INTO `product_section` (`product_id`, `section_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `body`) VALUES
(1, 'Benefits of Bakelite', 'Bakelite is a thermosetting plastic that has been used for decades as an excellent insulator for cables. This material is ideal for cable insulation because it is highly resistant to heat and electricity, which are two of the main factors that can cause cables to fail.\r\n\r\nBakelite is a non-conductive material, meaning that it does not conduct electricity. This property makes it ideal for insulating cables, as it prevents any unwanted electricity from escaping and causing damage or injury. Additionally, Bakelite has a high dielectric strength, which means that it can withstand high voltage levels without breaking down or becoming damaged.'),
(2, 'Thermal Properties', 'Thermal Conductivity: 0.043 W/mK\r\nHeat Capacity: 2.5 J/gK\r\nThermal Resistance: 0.23 K/W\r\nMaximum Operating Temperature: 90°C\r\nMinimum Installation Temperature: -10°C\r\nThermal Expansion Coefficient: 18.5 x 10^-6/K'),
(3, 'Bolt Strength ', 'Bolt strength is crucial for ensuring a secure and stable installation. That\'s why our sensors are designed with high-strength bolts that can withstand heavy loads and extreme temperatures. Our bolts are carefully selected to match the material and application requirements, ensuring a perfect fit and maximum durability. This ensures that our sensors are securely installed and can withstand the demands of even the toughest industrial environments.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `associate`
--
ALTER TABLE `associate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_organisation`
--
ALTER TABLE `email_organisation`
  ADD KEY `eolink_email` (`email_id`),
  ADD KEY `eolink_organisation` (`organisation_id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inquiry_email` (`email_id`),
  ADD KEY `inquiry_organisation` (`organisation_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_news` (`product_id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category` (`category_id`);

--
-- Indexes for table `product_section`
--
ALTER TABLE `product_section`
  ADD KEY `pslink_product` (`product_id`),
  ADD KEY `pslink_section` (`section_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `associate`
--
ALTER TABLE `associate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_organisation`
--
ALTER TABLE `email_organisation`
  ADD CONSTRAINT `eolink_email` FOREIGN KEY (`email_id`) REFERENCES `email` (`id`),
  ADD CONSTRAINT `eolink_organisation` FOREIGN KEY (`organisation_id`) REFERENCES `organisation` (`id`);

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_email` FOREIGN KEY (`email_id`) REFERENCES `email` (`id`),
  ADD CONSTRAINT `inquiry_organisation` FOREIGN KEY (`organisation_id`) REFERENCES `organisation` (`id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `product_news` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_section`
--
ALTER TABLE `product_section`
  ADD CONSTRAINT `pslink_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `pslink_section` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
