-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-12-2016 a las 18:07:19
-- Versión del servidor: 5.7.16-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BDElena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pokemon`
--

CREATE TABLE `Pokemon` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `UrlImagen` varchar(300) NOT NULL,
  `Descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Pokemon`
--

INSERT INTO `Pokemon` (`Id`, `Nombre`, `UrlImagen`, `Descripcion`) VALUES
(1, 'Cyndaquil', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/155.png', 'Cyndaquil protects itself by flaring up the flames on its back.'),
(2, 'Feraligatr', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/160.png', 'Feraligatr intimidates its foes by opening its huge mouth.'),
(3, 'Ariados', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/168.png', 'The feet of Ariados are tipped with tiny hooked claws that enable it to scuttle on ceilings and vertical walls.'),
(4, 'Ampharos', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/181.png', 'Ampharos gives off so much light that it can be seen even from space.'),
(5, 'Sunflora', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/192.png', 'Sunflora converts solar energy into nutrition. It moves around actively in the daytime when it is warm.'),
(6, 'Umbreon', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/197.png', 'It hides silently in darkness and waits for its foes to make a move.'),
(7, 'Gligar', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/207.png', 'Gligar glides through the air without a sound as if it were sliding.'),
(8, 'Scizor', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/212.png', 'Scizor has a body with the hardness of steel. It is not easily fazed by ordinary sorts of attacks.'),
(9, 'Magcargo', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/219.png', 'Its shell is very brittle and fragile—just touching it causes it to crumble apart.'),
(10, 'Skarmory', 'http://assets.pokemon.com/assets/cms2/img/pokedex/full/227.png', 'Skarmory is entirely encased in hard, protective armor. This Pokémon flies at close to 190 mph.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Pokemon`
--
ALTER TABLE `Pokemon`
  ADD PRIMARY KEY (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
