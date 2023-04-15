-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 10:40 AM
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
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin1', '$2y$10$iDhZY5tAxqHUe16nfQIgmu0o1o8R9oAhv49aAQhkQcB0YhN/GPuNq');

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
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `address`) VALUES
(1, 'BTools@Letters.org'),
(2, 'JTools@Letters.org'),
(12, 'SmithO@WebMail.com');

--
-- Dumping data for table `email_organisation`
--

INSERT INTO `email_organisation` (`email_id`, `organisation_id`) VALUES
(1, 1),
(2, 1),
(12, 11);

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `first_name`, `last_name`, `organisation_id`, `email_id`, `body`, `timecreated`) VALUES
(1, 'Bob', 'Smith', 1, 1, 'Can you send me more info about the thermal resistance of your cables?', '2023-03-28 07:50:09'),
(14, 'John', 'Smith', 11, 12, 'Hello, could you email me about your upcoming stock?', '2023-04-13 12:00:35');

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `body`, `product_id`) VALUES
(1, 'New Bakelite Standard Released', 'A new standard for Bakelite, the first synthetic plastic material, has been released by the International Organization for Standardization (ISO). The ISO 431 standard outlines the requirements for the composition, physical properties, and performance of Bakelite, ensuring its quality and consistency across industries.\r\n\r\nAccording to the ISO, the standard was developed by a team of experts from industry, academia, and government, and is based on extensive research and testing.\r\n\r\n', 1),
(2, 'Breakthrough in Ribbon Electric Cable Technology', 'A team of researchers has announced a breakthrough in ribbon electric cable technology that could revolutionize the way we transmit electricity. The new technology, developed by a team of scientists from the University of California, Berkeley, and Lawrence Berkeley National Laboratory, utilizes a unique ribbon-shaped cable design that improves power transmission efficiency and reduces energy loss.\r\n\r\nThe technology works by arranging the conductive elements in a ribbon shape, allowing for a more compact and efficient design.', 2),
(3, 'Bolted Thermal Sensors Improve Safety', 'A new type of bolted thermal sensor has been developed that promises to improve safety in a range of industries. The sensors, developed by a team of researchers from the University of Cambridge, are designed to detect and monitor temperature changes in industrial settings, helping to prevent accidents and equipment failures.\r\n\r\nThe sensors are made up of two metal plates, which are bolted together with a small gap in between. As the temperature changes, the plates expand or contract, changing the size of the gap and creating an electrical signal that can be monitored and analysed.', 3);

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`id`, `name`) VALUES
(1, 'Bob\'s Tools'),
(11, 'Smith\'s Own Tools');

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `card_text`, `category_id`, `active`) VALUES
(1, 'Bakelite Insulated Cables', 'idcCableCard.jpg', 'Our Bakelite insulated cables are made specifically to add to and replace existing Bakelite insulated cabling for maximum legacy support.', 3, 1),
(2, 'Ribbon Electric Cables', 'idcCableCard.jpg', 'Ribbon Electric Cables offers a wide range of high-quality electrical cables that are designed for maximum performance and durability. Our cables are manufactured using the latest technology and are made from premium materials to ensure reliability and safety. We have a solution for you.', 3, 1),
(3, 'Bolted Thermal Sensors', 'boltedTS.jpg', 'Introducing Bolted Thermal Sensors, the innovative solution for accurately measuring temperature in a variety of industrial applications. These sensors are designed with precision in mind, featuring a bolted design that ensures a secure and stable installation.', 1, 1),
(4, 'ChromeSense', 'boltedTS.jpg', 'The ChromeSense is a cutting-edge sensor that is designed to revolutionize the way you interact with your environment. This advanced sensor is engineered with the latest technology to provide accurate and reliable detection of various elements in the surrounding environment.', 1, 1),
(5, ' FlexiWire', 'idcCableCard.jpg', 'FlexiWire is a state-of-the-art electric cable designed to provide superior performance in tight spaces. Engineered with cutting-edge technology and premium materials, FlexiWire is highly flexible and durable, making it ideal for installations where space is limited.', 3, 1),
(6, 'NanoWave Transmitter', 'transmitter.jpg', 'The NanoWave Transmitter is an advanced wireless device that allows for seamless transmission of audio or video signals over long distances in a compact and lightweight form factor. Designed with professional users in mind.', 2, 1),
(7, ' NanoWave Transmitter Pro', 'transmitter.jpg', 'The NanoWave Transmitter Pro is the premium variant of the NanoWave Transmitter, designed for professional users who require even higher performance and advanced features in their wireless signal transmission setup. Built with top-of-the-line components and advanced technologies.', 2, 1),
(8, 'MicroLink Mini', 'transmitter.jpg', 'The MicroLink Transmitter Mini is compact and lightweight, designed for users who require a portable and easy-to-use wireless signal transmission solution. With its small form factor and simplicity of use, the MicroLink Transmitter Mini offers convenience. ', 2, 1),
(9, 'PrecisionTemp DialPro', 'dial.jpg', 'The PrecisionTemp DialPro is a sleek and versatile temperature dial that provides precise control over temperature settings for a wide range of applications. Whether you\'re adjusting the temperature on a heater, an oven, or a water heater, this is a good pick.', 4, 1),
(10, 'TempPro Control Dial', 'dial.jpg', 'The TempPro Control Dial is a cutting-edge temperature control solution that provides precise adjustments for temperature-sensitive devices. Whether you need to set the temperature on a heater, oven, water heater, or other appliances, the TempPro Control Dial offers unmatched accuracy.', 4, 1),
(11, 'TempMaster Thermostat', 'dial.jpg', 'The TempMaster Thermostat is a classic temperature control dial that was once a popular choice for adjusting temperatures in various appliances. With its simple and straightforward design, the TempMaster Thermostat was known for its ease of use and reliability.', 4, 0),
(12, 'ConnectMax 60', 'connect.jpg', 'The ConnectMax 60 is a cutting-edge 60-pin connector designed for seamless connectivity in various electronic systems. With its advanced features and robust design, the ConnectMax 60 offers reliable performance and versatile connectivity options for a wide range of applications.', 5, 1),
(13, 'RetroConnect 60', 'connect.jpg', 'The RetroConnect 60 is a classic 60-pin connector that pays homage to the golden era of electronics. With its vintage design and nostalgic appeal, the RetroConnect 60 brings a touch of old-world charm to modern electronic systems.', 5, 0),
(14, 'SpeedConnect 60X', 'connect.jpg', 'The SpeedConnect 60X is a high-performance 60-pin connector that promises lightning-fast data transfer speeds and enhanced performance. Designed for demanding applications that require rapid data transmission, the SpeedConnect 60X offers unmatched speed and efficiency. However, it\'s not safe.', 5, 0),
(15, 'VanaSense', 'boltedTS.jpg', 'VanaSense is an advanced sensor that leverages the exceptional properties of vanadium to provide unparalleled accuracy and reliability in measuring and monitoring specific parameters. This state-of-the-art sensor is designed to excel in a wide range of applications, offering enhanced sensitivity.', 1, 1),
(16, 'MolySense', 'boltedTS.jpg', 'MolySense is an innovative sensor that utilizes the exceptional properties of molybdenum to provide superior performance in measuring and monitoring specific parameters. This advanced sensor is engineered to offer unparalleled accuracy, durability, and versatility in a wide range of applications.', 1, 1),
(17, 'TechSense', 'boltedTS.jpg', 'TechSense is a cutting-edge sensor that utilizes the unique properties of technetium to provide unparalleled performance in measuring and monitoring specific parameters. This advanced sensor is engineered to offer exceptional sensitivity, stability, and reliability in a wide range of applications.', 1, 1),
(18, 'BohriSense', 'boltedTS.jpg', 'BohriSense is a revolutionary sensor that utilizes the unique properties of bohrium, a synthetic element, to provide unparalleled performance in measuring and monitoring specific parameters. This advanced sensor is engineered to offer exceptional sensitivity, accuracy, and reliability.', 1, 1);

--
-- Dumping data for table `product_section`
--

INSERT INTO `product_section` (`product_id`, `section_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 8),
(7, 9),
(7, 10),
(8, 6),
(8, 7),
(10, 9),
(10, 11),
(10, 12),
(11, 9),
(11, 13),
(9, 9),
(9, 11),
(9, 12),
(12, 14),
(12, 15),
(13, 13),
(13, 15),
(14, 11),
(14, 14),
(14, 15),
(14, 16),
(15, 17),
(15, 18),
(17, 9),
(17, 17),
(17, 18),
(16, 11),
(16, 18),
(18, 9),
(18, 12),
(18, 19);

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `name`, `body`) VALUES
(1, 'Benefits of Bakelite', 'Bakelite is a thermosetting plastic that has been used for decades as an excellent insulator for cables. This material is ideal for cable insulation because it is highly resistant to heat and electricity, which are two of the main factors that can cause cables to fail.\r\n\r\nBakelite is a non-conductive material, meaning that it does not conduct electricity. This property makes it ideal for insulating cables, as it prevents any unwanted electricity from escaping and causing damage or injury. Additionally, Bakelite has a high dielectric strength, which means that it can withstand high voltage levels without breaking down or becoming damaged.'),
(2, 'Thermal Properties', 'Thermal Conductivity: 0.043 W/mK\r\nHeat Capacity: 2.5 J/gK\r\nThermal Resistance: 0.23 K/W\r\nMaximum Operating Temperature: 90°C\r\nMinimum Installation Temperature: -10°C\r\nThermal Expansion Coefficient: 18.5 x 10^-6/K'),
(3, 'Bolt Strength ', 'Bolt strength is crucial for ensuring a secure and stable installation. That\'s why our sensors are designed with high-strength bolts that can withstand heavy loads and extreme temperatures. Our bolts are carefully selected to match the material and application requirements, ensuring a perfect fit and maximum durability. This ensures that our sensors are securely installed and can withstand the demands of even the toughest industrial environments.'),
(4, 'Precision Detection', 'Equipped with highly sensitive sensors that are capable of detecting a wide range of elements, including temperature, humidity, air quality, light intensity, and motion. Its advanced detection capabilities allow for real-time monitoring and analysis of environmental conditions, providing valuable insights for optimal comfort, safety, and energy efficiency.'),
(5, 'Versatile Applications', 'This is versatile and can be used in a wide range of applications, including residential, commercial, and industrial settings. It can be used in smart homes, offices, hotels, restaurants, retail stores, warehouses, and more. Its ability to monitor multiple environmental factors simultaneously makes it a valuable tool for a variety of industries, from HVAC management to facility management and beyond.'),
(6, 'Ultra-Flexible Design', 'This product features an ultra-flexible design that allows it to bend and maneuver with ease, making it perfect for tight spaces where traditional cables may struggle to fit. Its high-quality materials and construction ensure that it maintains its flexibility even in extreme conditions, making it reliable and durable for long-term use.'),
(7, 'Compact and Lightweight', 'This transmitter is incredibly small and lightweight, making it easy to carry and install in tight spaces. Its sleek and minimalist design ensures minimal footprint and maximum portability, making it ideal for on-the-go applications. It is designed to operate in challenging environments, including extreme temperatures and harsh weather conditions, making it ideal for outdoor applications.'),
(8, 'Long Battery Life', 'This product is powered by a high-capacity rechargeable battery that provides long hours of continuous operation. It also features a low-battery indicator and a quick-charging feature, ensuring uninterrupted performance in critical situations.'),
(9, 'Durable and Reliable', 'This product is built to withstand the rigors of professional use, the NanoWave Transmitter is constructed with high-quality materials that ensure durability and reliability. It is designed to operate in challenging environments, including extreme temperatures and harsh weather conditions, making it ideal for outdoor applications.'),
(10, 'Surveillance and Security', ' Suitable for remote monitoring and surveillance in demanding environments, such as construction sites, industrial settings, and critical infrastructure, where robust and secure wireless transmission is required.'),
(11, 'Sleek and Stylish', 'This product features a modern and sleek design that will complement the aesthetics of any device or environment. Its clean and minimalist look adds a touch of sophistication to your appliances, making it a functional and stylish addition to your home or workplace.'),
(12, 'User-Friendly Design', 'This product, is designed with the end user in mind, with an ergonomic design that makes it easy to grip and turn. Its intuitive design allows for simple temperature adjustments, making it suitable for users of all ages and abilities.'),
(13, 'Vintage Aesthetics', 'This product featured a classic and retro design that adds a nostalgic touch to appliances. Its vintage aesthetics were a popular choice in older appliances, adding a touch of charm and nostalgia to the overall appearance.'),
(14, 'Superior Performance', 'This product is engineered to deliver superior performance even in demanding environments. It features high-quality materials, including rugged plastics, precision metal alloys, and gold-plated contacts, ensuring excellent electrical conductivity, corrosion resistance, and mechanical stability. This makes the connector ideal for use in harsh conditions, such as extreme temperatures, vibrations, and moisture.'),
(15, 'High Pin Count', 'This product provides a generous number of pins, allowing for extensive connectivity options in electronic circuits. It offers various pin configurations, including male and female connectors, straight and right-angle pins, and surface-mount and through-hole options, enabling diverse design possibilities.'),
(16, 'High-Bandwidth Capability', 'This product has a high-bandwidth capability, enabling it to handle large amounts of data without loss of signal quality. It is suitable for applications that require high-bandwidth data transmission, such as high-resolution video streaming, high-performance computing, and data-intensive industrial processes.'),
(17, 'Ultra-Sensitive Detection', 'This product boasts exceptional sensitivity, allowing for precise and accurate detection of target parameters. Its high sensitivity enables it to detect even the smallest changes in the environment or substances being measured, making it ideal for applications where precision is crucial.'),
(18, 'Cutting-Edge Technology', 'This product incorporates advanced electronics and data processing capabilities, making it a state-of-the-art sensor. It can seamlessly integrate with other systems or devices for data logging, analysis, and control, enabling seamless integration into existing processes or equipment.'),
(19, 'Unprecedented Sensitivity', 'This product is designed to offer unmatched sensitivity, allowing for precise and accurate measurement of even the smallest changes in the environment or substances being measured. Its ultra-sensitive capabilities make it ideal for applications where detecting minute changes is critical, such as in scientific research, advanced manufacturing, and aerospace.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
