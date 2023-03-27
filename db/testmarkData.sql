-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 04:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `body`) VALUES
(1, 'Sensors', 'Sensors are electronic devices designed to detect changes in the environment or an object. These sensors can be used in a variety of industries such as manufacturing, automotive, and HVAC, to ensure that levels are within a safe and optimal range. They work by detecting changes in the physical properties of the environment or object, and converting them into an electrical signal that can then be read by a computer or other device. This information can be used to control levels, monitor equipment performance, and ensure that products are stored in the correct conditions. There are many types of sensors available, each with their own unique features and applications. Regardless of the type of sensor used, they play a critical role in ensuring the safety and efficiency of various processes and systems.'),
(2, 'Thermowells, Fittings and Transmitters', 'Thermowells, fittings, and transmitters are important components of temperature measurement systems used in various industries such as oil and gas, chemical, and pharmaceutical. Thermowells are protective sleeves that are used to encase temperature sensors, allowing them to be inserted into process piping or vessels without being directly exposed to the process media. This protects the sensor from damage and allows for easy replacement without disrupting the process. Fittings are used to attach the thermowell to the process piping or vessel. Transmitters, on the other hand, are electronic devices that convert the temperature signal from the sensor into a standardized output signal that can be read by a control system or other device. These components work together to provide accurate and reliable temperature measurements in a wide range of process applications. It is important to choose the right type of thermowell, fitting, and transmitter for the specific process and application to ensure optimal performance and safety.'),
(3, 'Cables', 'Cables are an essential component in many industries, including manufacturing, telecommunications, and construction. They are used to transmit power, data, and signals from one point to another. Cables can be made from a variety of materials, including copper, aluminium, and fibre optics. The type of cable chosen depends on the specific application and the requirements for the transmission of power, data, or signals. There are different types of cables available, including power cables, communication cables, and control cables. Power cables are used to transmit electricity from a power source to a device or machine. Communication cables are used to transmit data and signals between devices, while control cables are used to control the movement and operation of machines and equipment. It is important to choose the right type of cable for the specific application to ensure optimal performance and safety.'),
(4, 'Instrumentation', 'Instrumentation refers to the process of measuring, controlling, and monitoring various parameters such as temperature, pressure, flow, and level in industrial and scientific applications. It involves the use of various instruments and devices, such as sensors, transmitters, controllers, and recorders, to ensure optimal performance and safety in a wide range of processes and systems. Instrumentation is essential in industries such as oil and gas, chemical, and pharmaceutical, where accuracy, reliability, and safety are critical. It enables operators to monitor and control the process parameters in real-time, detect potential issues, and take corrective actions to prevent accidents and ensure efficient operation. There are different types of instrumentation systems available, ranging from simple to complex, depending on the specific application and requirements. It is essential to choose the right instrumentation system and components for the specific application to ensure optimal performance and safety.'),
(5, 'Connectors', 'Connectors are devices used to join or connect electrical or mechanical components, devices, and systems. They are essential in many industries, including automotive, aerospace, and telecommunications, where secure and reliable connections are critical. Connectors come in different shapes, sizes, and configurations, and are designed to meet different requirements for power, signal, and data transmission. Some of the most common types of connectors include circular connectors, rectangular connectors, and coaxial connectors. Circular connectors are used in harsh environments and can provide multiple contacts for power and signal transmission. Rectangular connectors are designed for high-density applications and can provide a large number of contacts in a small space. Coaxial connectors are used for high-frequency applications, such as in telecommunications and radio frequency systems.');

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `card_text`, `category_id`) VALUES
(1, 'Bakelite Insulated Cables', 'idcCableCard.jpg', 'Our Bakelite insulated cables are made specifically to add to and replace existing Bakelite insulated cabling for maximum legacy support.', 3),
(2, 'Ribbon Electric Cables', 'idcCableCard.jpg', 'Ribbon Electric Cables offers a wide range of high-quality electrical cables that are designed for maximum performance and durability. Our cables are manufactured using the latest technology and are made from premium materials to ensure reliability and safety. We have a solution for you.', 3);

--
-- Dumping data for table `product_section`
--

INSERT INTO `product_section` (`product_id`, `section_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `body`) VALUES
(1, 'Benefits of Bakelite', 'Bakelite is a thermosetting plastic that has been used for decades as an excellent insulator for cables. This material is ideal for cable insulation because it is highly resistant to heat and electricity, which are two of the main factors that can cause cables to fail.\r\n\r\nBakelite is a non-conductive material, meaning that it does not conduct electricity. This property makes it ideal for insulating cables, as it prevents any unwanted electricity from escaping and causing damage or injury. Additionally, Bakelite has a high dielectric strength, which means that it can withstand high voltage levels without breaking down or becoming damaged.'),
(2, 'Thermal Properties', 'Thermal Conductivity: 0.043 W/mK\r\nHeat Capacity: 2.5 J/gK\r\nThermal Resistance: 0.23 K/W\r\nMaximum Operating Temperature: 90°C\r\nMinimum Installation Temperature: -10°C\r\nThermal Expansion Coefficient: 18.5 x 10^-6/K');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
