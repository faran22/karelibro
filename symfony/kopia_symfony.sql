-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 22 Sty 2023, 21:58
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `symfony`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `allegro1`
--

CREATE TABLE `allegro1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `access_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreation` datetime DEFAULT NULL,
  `clientid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientsecret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirecturi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `allegro1`
--

INSERT INTO `allegro1` (`id`, `user_id`, `access_token`, `refresh_token`, `access_token_expires`, `scope`, `timecreation`, `clientid`, `clientsecret`, `redirecturi`) VALUES
(1, 2, NULL, 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiI0NDI5MjE5NCIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpiaWRzIiwiYWxsZWdybzphcGk6c2FsZTpvZmZlcnM6cmVhZCIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOmFkcyIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sImFsbGVncm9fYXBpIjp0cnVlLCJhdGkiOiJmZmU5NTI2My0xNWY0LTRjYWQtYTRlNS1iODJiM2I0ZDQ5OWYiLCJleHAiOjE2NzU5NDU5MjEsImp0aSI6ImUwNGUyZGI3LWNjNGYtNGY3Mi1hYjRkLThhMGU4OGRmMTMwNyIsImNsaWVudF9pZCI6ImYxOTE4YzhjZTU3YjQ2ZDU5ZTVlOGQ0MjgwY2E0ZjM5In0.XhYycfjh-X6r7mxro85MKxa1Vd6etJ7EQog-9202QTOC3jizkVc8HOGoNlDizMNpBEGMZ2pAwITTXD96do3DiLixDzhQTqUO1y49R_15PWZk9tKb58uJLc6h-77_CYV-W_8HBzKC1wsSHl1oxMTBVdgAZEyCPJNMDdmNQhdE8ebDMoqhRiAjzoGQTRv30mvCZVoMe1RyKCIAIMqesHS40QAqzXRWaMnhwXUqhx7rL-tgYJhCkwpJhHD4YYP_5G405TZWLLkDN3ydHjJv3MkUc1JHtyIWgQrqbPk9CcRTkHJxxM7HFAphraSXqyz6_d6yMC8xNJrudW6-i9SZK4K4YYdBrq3OSLl-MqECSjdmjZ0nZSJTNYnW2VqqsngJEPrCJpgPGIDWzWBM-ddu1HAx-U9nyGI-s-coTPSmMYIOX4LTg-wb141Hhtp1sSmnrmD8asriTTpBfkcE0qgTUOc7W5tI1R1XtNcscbc4taaemegi1ykCQoFnlcDoYIBDA-qvG1m3XvJKMeGrA4Dy7T_XqXhwRMlbpiNHlXoEfKSQVo9bIYseljdVzOJ80q83YaTPKfNjYZ8dHcLNaFMp8hH5KxZjbNrWy8yQNPaTwPG-QwTYSS-rit8xXyK2LfQNBGWb-WFhlITMrOy9Rw7f0DMdPL6-ITlXW5Q2txXlDaSJ5DI', NULL, 'allegro:api:orders:read allegro:api:profile:write allegro:api:sale:offers:write allegro:api:billing:read allegro:api:campaigns allegro:api:disputes allegro:api:bids allegro:api:sale:offers:read allegro:api:orders:write allegro:api:ads allegro:api:payments:write allegro:api:sale:settings:write allegro:api:profile:read allegro:api:ratings allegro:api:sale:settings:read allegro:api:payments:read allegro:api:messaging', '2022-11-11 22:32:00', 'f1918c8ce57b46d59e5e8d4280ca4f39', 'Oe77QwNCTgerKIUNkgS3LwlFvfjjMngUbqPokYthRBCfFtPcyG52vWVtnqtzXXnm', 'https://testowadomena1.site/allegro/admin.php'),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 47, NULL, 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiI0NDI5MjE5NCIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpiaWRzIiwiYWxsZWdybzphcGk6c2FsZTpvZmZlcnM6cmVhZCIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOmFkcyIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sImFsbGVncm9fYXBpIjp0cnVlLCJhdGkiOiI5MTMyYWQ1MC05MGQzLTRmMzItYmYyOS0zOGY5M2QwNjljYjciLCJleHAiOjE2NzU5MjQ5MjEsImp0aSI6ImFjNWVkMmEyLTFlYmYtNDFiMC1hOTNiLTE5YWQ0MTRhOGVkOCIsImNsaWVudF9pZCI6ImYxOTE4YzhjZTU3YjQ2ZDU5ZTVlOGQ0MjgwY2E0ZjM5In0.fIf2w69kZHRdKhcEAY_xMjNFBtLbuTtuhnWta__GapPmcurwoGRA1JQKceBlnNfwfn9zg_AOyA7fBDiEjC1aOFk-C_1ZDC9PgdQWdKuD4xKemow5vYCmwsrGs1cmg0YMawOhPqtplRIJOrFGXird-6QULO8iXelpz5ws4Pmi-Dy0V5ejz67EyKFgV-1NasZTosCmlAF3mkXOZoilb2GVOCCRcx2BMAjamAbab_aNvqBU9akwIoYM9eBHh0KcL93aCN1B2PKJnmaVrR_pGcflF_piSzj1c4uoQQB0p4ItEnWDvCUAB_e9U-y2qKVsDMvYhk7MUBKfgPMPG46rBpML2PuBSKqFm4pGpN3PcOwqekQj7kpAVDjxC_2h6hbwWN9OEBatqB0ismgJr0h3qApq8b4GIEHPAIYweFANdBljPDVTnxI9w2EpdVsYcn6iRaQG4LDB-RQs6TU6Di-9wRABkgjbM4xILdTLOuJmnO4bpsGpvTSY9wjXiIuQ0d1gOzYIxEWKIS6zyNKfd13LMKOXEaj5O9NRqHm40PdEKerGc_TC2uJMGFX9pDsKUcsQJjDgh8q3US-sj4z4yfhE6jECGV8KrzFumJztZrBbrP0bV1_CYohXQUk1paT_VgIKNkIgKRPWMtzXrSNwx9QyxFK0jDcX7SJfD2ydi8HvIFb56EE', NULL, 'allegro:api:orders:read allegro:api:profile:write allegro:api:sale:offers:write allegro:api:billing:read allegro:api:campaigns allegro:api:disputes allegro:api:bids allegro:api:sale:offers:read allegro:api:orders:write allegro:api:ads allegro:api:payments:write allegro:api:sale:settings:write allegro:api:profile:read allegro:api:ratings allegro:api:sale:settings:read allegro:api:payments:read allegro:api:messaging', '2022-11-11 16:42:00', 'f1918c8ce57b46d59e5e8d4280ca4f39', 'Oe77QwNCTgerKIUNkgS3LwlFvfjjMngUbqPokYthRBCfFtPcyG52vWVtnqtzXXnm', 'https://witryna.fun/allegro/test36.php'),
(47, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 67, NULL, 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiIxMTI4NzIxIiwic2NvcGUiOlsiYWxsZWdybzphcGk6b3JkZXJzOnJlYWQiLCJhbGxlZ3JvOmFwaTpmdWxmaWxsbWVudDpyZWFkIiwiYWxsZWdybzphcGk6cHJvZmlsZTp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6ZnVsZmlsbG1lbnQ6d3JpdGUiLCJhbGxlZ3JvOmFwaTpiaWxsaW5nOnJlYWQiLCJhbGxlZ3JvOmFwaTpjYW1wYWlnbnMiLCJhbGxlZ3JvOmFwaTpkaXNwdXRlcyIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOnJlYWQiLCJhbGxlZ3JvOmFwaTpiaWRzIiwiYWxsZWdybzphcGk6b3JkZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YWRzIiwiYWxsZWdybzphcGk6cGF5bWVudHM6d3JpdGUiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOndyaXRlIiwiYWxsZWdybzphcGk6cHJvZmlsZTpyZWFkIiwiYWxsZWdybzphcGk6cmF0aW5ncyIsImFsbGVncm86YXBpOnNhbGU6c2V0dGluZ3M6cmVhZCIsImFsbGVncm86YXBpOnBheW1lbnRzOnJlYWQiLCJhbGxlZ3JvOmFwaTptZXNzYWdpbmciXSwiYWxsZWdyb19hcGkiOnRydWUsImF0aSI6IjM4ODE3MDJlLWZhN2UtNDM2MS04YjZiLWJiYTYyNDA1YmI5NiIsImV4cCI6MTY3NzAwOTg5NSwianRpIjoiZTM2MzQ2MTktNGM0My00ZDI0LTkzNjktZTZlY2U3YWVkYWM2IiwiY2xpZW50X2lkIjoiZDdlMjZiNmY2Njc3NDEzMWFiMDcwMmJlNjU4YzBhNTgifQ.KBu-ou1Cp50-nhEGaITsxsWCnYBTTKTZtNmpJVuebEAk-3Sn5g-P8lJSFpBfC7T5WuiRvPT5RiP02gxi_YEhUWKtD_WzHsSHj4ULxjIyvd8-nGERHMb8WHyl60lLeTM_nQljACOlBCVTXYFws30LqFYM5QXk6DXTylAVSpThg-LYnqknVA_9FdE3vxVDi1RF9R_DUeFpkxBHXvfSr-uVcLUtvPLL_nuH5lrxKKHPm0GrRdRJqMEPDEHNR1H4SI_rP_uNw0OKKL7g4iDUkh1Wwayenr3cTgq9JoqxIx47NqPqedt0tsTHDh3ep7OocTgCVvtkbIHPkafvdNhfVbJn4g', NULL, 'allegro:api:orders:read allegro:api:fulfillment:read allegro:api:profile:write allegro:api:sale:offers:write allegro:api:fulfillment:write allegro:api:billing:read allegro:api:campaigns allegro:api:disputes allegro:api:sale:offers:read allegro:api:bids allegro:api:orders:write allegro:api:ads allegro:api:payments:write allegro:api:sale:settings:write allegro:api:profile:read allegro:api:ratings allegro:api:sale:settings:read allegro:api:payments:read allegro:api:messaging', '2022-11-24 06:04:52', 'gfdfghdfg', 'gfdg', 'https://template2.symetryczny.pl/allegro/template2.php'),
(61, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 103, '', NULL, NULL, NULL, NULL, '4545', '64646', NULL),
(97, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 105, '', NULL, NULL, NULL, NULL, 'kljl', 'jkhk', NULL),
(99, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 111, '', NULL, NULL, NULL, NULL, 'bgfh', 'fghgfh', NULL),
(105, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 113, 'Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE2NzQ0NDQyNDIsInVzZXJfbmFtZSI6IjQ0MjkyMTk0IiwianRpIjoiM2Q1M2U5ZTMtMjg2YS00MTY2LThhMjQtZTRhNzZlYzlmOWI2IiwiY2xpZW50X2lkIjoiN2ZmMDg5MWU3ZDA5NDMyN2EwMmFiMTNlOGIzY2ZjN2MiLCJzY29wZSI6WyJhbGxlZ3JvOmFwaTpvcmRlcnM6cmVhZCIsImFsbGVncm86YXBpOmZ1bGZpbGxtZW50OnJlYWQiLCJhbGxlZ3JvOmFwaTpwcm9maWxlOndyaXRlIiwiYWxsZWdybzphcGk6ZnVsZmlsbG1lbnQ6d3JpdGUiLCJhbGxlZ3JvOmFwaTpzYWxlOm9mZmVyczp3cml0ZSIsImFsbGVncm86YXBpOmJpbGxpbmc6cmVhZCIsImFsbGVncm86YXBpOmNhbXBhaWducyIsImFsbGVncm86YXBpOmRpc3B1dGVzIiwiYWxsZWdybzphcGk6YmlkcyIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOnJlYWQiLCJhbGxlZ3JvOmFwaTpvcmRlcnM6d3JpdGUiLCJhbGxlZ3JvOmFwaTphZHMiLCJhbGxlZ3JvOmFwaTpwYXltZW50czp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6c2V0dGluZ3M6d3JpdGUiLCJhbGxlZ3JvOmFwaTpwcm9maWxlOnJlYWQiLCJhbGxlZ3JvOmFwaTpyYXRpbmdzIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczpyZWFkIiwiYWxsZWdybzphcGk6cGF5bWVudHM6cmVhZCIsImFsbGVncm86YXBpOm1lc3NhZ2luZyJdLCJhbGxlZ3JvX2FwaSI6dHJ1ZX0.FHLBSxLMHsJFGh_Qp5kg_D4JkBzimqPDMuoVjU0e8s8Yu_cQUAvQ8F23BJBnevWgASS0iIucf9iRVlqZdiEmADKygaYoEtr6XvuJWsrcgksCwfq1hdknKyHSnL3mxAyT6doN-Y8S1_k5O8EWXQKe85hwXkAgi_0JMW9FEjfEhG-oVgeDERq2UDGJZMPOI3hn0sEJ4zWwJhE3rtRqpRQ-vVc2eD8p18RFXwxUKsqnwr2C_lWSMIqK6nVPO9lnX6WBLPrJgOSXrHdtwM_gxyVjPxsuw7xSSEeU7jgYUTsFwb8F1ynq-xWBjbV3Qrnv4-05ZK2O67JKIfPHUv06-mjwBU99sfUvTIngJE1kCgwuM50gaDvpWmrfgkzcCrkorg6eUCCeQwjI78FAPRs_AZga9TOzx_vNHc2lcteXoI1m5JD1u4vI_p1hTxa8-7MFBCvkLi3kvOIXA9XmJwcN5_BN22Ggw-u8atF468g0sECKrM13FnGoat_MoUFAj-jJclEZZL3TonQmNIsM9ArPlSqOBHMoGhChA2OoRGCjtA0FxTUqBV2nbCrknq-enVRIxywqT71vexoSCreUGXU0YQRywFelG-Ju96gQ6c6AIygqU3ogSneR5pb0QEVb8TrLyRxbFSjGzmyZpprZECRSDKT8qm-y4HiR-9JWYHV2rqRlCLQ', 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiI0NDI5MjE5NCIsInNjb3BlIjpbImFsbGVncm86YXBpOm9yZGVyczpyZWFkIiwiYWxsZWdybzphcGk6ZnVsZmlsbG1lbnQ6cmVhZCIsImFsbGVncm86YXBpOnByb2ZpbGU6d3JpdGUiLCJhbGxlZ3JvOmFwaTpmdWxmaWxsbWVudDp3cml0ZSIsImFsbGVncm86YXBpOnNhbGU6b2ZmZXJzOndyaXRlIiwiYWxsZWdybzphcGk6YmlsbGluZzpyZWFkIiwiYWxsZWdybzphcGk6Y2FtcGFpZ25zIiwiYWxsZWdybzphcGk6ZGlzcHV0ZXMiLCJhbGxlZ3JvOmFwaTpiaWRzIiwiYWxsZWdybzphcGk6c2FsZTpvZmZlcnM6cmVhZCIsImFsbGVncm86YXBpOm9yZGVyczp3cml0ZSIsImFsbGVncm86YXBpOmFkcyIsImFsbGVncm86YXBpOnBheW1lbnRzOndyaXRlIiwiYWxsZWdybzphcGk6c2FsZTpzZXR0aW5nczp3cml0ZSIsImFsbGVncm86YXBpOnByb2ZpbGU6cmVhZCIsImFsbGVncm86YXBpOnJhdGluZ3MiLCJhbGxlZ3JvOmFwaTpzYWxlOnNldHRpbmdzOnJlYWQiLCJhbGxlZ3JvOmFwaTpwYXltZW50czpyZWFkIiwiYWxsZWdybzphcGk6bWVzc2FnaW5nIl0sImFsbGVncm9fYXBpIjp0cnVlLCJhdGkiOiIzZDUzZTllMy0yODZhLTQxNjYtOGEyNC1lNGE3NmVjOWY5YjYiLCJleHAiOjE2ODIxNzcwNDIsImp0aSI6IjA5NmIyMWI5LWNmOTUtNDg3ZS05MzI1LWQxYzViZDczOGJjNSIsImNsaWVudF9pZCI6IjdmZjA4OTFlN2QwOTQzMjdhMDJhYjEzZThiM2NmYzdjIn0.RsLvN5CBENf0nDz-sMKfPd6jcVGQZRAhhp7X9UvjBoHZ9qYgwgan_sxEFETvYGI7u5We0Ti-jp5tBRcyRYhkAUIf6_fglULkBeRFT9SA7-qODbHPO0pP3dv-gZOl1i5E0rU1wJRd6cJSAhjIH5Z0G7b8MhYwE8pApTx8XbPV9XuB6Hs4DHf4G4QG_p6VzECEca2exroJVTH0WnRLPk6thro22Aa5PZbZKO9C_0ZM6Hv3hMpbYpsduOea4mUEJjU5kY7I148hZ2xcruTZ1CV9l5m77dEagQ5WDqZn-iPiOYelsVkraP3zvhjeFkuiREVIjTUB7mI9MKWzJmjJ-NOAbu9VhJqDZbM013PTWBFolfSfNRuQN7dToD60mBI7mctK-57x5xw1gkj4zmxtQx4Yr2mAP4wy9_ql39Z5m2DL0Awl-MV3ei2fB_ZNbCXE63l62Y4g60IWBrRXLXgL7ipdv55V1YzSnWAtruEM0b_ZlloA3UX4iclY481ENIQ0kGjPnbtz-RRLfNP71cCzg6dnAMKs_hrgGKn1jLDH7nfuxbvvq_t7X_KMuJg7ZM3A46Kdf-nBqnuh2aZexasoB4aNaDNK-t-IIrRsHNO_2P6IgOgQUhnaP1Iqdeq3CKVYcYi3pmWKP-mAbumk7vVoa1qK_fk6ecrPNcrrXt9h3tTCSZk', '2023-01-23 01:24:01', 'allegro:api:orders:read allegro:api:fulfillment:read allegro:api:profile:write allegro:api:fulfillment:write allegro:api:sale:offers:write allegro:api:billing:read allegro:api:campaigns allegro:api:disputes allegro:api:bids allegro:api:sale:offers:read allegro:api:orders:write allegro:api:ads allegro:api:payments:write allegro:api:sale:settings:write allegro:api:profile:read allegro:api:ratings allegro:api:sale:settings:read allegro:api:payments:read allegro:api:messaging', '2023-01-23 01:24:01', '7ff0891e7d094327a02ab13e8b3cfc7c', 'kPj8AhnFfoOVk2lBw7Cq1au5MOqkxh2OduvaqZyhNETmDh2L3A4qBeoOpK0OcHCt', 'https://witryna.fun/allegro/test95.php'),
(107, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cashbill`
--

CREATE TABLE `cashbill` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `identyfikator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klucz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `cashbill`
--

INSERT INTO `cashbill` (`id`, `user_id`, `identyfikator`, `klucz`) VALUES
(1, 2, '', ''),
(2, 3, '', ''),
(14, 15, '', ''),
(15, 16, '', ''),
(16, 17, '', ''),
(17, 18, '', ''),
(18, 19, '', ''),
(19, 20, '', ''),
(20, 21, '', ''),
(21, 22, '', ''),
(22, 23, '', ''),
(23, 24, '', ''),
(24, 25, '', ''),
(25, 26, '', ''),
(26, 27, '', ''),
(27, 28, '', ''),
(28, 29, '', ''),
(29, 30, '', ''),
(30, 31, '', ''),
(31, 32, '', ''),
(32, 33, '', ''),
(33, 34, '', ''),
(34, 35, '', ''),
(35, 36, '', ''),
(36, 37, '', ''),
(37, 38, '', ''),
(38, 39, '', ''),
(39, 40, '', ''),
(40, 41, '', ''),
(41, 42, '', ''),
(42, 43, '', ''),
(43, 44, '', ''),
(44, 45, '', ''),
(45, 46, '', ''),
(46, 47, '', ''),
(47, 48, '', ''),
(48, 49, '', ''),
(49, 50, '', ''),
(50, 53, '', ''),
(51, 54, '', ''),
(52, 55, '', ''),
(53, 56, '', ''),
(54, 57, '', ''),
(55, 58, '', ''),
(56, 59, '', ''),
(57, 60, '', ''),
(58, 65, '', ''),
(59, 66, '', ''),
(60, 67, '', ''),
(61, 68, '', ''),
(62, 69, '', ''),
(63, 70, '', ''),
(64, 71, '', ''),
(65, 72, '', ''),
(66, 73, '', ''),
(67, 74, '', ''),
(68, 75, '', ''),
(69, 76, '', ''),
(70, 77, '', ''),
(71, 78, '', ''),
(72, 79, '', ''),
(73, 80, '', ''),
(74, 81, '', ''),
(75, 82, '', ''),
(76, 83, '', ''),
(77, 84, '', ''),
(78, 85, '', ''),
(79, 86, '', ''),
(80, 87, '', ''),
(81, 88, '', ''),
(82, 89, '', ''),
(83, 90, '', ''),
(84, 91, '', ''),
(85, 92, '', ''),
(86, 93, '', ''),
(87, 94, '', ''),
(88, 95, '', ''),
(89, 96, '', ''),
(90, 97, '', ''),
(91, 98, '', ''),
(92, 99, '', ''),
(93, 100, '', ''),
(94, 101, '', ''),
(95, 102, '', ''),
(96, 103, '', ''),
(97, 104, '', ''),
(98, 105, '', ''),
(99, 106, '', ''),
(100, 107, '', ''),
(101, 108, '', ''),
(102, 109, '', ''),
(103, 110, '', ''),
(104, 111, '', ''),
(105, 112, '', ''),
(106, 113, '', ''),
(107, 114, '', ''),
(108, 115, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cat1`
--

CREATE TABLE `cat1` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timecreation` datetime NOT NULL,
  `picture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `video` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `wyswietlanie` tinyint(1) NOT NULL,
  `warianty` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `defaultpicture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldsforbuyers` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `any` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `recenzja` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dowiazanie` int(11) DEFAULT NULL,
  `dowiazania` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `facebookposts` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `cat1`
--

INSERT INTO `cat1` (`id`, `category`, `user_id`, `title`, `description`, `description2`, `timecreation`, `picture`, `video`, `count`, `price`, `wyswietlanie`, `warianty`, `defaultpicture`, `fieldsforbuyers`, `any`, `recenzja`, `uuid`, `dowiazanie`, `dowiazania`, `facebookposts`) VALUES
(21, 3, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-05 13:13:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '1f326fee-b65c-40d7-80d8-2ce8dd07606e', NULL, NULL, '[]'),
(51, 3, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-11 13:00:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 1, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '89533129-05e5-4067-9b67-080b51483cf3', NULL, NULL, '[]'),
(54, 2, 22, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 13:38:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '[]', 'ÿ', NULL, NULL, NULL, '[]'),
(55, 2, 23, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:00:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '[]', 'ÿ', NULL, NULL, NULL, '[]'),
(56, 2, 23, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:00:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '[]', 'ÿ', NULL, NULL, NULL, '[]'),
(57, 2, 24, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:05:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(58, 2, 24, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:05:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(59, 2, 25, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:11:08', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(60, 2, 25, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:11:08', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(61, 2, 26, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:15:28', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(62, 2, 26, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:15:28', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(63, 2, 27, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:44:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(64, 2, 27, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:44:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(65, 2, 28, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:48:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(66, 2, 28, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:48:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(67, 2, 29, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:52:18', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(68, 2, 29, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 14:52:18', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(69, 2, 30, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 15:20:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(70, 2, 30, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 15:20:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(71, 2, 31, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:26:34', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(72, 2, 31, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:26:34', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(73, 2, 32, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:35:17', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(74, 2, 32, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:35:17', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(75, 2, 33, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:45:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(76, 2, 33, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 16:45:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(77, 2, 34, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 17:58:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(78, 2, 34, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 17:58:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(79, 2, 35, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 20:49:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(80, 2, 35, 'ÿ', 'ÿ', 'ÿ', '2022-02-12 20:49:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(81, 2, 36, 'ÿ', 'ÿ', 'ÿ', '2022-02-13 09:02:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(82, 2, 36, 'ÿ', 'ÿ', 'ÿ', '2022-02-13 09:02:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(85, 1, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-15 12:55:39', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 400, 1, '[\"\\u00ff\"]', 'b5187797a342379fb03cc9351414981d', '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":24}', 'ÿ', 'ee6658cc-ff38-4519-a113-fb6ea4b31e2e', NULL, NULL, '[]'),
(89, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 09:33:14', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1000000, 240, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":1}', 'ÿ', 'aff5519c-e71c-4ba1-b304-1ed145148c32', NULL, NULL, '[]'),
(90, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 10:01:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 240, 360, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":1}', 'ÿ', '569bea08-bd62-45cd-913d-25dafe7147cb', NULL, NULL, '[]'),
(91, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 10:03:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1000000, 588, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":1}', 'ÿ', 'c6bede7d-dadc-4c0b-8cb7-d71b9fbd4f4c', NULL, NULL, '[]'),
(92, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 10:04:08', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 999998, 720, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":1}', 'ÿ', '02cbe53a-230a-4f77-8ad7-8d4268b1e99f', NULL, NULL, '[]'),
(93, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 10:04:41', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1000000, 1680, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":1}', 'ÿ', '13fb5727-7c72-4d45-961d-7287c077646a', NULL, NULL, '[]'),
(94, 2, 37, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 11:42:21', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(95, 2, 37, 'ÿ', 'ÿ', 'ÿ', '2022-02-16 11:42:21', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(100, 2, 38, 'ÿ', 'ÿ', 'ÿ', '2022-02-18 19:34:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(101, 2, 38, 'ÿ', 'ÿ', 'ÿ', '2022-02-18 19:34:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(151, 2, 39, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:33:16', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(152, 2, 39, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:33:16', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(153, 2, 40, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:35:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(154, 2, 40, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:35:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(155, 2, 41, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:49:18', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3e24b605-c68f-495e-ae40-e5c5d15fa893', NULL, NULL, '[]'),
(156, 2, 41, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:49:18', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 0, 99.97, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(157, 2, 42, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:50:42', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(158, 2, 42, 'ÿ', 'ÿ', 'ÿ', '2022-02-23 18:50:42', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(210, 2, 42, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 09:20:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 0, 30.01, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '0d8e9f5a-e030-4447-b60e-055488897fa4', NULL, NULL, '[]'),
(212, 2, 41, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 09:22:28', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, 30.01, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, 210, NULL, '[]'),
(218, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 15:40:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 4, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(219, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 15:40:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(220, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:33', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'f2b2b931-3c70-4e20-b5b0-f8aabd7c8958', NULL, NULL, '[]'),
(221, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '2dd4e19d-7900-42e6-9eea-70278d2d21ee', NULL, NULL, '[]'),
(222, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'a4111cd3-fc4b-4518-9b81-a8d21c398c9a', NULL, NULL, '[]'),
(223, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:45', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6d46f381-48bf-4d4b-bd22-f94df4c63022', NULL, NULL, '[]'),
(224, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '7416b2d7-afa6-40b3-bb17-3753795c3060', NULL, NULL, '[]'),
(225, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '7ea96a0e-2d66-455f-ad6a-348e0274dc71', NULL, NULL, '[]'),
(226, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:48', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '466198fd-00c1-4e5b-b693-fe75ac940cc8', NULL, NULL, '[]'),
(227, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:49', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'd8d257dd-1d6c-4339-8149-60ecebfdf2c3', NULL, NULL, '[]'),
(228, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'b63a927b-efbc-485d-b813-13575d815cbd', NULL, NULL, '[]'),
(229, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '784a9d9d-e2a6-49ae-badd-8e2e5fdf6183', NULL, NULL, '[]'),
(230, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:53', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '14368223-917b-496f-96b8-4eeb9db9fc3c', NULL, NULL, '[]'),
(231, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3dca68bd-90c3-4eaa-9a7d-8279ea771e93', NULL, NULL, '[]'),
(232, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'b3f6a3df-c157-4c6c-b46f-6668b85a4cf1', NULL, NULL, '[]'),
(233, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '0ee033b2-8e26-4747-b6d5-b36a3df425be', NULL, NULL, '[]'),
(234, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:58', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '7f790970-5f72-407b-8247-1215b6a6dbb7', NULL, NULL, '[]'),
(235, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:04:59', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 11, 123, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'e4eb3613-c3b0-48bf-9e55-fa7fa6041375', NULL, NULL, '[]'),
(236, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '2a8b2ba5-315c-422f-bef1-6e35e89f4ba5', NULL, NULL, '[]'),
(237, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:01', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6c8cbc9c-1c97-44fc-9a2b-bd07d9cc7b6d', NULL, NULL, '[]'),
(238, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'eddf861b-3b92-4b1c-b88f-4a2f0aecff63', NULL, NULL, '[]'),
(239, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'fd5f057d-db6a-4a5d-8760-732659f60b1d', NULL, NULL, '[]'),
(240, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:06', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'a4265461-be3f-421b-b274-ac20b06214d6', NULL, NULL, '[]'),
(241, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:08', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '24e56eb4-77f0-4faf-844b-8d800342cd30', NULL, NULL, '[]'),
(242, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '9ce250fc-fc03-4aa7-9dc7-223fcdf53e1b', NULL, NULL, '[]'),
(243, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '7e0b52e5-17b7-4ba2-a31e-6fb75dbe6525', NULL, NULL, '[]'),
(244, 2, 43, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 16:05:11', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'eb0da591-455e-4a16-bb9c-ec4f7df394d6', NULL, NULL, '[]'),
(245, 2, 44, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 18:44:58', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 0, 2, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '561f59f4-28ab-4706-94d1-6992c70d49ec', NULL, NULL, '[]'),
(246, 2, 44, 'ÿ', 'ÿ', 'ÿ', '2022-02-25 18:44:58', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 72, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(247, 2, 44, 'ÿ', 'ÿ', 'ÿ', '2022-02-26 11:46:58', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 977, 2.33, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '77ef119f-b0ac-4fec-a28f-5c4bfc7cac21', NULL, NULL, '[]'),
(250, 2, 45, 'ÿ', 'ÿ', 'ÿ', '2022-03-02 18:22:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(251, 2, 45, 'ÿ', 'ÿ', 'ÿ', '2022-03-02 18:22:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(252, 2, 46, 'ÿ', 'ÿ', 'ÿ', '2022-03-02 18:24:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(253, 2, 46, 'ÿ', 'ÿ', 'ÿ', '2022-03-02 18:24:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(254, 2, 47, 'ÿ', 'ÿ', 'ÿ', '2022-03-04 16:55:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(255, 2, 47, 'ÿ', 'ÿ', 'ÿ', '2022-03-04 16:55:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(261, 2, 48, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 16:21:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(262, 2, 48, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 16:21:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(263, 2, 49, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 17:27:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(264, 2, 49, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 17:27:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(265, 2, 50, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 18:04:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(266, 2, 50, 'ÿ', 'ÿ', 'ÿ', '2022-04-09 18:04:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(267, 2, 53, 'ÿ', 'ÿ', 'ÿ', '2022-04-11 12:58:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(268, 2, 53, 'ÿ', 'ÿ', 'ÿ', '2022-04-11 12:58:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(269, 2, 54, 'ÿ', 'ÿ', 'ÿ', '2022-04-11 18:11:26', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(270, 2, 54, 'ÿ', 'ÿ', 'ÿ', '2022-04-11 18:11:26', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(271, 2, 55, 'ÿ', 'ÿ', 'ÿ', '2022-04-12 11:45:01', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(272, 2, 55, 'ÿ', 'ÿ', 'ÿ', '2022-04-12 11:45:01', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(273, 31, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-15 20:40:12', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '86f1257b-19ec-4839-91f1-0f21b90d4ec3', NULL, NULL, '[]'),
(275, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:09:26', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'ccd877df-f960-4a62-b1ca-911567bde273', NULL, NULL, '[]'),
(276, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:12:32', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6f84c6ec-7ade-4b59-b75a-94043e7aded6', NULL, NULL, '[]'),
(278, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:18:15', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '834b1600-4f73-45b4-9fa8-0018428708c0', NULL, NULL, '[]'),
(279, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:18:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'f63a4e7c-f072-42e8-bdcb-9c9e396501f8', NULL, NULL, '[]'),
(280, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:18:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '9581a7cc-9df5-4f80-b2e5-e50418c1de99', NULL, NULL, '[]'),
(281, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:18:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'c019944e-3df2-43f7-a6b1-f3205a43714f', NULL, NULL, '[]'),
(282, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:18:44', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3081e61f-a0bd-404d-a4ee-248715d4e5fe', NULL, NULL, '[]'),
(288, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:19:38', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '42c4bbcf-c0ef-45f1-9334-e60d97fe0684', NULL, NULL, '[]'),
(289, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:19:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '41c30872-bfc8-4fcf-9d32-97ae1b89d85e', NULL, NULL, '[]'),
(290, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:19:48', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '0846a934-1d98-453a-8835-f9331911e304', NULL, NULL, '[]'),
(291, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:19:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '4697a20b-c11a-4327-b6e2-8c4e410e99a6', NULL, NULL, '[]'),
(292, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:19:59', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'cdbf4ffe-27ef-458b-ad1f-c7af35a8c57c', NULL, NULL, '[]'),
(296, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:22:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'd4b93397-822e-49f6-ae2f-8102c0b19e75', NULL, NULL, '[]'),
(297, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:22:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'edbb0aeb-80c7-43b3-bfce-a6749ba6634f', NULL, NULL, '[]'),
(298, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:28:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'dbbfcade-89c1-4b45-ac32-f3329c983331', NULL, NULL, '[]'),
(299, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:29:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6a0b5288-1f5c-42b8-9813-f0941e63a1ae', NULL, NULL, '[]'),
(300, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:31:34', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '1a188e3c-506b-4056-b832-84bc8792639e', NULL, NULL, '[]'),
(301, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:35:11', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '65e62619-864a-4f24-940b-ac89c007086c', NULL, NULL, '[]'),
(302, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:35:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '208f56fc-a630-468c-9735-c97d30193278', NULL, NULL, '[]'),
(304, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:44:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '4488877c-2403-4260-9f4b-28f97c649e4c', NULL, NULL, '[]'),
(305, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 17:45:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'bd6f5e23-ab09-458d-bcd9-770b0365d14e', NULL, NULL, '[]'),
(306, 2, 56, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 18:52:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(307, 2, 56, 'ÿ', 'ÿ', 'ÿ', '2022-04-19 18:52:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(311, 2, 57, 'ÿ', 'ÿ', 'ÿ', '2022-05-10 09:34:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(312, 2, 57, 'ÿ', 'ÿ', 'ÿ', '2022-05-10 09:34:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(313, 2, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-27 12:09:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 222, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6fa2ceb8-11e8-42a3-9a9b-bd7c19c4c733', NULL, NULL, '[]'),
(314, 2, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-27 12:09:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.33, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(315, 2, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-28 17:57:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '9acdeb6e-0e23-4f2f-9294-f160f4454578', NULL, NULL, '[]'),
(316, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-30 19:53:44', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '68061679-2cb8-49bb-9a28-65379f95eab7', NULL, NULL, '[]'),
(318, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-31 09:28:39', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '07d75623-bf94-4b40-ac6a-195954b86f83', NULL, NULL, '[]'),
(319, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-31 10:07:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 44.12, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'b724acc0-53e3-42e8-9d8f-f028db414776', NULL, NULL, '[]'),
(320, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-05-31 10:13:41', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', '5e968b9afd58b059c8784b545b545e53', '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '96ac0abe-93ad-483d-9613-c22bb4dc5274', NULL, NULL, '[]'),
(321, 2, 59, 'ÿ', 'ÿ', 'ÿ', '2022-06-01 09:48:19', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(322, 2, 59, 'ÿ', 'ÿ', 'ÿ', '2022-06-01 09:48:19', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(323, 2, 60, 'ÿ', 'ÿ', 'ÿ', '2022-06-01 09:50:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(324, 2, 60, 'ÿ', 'ÿ', 'ÿ', '2022-06-01 09:50:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(325, 51, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-02 12:46:49', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'd9e75df1-29ba-4962-a364-0c881012f91c', NULL, NULL, '[]'),
(326, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:33:41', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '90c25726-427d-4957-b592-4a34d54489c6', NULL, NULL, '[]'),
(327, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:33:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '00f13de0-5c95-4aac-8a20-46b1d8787da3', NULL, NULL, '[]'),
(328, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:33:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '857a2e81-ca3b-4cf4-bc7f-b61ad17afd2e', NULL, NULL, '[]'),
(329, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:39:57', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'bb1c15b8-3944-44d4-96f2-7bb9b771d697', NULL, NULL, '[]'),
(330, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:12', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '0c7d483a-046c-480b-807f-dbe586d2e23e', NULL, NULL, '[]'),
(331, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:17', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '76560f1d-56d8-4462-95a1-5461f0f0331d', NULL, NULL, '[]'),
(332, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '5e4e96b7-a636-4140-84d5-909430a4f6f4', NULL, NULL, '[]'),
(333, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:24', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'f4446f71-95ef-44f9-8f9e-b599970521db', NULL, NULL, '[]'),
(334, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:28', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'af1a6add-a780-43ca-9951-e1f82704db3f', NULL, NULL, '[]'),
(335, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '45474a01-a8d3-46fc-bade-79731886bed1', NULL, NULL, '[]'),
(336, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:35', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'cd97cc5e-8fad-42da-8c9d-5ecc752a53fb', NULL, NULL, '[]'),
(337, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:39', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6d3dc567-9399-4d6c-aa5e-46d8bebd4401', NULL, NULL, '[]'),
(338, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '74739635-22fa-4737-b853-260b0e921e59', NULL, NULL, '[]'),
(339, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'c9af6c39-12ce-48b3-9f38-5ef0c9a5df5f', NULL, NULL, '[]'),
(340, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:51', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'b1c8743c-df59-43bb-a53e-8a7276bc5164', NULL, NULL, '[]'),
(341, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:40:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '60215535-c7dc-4683-b0f6-c4bd67dcdaea', NULL, NULL, '[]'),
(342, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '798d4703-2ea7-45e6-ab33-69f8f3905906', NULL, NULL, '[]'),
(343, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '82b93587-b6ea-4c9e-8803-31bb4badcb99', NULL, NULL, '[]'),
(344, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '1d21b46e-5394-44c0-bbf3-199cedc150c2', NULL, NULL, '[]'),
(345, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:12', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '49ff34ee-6495-4516-bb03-f59a4e116b11', NULL, NULL, '[]'),
(346, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:17', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '64769349-7160-4a74-bddf-25d0f184f7d5', NULL, NULL, '[]'),
(347, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '84c2a62e-27b4-4927-925c-f8a62de98e89', NULL, NULL, '[]'),
(348, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'cecdec7e-84f8-456b-846b-9fd65fe38142', NULL, NULL, '[]'),
(349, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '8bbfdfb9-905f-4232-ada4-b168728b563d', NULL, NULL, '[]'),
(350, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '88da2350-4edb-40b2-92fd-59ab6260b2bd', NULL, NULL, '[]'),
(351, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:34', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'd1186221-24e4-439b-ab84-22045eeb8b21', NULL, NULL, '[]'),
(352, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '7dc364d8-12f0-4a0b-bb63-774a2e1ff492', NULL, NULL, '[]'),
(353, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:41', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '4532ccd4-18da-4a52-b7d8-384cf80ae54f', NULL, NULL, '[]'),
(354, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:44', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '51f47479-d2b7-4e23-a3e8-a67f3c4c34e3', NULL, NULL, '[]'),
(355, 1, 58, 'ÿ', 'ÿ', 'ÿ', '2022-06-04 14:41:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '4f236f98-2e2f-4aab-b982-6f28381c2155', NULL, NULL, '[]'),
(384, 11, 57, 'ÿ', 'ÿ', 'ÿ', '2022-06-06 12:30:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 6649, 64.99, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":3}', 'ÿ', '777a4b39-26eb-4b5e-b87c-14f3e46478bf', NULL, NULL, '[]'),
(385, 11, 57, 'ÿ', 'ÿ', 'ÿ', '2022-06-06 12:39:57', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 6657, 69.99, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":3}', 'ÿ', '994bc149-f7ad-495f-ab74-5a224618d822', NULL, NULL, '[]'),
(386, 12, 57, 'ÿ', 'ÿ', 'ÿ', '2022-06-06 12:42:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 99965, 69.99, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":3}', 'ÿ', '4901f345-74e0-44fa-b5c0-0b592506cc87', NULL, NULL, '[]'),
(407, 2, 65, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 16:42:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(408, 2, 65, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 16:42:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(409, 2, 66, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:10:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(410, 2, 66, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:10:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(411, 2, 67, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:11:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3cad201c-da26-43cb-b059-852a9417e6cb', NULL, NULL, '[]'),
(412, 2, 67, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:11:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '9c846da7-2eff-4d98-b522-d7d993944b6f', NULL, NULL, '[]'),
(413, 2, 68, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:21:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(414, 2, 68, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:21:22', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(415, 2, 69, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:38:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(416, 2, 69, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 20:38:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(417, 2, 70, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:21:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(418, 2, 70, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:21:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(419, 2, 71, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:31:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(420, 2, 71, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:31:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(421, 2, 72, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:35:29', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(422, 2, 72, 'ÿ', 'ÿ', 'ÿ', '2022-07-30 22:35:29', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(490, 11, 71, 'ÿ', 'ÿ', 'ÿ', '2022-08-01 20:21:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 331, 22.11, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'e0ae177d-e928-48a4-b3a3-4e6e0a6cd730', NULL, NULL, '[]'),
(497, 11, 71, 'ÿ', 'ÿ', 'ÿ', '2022-08-03 19:01:46', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 11, 22.02, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'ea323f12-3a7e-46c9-b91a-155baaffb21d', NULL, NULL, '[]'),
(498, 11, 71, 'ÿ', 'ÿ', 'ÿ', '2022-08-07 21:42:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '97697b23-96dd-4ada-816a-f41ac50c6abe', NULL, NULL, '[]'),
(501, 2, 73, 'ÿ', 'ÿ', 'ÿ', '2022-08-21 19:42:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(502, 2, 73, 'ÿ', 'ÿ', 'ÿ', '2022-08-21 19:42:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(504, 2, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-22 18:38:21', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 11, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'af8ebba7-79e8-4d15-a566-c1ae1e746a7b', NULL, NULL, '[]'),
(505, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-22 19:59:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 3, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'c2c5b78a-068a-46c0-9b06-1c6e88d5e698', NULL, NULL, '[]'),
(506, 12, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-22 20:01:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 3, 2, 1, '[\"\\u00ff\"]', '7bedf5b90484d7fad53f36512ca55a70', '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '67759d38-373d-42cd-a9c8-b19b461f661c', NULL, NULL, '[]'),
(507, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:46:29', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'df6511fd-44ed-47ae-8e86-4a9dff947616', NULL, NULL, '[]'),
(508, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:46:40', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6367cd56-449a-4fd3-a81f-b7c501a3b734', NULL, NULL, '[]'),
(509, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:46:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '355f0d90-5e30-4856-a4ae-6d7f2fabb9dc', NULL, NULL, '[]'),
(510, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:47:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', '494cd897f68f820c70571bbbe9d9201e', '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '6016b66b-2eb1-46a3-9051-a1767c409601', NULL, NULL, '[]'),
(511, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:47:06', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'c4b4121b-b09b-4bb9-aed7-af45f010007b', NULL, NULL, '[]'),
(512, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:47:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'fc5ae3bf-78b0-4a46-902f-38ad02eca532', NULL, NULL, '[]'),
(513, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:47:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '578249d7-abaf-4bc4-b20b-c56da82637a7', NULL, NULL, '[]'),
(515, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:47:42', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'ccf8aaa9-6c75-4b6f-9d6b-ecd569387e9f', NULL, NULL, '[]'),
(516, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:48:43', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'dccb0745-89d1-469e-b159-f6550116b27f', NULL, NULL, '[]'),
(517, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:48:51', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3cfc5c31-036d-4727-ab97-c352f91be5e7', NULL, NULL, '[]'),
(518, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 15:49:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 2, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'cea8d33c-5708-42b7-b65a-eb5bdaa48836', NULL, NULL, '[]'),
(519, 11, 73, 'ÿ', 'ÿ', 'ÿ', '2022-08-28 16:38:48', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'f0cb7b74-0ab7-421d-ae6b-9f260cca3d06', NULL, NULL, '[]'),
(520, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-09-04 20:08:15', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '2a3ccb8c-4b81-44fa-b474-9288458b8a9a', NULL, NULL, '[]'),
(521, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-09-04 20:10:35', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 3, 222, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '78dcb2d8-a401-4868-945c-0bd479d1d5bf', NULL, NULL, '[]'),
(522, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-09-04 20:21:45', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 11, 233, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'bcaddf91-4a07-41b7-977e-61eb123d681c', NULL, NULL, '[]'),
(523, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-09-10 18:38:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 3, 22, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '065cca88-dc09-4719-91ad-cf26dd0771a5', NULL, NULL, '[]'),
(544, 2, 77, 'ÿ', 'ÿ', 'ÿ', '2022-10-01 18:26:33', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(545, 2, 77, 'ÿ', 'ÿ', 'ÿ', '2022-10-01 18:26:33', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(546, 2, 78, 'ÿ', 'ÿ', 'ÿ', '2022-10-01 21:45:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(547, 2, 78, 'ÿ', 'ÿ', 'ÿ', '2022-10-01 21:45:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(548, 2, 79, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 14:20:16', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(549, 2, 79, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 14:20:16', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(550, 2, 80, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 16:56:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]');
INSERT INTO `cat1` (`id`, `category`, `user_id`, `title`, `description`, `description2`, `timecreation`, `picture`, `video`, `count`, `price`, `wyswietlanie`, `warianty`, `defaultpicture`, `fieldsforbuyers`, `any`, `recenzja`, `uuid`, `dowiazanie`, `dowiazania`, `facebookposts`) VALUES
(551, 2, 80, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 16:56:30', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(552, 2, 81, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 17:27:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(553, 2, 81, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 17:27:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(554, 2, 82, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 18:43:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(555, 2, 82, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 18:43:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(556, 2, 83, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 18:52:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(557, 2, 83, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 18:52:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(558, 2, 84, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 19:42:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(559, 2, 84, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 19:42:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(560, 2, 85, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 19:48:11', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(561, 2, 85, 'ÿ', 'ÿ', 'ÿ', '2022-10-02 19:48:11', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(566, 2, 88, 'ÿ', 'ÿ', 'ÿ', '2022-10-04 19:24:19', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(567, 2, 88, 'ÿ', 'ÿ', 'ÿ', '2022-10-04 19:24:19', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(568, 2, 89, 'ÿ', 'ÿ', 'ÿ', '2022-10-04 19:27:33', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(569, 2, 89, 'ÿ', 'ÿ', 'ÿ', '2022-10-04 19:27:33', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(570, 2, 90, 'ÿ', 'ÿ', 'ÿ', '2022-10-05 19:26:57', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(571, 2, 90, 'ÿ', 'ÿ', 'ÿ', '2022-10-05 19:26:57', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(572, 2, 91, 'ÿ', 'ÿ', 'ÿ', '2022-10-05 20:29:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(573, 2, 91, 'ÿ', 'ÿ', 'ÿ', '2022-10-05 20:29:00', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(600, 2, 92, 'ÿ', 'ÿ', 'ÿ', '2022-10-09 16:04:34', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(653, 2, 93, 'ÿ', 'ÿ', 'ÿ', '2022-10-15 17:25:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(654, 2, 93, 'ÿ', 'ÿ', 'ÿ', '2022-10-15 17:25:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(664, 2, 94, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 13:19:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(665, 2, 94, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 13:19:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(666, 2, 95, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 13:29:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(667, 2, 95, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 13:29:05', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(668, 2, 96, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 17:01:36', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '4a7240bc-7d43-4d2c-8667-b7864014549f', NULL, NULL, '[]'),
(669, 2, 96, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 17:01:36', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '556a2e08-d28b-48cf-a942-75f1066963d2', NULL, NULL, '[]'),
(672, 2, 97, 'ÿ', 'ÿ', 'ÿ', '2022-10-16 19:08:44', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '27f7cbc9-3322-4a1a-a24c-35b5588b835a', NULL, NULL, '[]'),
(700, 2, 98, 'ÿ', 'ÿ', 'ÿ', '2022-10-25 20:03:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(701, 2, 98, 'ÿ', 'ÿ', 'ÿ', '2022-10-25 20:03:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(702, 2, 99, 'ÿ', 'ÿ', 'ÿ', '2022-10-25 20:10:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(703, 2, 99, 'ÿ', 'ÿ', 'ÿ', '2022-10-25 20:10:50', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(712, 2, 100, 'ÿ', 'ÿ', 'ÿ', '2022-10-27 21:51:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(713, 2, 100, 'ÿ', 'ÿ', 'ÿ', '2022-10-27 21:51:13', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(721, 2, 101, 'ÿ', 'ÿ', 'ÿ', '2022-10-29 12:14:42', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(722, 2, 101, 'ÿ', 'ÿ', 'ÿ', '2022-10-29 12:14:42', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(723, 2, 102, 'ÿ', 'ÿ', 'ÿ', '2022-10-29 19:11:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(724, 2, 102, 'ÿ', 'ÿ', 'ÿ', '2022-10-29 19:11:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(725, 2, 103, 'ÿ', 'ÿ', 'ÿ', '2022-10-31 12:30:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 440, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(726, 2, 103, 'ÿ', 'ÿ', 'ÿ', '2022-10-31 12:30:03', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(744, 2, 104, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 14:59:37', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 22.44, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(747, 2, 105, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 16:31:25', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(748, 2, 105, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 16:31:25', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(755, 2, 105, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 18:12:44', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 444, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, 'a637e8fc-bdbc-42c9-ba68-f1d80aa5ae33', NULL, NULL, '[]'),
(757, 2, 106, 'Przedmiot 1', 'Opis 1', '', '2022-11-05 20:03:55', '[\"truskawka\"]', '[]', NULL, NULL, 1, '[]', NULL, '[]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(758, 2, 106, 'Przedmiot 2', 'Opis 2', '', '2022-11-05 20:03:55', '[\"ubranie00\"]', '[]', 10, 99.97, 1, '[]', NULL, '[]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(759, 2, 107, 'Przedmiot 1', 'Opis 1', '', '2022-11-05 20:05:45', '[\"truskawka\"]', '[]', NULL, NULL, 1, '[]', NULL, '[]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(760, 2, 107, 'Przedmiot 2', 'Opis 2', '', '2022-11-05 20:05:45', '[\"ubranie00\"]', '[]', 10, 99.97, 1, '[]', NULL, '[]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(761, 2, 108, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 20:06:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(762, 2, 108, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 20:06:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(763, 2, 109, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 20:09:36', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(764, 2, 109, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 20:09:36', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(765, 2, 110, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 22:36:38', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(766, 2, 110, 'ÿ', 'ÿ', 'ÿ', '2022-11-05 22:36:38', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(767, 2, 111, 'ÿ', 'ÿ', 'ÿ', '2022-11-06 09:09:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(768, 2, 111, 'ÿ', 'ÿ', 'ÿ', '2022-11-06 09:09:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 8, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(777, 2, 112, 'ÿ', 'ÿ', 'ÿ', '2022-11-06 14:17:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(778, 2, 112, 'ÿ', 'ÿ', 'ÿ', '2022-11-06 14:17:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(782, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-11-13 10:19:51', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 22, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":null}', NULL, '55411efc-2dcf-45bf-b17a-b3718131e368', NULL, NULL, '[]'),
(783, 2, 113, 'ÿ', 'ÿ', 'ÿ', '2022-11-13 17:09:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'efaa086e-8909-427f-8b70-93aa1b492f17', NULL, NULL, '[]'),
(784, 2, 113, 'ÿ', 'ÿ', 'ÿ', '2022-11-13 17:09:31', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'a05ca754-6c79-4b07-925a-41a3d5c89a27', NULL, NULL, '[]'),
(787, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-11-18 20:12:14', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, 'b8ecd1a6-d3f8-4844-b1f8-01b167656fd2', NULL, NULL, '[]'),
(793, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-11-26 16:45:48', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 22, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '7bef2c67-7ff9-4958-922f-4f1920b87c09', NULL, NULL, '[]'),
(794, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-11-29 18:12:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 5, 11, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":null}', 'ÿ', 'a8f30bca-0d8e-4f85-a577-c27d53787f71', NULL, NULL, '[]'),
(795, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-11-29 18:12:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 99.91, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true,\"MaksItemShop\":3}', 'ÿ', '6aac1967-6fdd-4921-82ab-3640236461f3', NULL, NULL, '[]'),
(796, 11, 67, 'ÿ', 'ÿ', 'ÿ', '2022-12-03 18:17:27', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 98, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '1eedde56-034d-4784-90de-33d34a90acbc', NULL, NULL, '[]'),
(798, 2, 2, 'ÿ', 'ÿ', 'ÿ', '2022-12-18 09:58:38', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '9630da5e-efa8-4549-b8a4-1bbc91f617be', NULL, NULL, '[]'),
(802, 11, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-25 19:17:09', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 454, 33, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '3793ea98-4b82-4788-954c-e606582529a9', NULL, NULL, '[]'),
(805, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-26 08:10:36', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', 'e930ba28-977a-410f-810a-3838cbab56f7', NULL, NULL, '[]'),
(806, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:15:49', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, 'ac5c2602-c1b3-4d59-9063-3196b2628f14', NULL, NULL, '[]'),
(807, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:15:56', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '6c65aec9-2f2c-4bb1-a3bf-dac536755636', NULL, NULL, '[]'),
(808, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:16:47', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, 'c67eecb9-f64b-46df-a887-f874abb5cc16', NULL, NULL, '[]'),
(809, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:16:52', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '7c69ccfc-59fd-4e3b-a351-beb469a781eb', NULL, NULL, '[]'),
(810, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:16:57', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '3ac0e98a-1cca-4ae0-a115-b693c6f4c687', NULL, NULL, '[]'),
(811, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:17:04', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '6a43efb3-99d9-4f92-9ff5-ebc5af1d6c11', NULL, NULL, '[]'),
(812, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:17:10', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, 'e00ff953-2340-400b-9aa0-5b58dcb515bb', NULL, NULL, '[]'),
(813, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:17:14', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '4ca5d6d4-2b61-42d5-8e98-94666c35e801', NULL, NULL, '[]'),
(814, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:17:19', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '349f7ca5-c1de-4b2e-9b96-a6a3dacb9c4d', NULL, NULL, '[]'),
(815, 2, 114, 'ÿ', 'ÿ', 'ÿ', '2022-12-31 11:17:23', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 1, 434, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '15682eb7-f050-4593-890b-be799e14ce74', NULL, NULL, '[]'),
(816, 2, 115, 'ÿ', 'ÿ', 'ÿ', '2023-01-07 23:23:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 33, 3, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', '1e34b138-a3ff-4e9c-89c3-5fbd3837595b', NULL, NULL, '[]'),
(817, 2, 115, 'ÿ', 'ÿ', 'ÿ', '2023-01-07 23:23:20', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 10, 99.97, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', 'ÿ', NULL, NULL, NULL, '[]'),
(818, 11, 57, 'ÿ', 'ÿ', 'ÿ', '2023-01-08 17:42:55', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 344, 22, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '51222d1d-bc52-4f4a-92e9-20434461aa9d', NULL, NULL, '[]'),
(819, 51, 55, 'ÿ', 'ÿ', 'ÿ', '2023-01-08 18:10:17', '[\"\\u00ff\"]', '[\"\\u00ff\"]', 23, 21, 1, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '2e18b48a-06ec-4368-9bf3-8e54d0cc4d64', NULL, NULL, '[]'),
(820, 210, 2, 'ÿ', 'ÿ', 'ÿ', '2023-01-21 13:01:54', '[\"\\u00ff\"]', '[\"\\u00ff\"]', NULL, NULL, 0, '[\"\\u00ff\"]', NULL, '[\"\\u00ff\"]', '{\"description\":true,\"title\":true}', NULL, '3590d2ea-1cef-49b8-9809-eb72d8d1e299', NULL, NULL, '[]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category1`
--

CREATE TABLE `category1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `category1`
--

INSERT INTO `category1` (`id`, `user_id`, `data`) VALUES
(1, 2, '[{\"32\":true}]'),
(2, 3, '[[]]'),
(14, 15, '[[]]'),
(15, 16, '[[]]'),
(16, 17, '[[]]'),
(17, 18, '[[]]'),
(18, 19, '[[]]'),
(19, 20, '[[]]'),
(20, 21, '[[]]'),
(21, 22, '[[]]'),
(22, 23, '[{\"51\":true}]'),
(23, 24, '[{\"51\":true}]'),
(24, 25, '[{\"51\":true}]'),
(25, 26, '[{\"51\":true}]'),
(26, 27, '[{\"51\":true}]'),
(27, 28, '[{\"51\":true}]'),
(28, 29, '[{\"51\":true}]'),
(29, 30, '[{\"51\":true}]'),
(30, 31, '[{\"51\":true}]'),
(31, 32, '[{\"51\":true}]'),
(32, 33, '[{\"51\":true}]'),
(33, 34, '[{\"51\":true}]'),
(34, 35, '[{\"51\":true}]'),
(35, 36, '[{\"51\":true}]'),
(36, 37, '[{\"51\":true}]'),
(37, 38, '[{\"51\":true}]'),
(38, 39, '[{\"51\":true}]'),
(39, 40, '[{\"51\":true}]'),
(40, 41, '[{\"51\":true}]'),
(41, 42, '[{\"51\":true}]'),
(42, 43, '[{\"51\":true}]'),
(43, 44, '[{\"51\":true}]'),
(44, 45, '[{\"51\":true}]'),
(45, 46, '[{\"51\":true}]'),
(46, 47, '[{\"51\":true}]'),
(47, 48, '[{\"51\":true}]'),
(48, 49, '[{\"51\":true}]'),
(49, 50, '[{\"51\":true}]'),
(50, 53, '[{\"51\":true}]'),
(51, 54, '[{\"51\":true}]'),
(52, 55, '[{\"11\":true,\"12\":true,\"13\":true,\"31\":true,\"32\":true}]'),
(53, 56, '[{\"51\":true}]'),
(54, 57, '[{\"13\":true,\"51\":true}]'),
(55, 58, '[[]]'),
(56, 59, '[{\"51\":true}]'),
(57, 60, '[{\"51\":true}]'),
(67, 65, '[{\"32\":true}]'),
(68, 66, '[{\"51\":true}]'),
(69, 67, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(70, 68, '[{\"51\":true}]'),
(71, 69, '[{\"51\":true}]'),
(72, 70, '[{\"51\":true}]'),
(73, 71, '[{\"51\":true}]'),
(74, 72, '[{\"51\":true}]'),
(75, 73, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(76, 74, '[{\"51\":true}]'),
(77, 75, '[{\"51\":true}]'),
(78, 76, '[{\"51\":true}]'),
(79, 77, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(80, 78, '[{\"51\":true}]'),
(81, 79, '[{\"51\":true}]'),
(82, 80, '[{\"51\":true}]'),
(83, 81, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(84, 82, '[{\"51\":true}]'),
(85, 83, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(86, 84, '[{\"51\":true}]'),
(87, 85, '[{\"51\":true}]'),
(88, 86, '[{\"51\":true}]'),
(89, 87, '[{\"51\":true}]'),
(90, 88, '[{\"51\":true}]'),
(91, 89, '[{\"51\":true}]'),
(92, 90, '[{\"51\":true}]'),
(93, 91, '[{\"51\":true}]'),
(94, 92, '[{\"51\":true}]'),
(95, 93, '[{\"51\":true}]'),
(96, 94, '[{\"51\":true}]'),
(97, 95, '[{\"51\":true}]'),
(98, 96, '[{\"51\":true}]'),
(99, 97, '[{\"51\":true}]'),
(100, 98, '[{\"51\":true}]'),
(101, 99, '[{\"51\":true}]'),
(102, 100, '[{\"1\":true,\"4\":true,\"51\":true}]'),
(103, 101, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(104, 102, '[{\"51\":true}]'),
(105, 103, '[{\"51\":true,\"210\":true}]'),
(106, 104, '[{\"51\":true}]'),
(107, 105, '[{\"51\":true}]'),
(108, 106, '[{\"51\":true}]'),
(109, 107, '[{\"51\":true}]'),
(110, 108, '[{\"51\":true}]'),
(111, 109, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(112, 110, '[{\"51\":true}]'),
(113, 111, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(114, 112, '[{\"51\":true}]'),
(115, 113, '[{\"3\":true,\"13\":true,\"51\":true}]'),
(116, 114, '[{\"3\":true,\"12\":true,\"13\":true,\"51\":true}]'),
(117, 115, '[{\"3\":true,\"13\":true,\"51\":true}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `catt1`
--

CREATE TABLE `catt1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `dane` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `catt1`
--

INSERT INTO `catt1` (`id`, `user_id`, `category`, `dane`) VALUES
(1, 2, 31, 'ÿ'),
(2, 2, 32, 'ÿ'),
(3, 2, 1, 'ÿ'),
(4, 24, 51, 'ÿ'),
(5, 26, 51, 'ÿ'),
(6, 27, 51, 'ÿ'),
(7, 28, 51, 'ÿ'),
(8, 29, 51, 'ÿ'),
(9, 30, 51, 'ÿ'),
(10, 31, 51, 'ÿ'),
(11, 32, 51, 'ÿ'),
(12, 33, 51, 'ÿ'),
(13, 34, 51, 'ÿ'),
(14, 35, 51, 'ÿ'),
(15, 36, 51, 'ÿ'),
(16, 37, 51, 'ÿ'),
(17, 38, 51, 'ÿ'),
(18, 39, 51, 'ÿ'),
(19, 40, 51, 'ÿ'),
(20, 41, 51, 'ÿ'),
(21, 42, 51, 'ÿ'),
(22, 43, 51, 'ÿ'),
(23, 44, 51, 'ÿ'),
(24, 45, 51, 'ÿ'),
(25, 46, 51, 'ÿ'),
(26, 47, 51, 'ÿ'),
(27, 47, 2, 'ÿ'),
(28, 48, 51, 'ÿ'),
(29, 49, 51, 'ÿ'),
(30, 50, 51, 'ÿ'),
(31, 53, 51, 'ÿ'),
(32, 54, 51, 'ÿ'),
(33, 55, 51, 'ÿ'),
(34, 56, 51, 'ÿ'),
(35, 55, 12, 'ÿ'),
(36, 55, 31, 'ÿ'),
(37, 55, 32, 'ÿ'),
(38, 55, 13, 'ÿ'),
(39, 57, 51, 'ÿ'),
(40, 57, 11, 'ÿ'),
(41, 57, 12, 'ÿ'),
(42, 57, 13, 'ÿ'),
(43, 58, 51, 'ÿ'),
(44, 58, 2, 'ÿ'),
(45, 59, 51, 'ÿ'),
(46, 60, 51, 'ÿ'),
(47, 58, 1, 'ÿ'),
(133, 65, 31, 'ÿ'),
(134, 65, 32, 'ÿ'),
(135, 65, 1, 'ÿ'),
(136, 66, 51, 'ÿ'),
(140, 67, 12, 'ÿ'),
(141, 67, 13, 'ÿ'),
(711, 69, 51, 'ÿ'),
(712, 70, 51, 'ÿ'),
(714, 72, 51, 'ÿ'),
(719, 68, 51, 'ÿ'),
(747, 67, 3, 'ÿ'),
(775, 71, 51, 'ÿ'),
(776, 73, 51, 'ÿ'),
(777, 73, 11, 'ÿ'),
(778, 73, 12, 'ÿ'),
(779, 73, 13, 'ÿ'),
(780, 73, 3, 'ÿ'),
(781, 74, 51, 'ÿ'),
(782, 75, 51, 'ÿ'),
(783, 76, 51, 'ÿ'),
(1408, 77, 11, 'ÿ'),
(1409, 77, 12, 'ÿ'),
(1410, 77, 13, 'ÿ'),
(1411, 77, 3, 'ÿ'),
(1412, 78, 51, 'ÿ'),
(1423, 79, 51, 'ÿ'),
(1424, 80, 51, 'ÿ'),
(1454, 81, 11, 'ÿ'),
(1455, 81, 12, 'ÿ'),
(1456, 81, 13, 'ÿ'),
(1457, 81, 3, 'ÿ'),
(1458, 82, 51, 'ÿ'),
(1505, 83, 11, 'ÿ'),
(1506, 83, 12, 'ÿ'),
(1507, 83, 13, 'ÿ'),
(1508, 83, 3, 'ÿ'),
(1509, 84, 51, 'ÿ'),
(1520, 85, 51, 'ÿ'),
(1521, 86, 51, '<h1>Biznes posiada dwie funkcje: marketing i innowacje.</h1><p>&nbsp;</p><p><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/biznes000\" /></p>'),
(1522, 87, 51, '<h1>Biznes posiada dwie funkcje: marketing i innowacje.</h1><p>&nbsp;</p><p><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/biznes000\" /></p>'),
(1523, 88, 51, 'ÿ'),
(1535, 89, 51, 'ÿ'),
(1536, 90, 51, 'ÿ'),
(1537, 90, 2, 'ÿ'),
(1538, 91, 51, 'ÿ'),
(1539, 92, 51, 'ÿ'),
(1541, 93, 51, 'ÿ'),
(1542, 94, 51, 'ÿ'),
(1543, 95, 51, 'ÿ'),
(1544, 96, 51, 'ÿ'),
(1545, 97, 51, 'ÿ'),
(1546, 98, 51, 'ÿ'),
(1547, 99, 51, 'ÿ'),
(1553, 100, 51, 'ÿ'),
(1554, 100, 2, 'ÿ'),
(1556, 100, 1, 'ÿ'),
(1560, 102, 51, 'ÿ'),
(1561, 101, 12, 'ÿ'),
(1562, 101, 13, 'ÿ'),
(1563, 101, 3, 'ÿ'),
(1568, 103, 51, 'ÿ'),
(1571, 103, 210, 'ÿ'),
(1573, 103, 2, 'ÿ'),
(1574, 104, 51, 'ÿ'),
(1575, 105, 51, 'ÿ'),
(1576, 106, 51, '<h1>Biznes posiada dwie funkcje: marketing i innowacje.</h1><p>&nbsp;</p><p><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/biznes000\" /></p>'),
(1577, 107, 51, '<h1>Biznes posiada dwie funkcje: marketing i innowacje.</h1><p>&nbsp;</p><p><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/biznes000\" /></p>'),
(1578, 108, 51, 'ÿ'),
(1584, 109, 12, 'ÿ'),
(1585, 109, 13, 'ÿ'),
(1586, 109, 3, 'ÿ'),
(1587, 110, 51, 'ÿ'),
(1642, 111, 12, 'ÿ'),
(1643, 111, 13, 'ÿ'),
(1644, 111, 3, 'ÿ'),
(1649, 112, 51, 'ÿ'),
(1651, 113, 12, 'ÿ'),
(1652, 113, 13, 'ÿ'),
(1653, 113, 3, 'ÿ'),
(1656, 114, 12, 'ÿ'),
(1657, 114, 13, 'ÿ'),
(1658, 114, 3, 'ÿ'),
(1662, 114, 11, 'ÿ'),
(1668, 115, 12, 'ÿ'),
(1669, 115, 13, 'ÿ'),
(1670, 115, 3, 'ÿ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `domain1`
--

CREATE TABLE `domain1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nazwa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dodanie` datetime NOT NULL,
  `sslpobieranie` datetime DEFAULT NULL,
  `sslwaznosc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `domain1`
--

INSERT INTO `domain1` (`id`, `user_id`, `nazwa`, `dodanie`, `sslpobieranie`, `sslwaznosc`) VALUES
(3, 1, '', '2022-10-06 09:10:02', NULL, NULL),
(4, 1, '', '2022-10-06 09:20:01', NULL, NULL),
(5, 1, '', '2022-10-06 09:25:01', NULL, NULL),
(6, 1, '', '2022-10-06 09:40:01', NULL, NULL),
(60, 2, '', '2022-10-06 09:45:01', NULL, NULL),
(61, 3, 'en.atmega.pl', '2023-01-21 22:20:01', NULL, '2023-04-21 21:25:04'),
(72, 15, '', '2020-12-31 00:00:00', NULL, NULL),
(73, 16, '', '2020-12-31 00:00:00', NULL, NULL),
(74, 17, '', '2020-12-31 00:00:00', NULL, NULL),
(75, 18, '', '2020-12-31 00:00:00', NULL, NULL),
(76, 19, '', '2020-12-31 00:00:00', NULL, NULL),
(77, 20, '', '2020-12-31 00:00:00', NULL, NULL),
(78, 21, '', '2020-12-31 00:00:00', NULL, NULL),
(79, 22, '', '2020-12-31 00:00:00', NULL, NULL),
(80, 23, '', '2020-12-31 00:00:00', NULL, NULL),
(81, 24, '', '2020-12-31 00:00:00', NULL, NULL),
(82, 25, '', '2020-12-31 00:00:00', NULL, NULL),
(83, 26, '', '2020-12-31 00:00:00', NULL, NULL),
(84, 27, '', '2020-12-31 00:00:00', NULL, NULL),
(85, 28, '', '2020-12-31 00:00:00', NULL, NULL),
(86, 29, '', '2020-12-31 00:00:00', NULL, NULL),
(87, 30, '', '2020-12-31 00:00:00', NULL, NULL),
(88, 31, '', '2020-12-31 00:00:00', NULL, NULL),
(89, 32, '', '2020-12-31 00:00:00', NULL, NULL),
(90, 33, '', '2020-12-31 00:00:00', NULL, NULL),
(91, 34, '', '2020-12-31 00:00:00', NULL, NULL),
(92, 35, '', '2020-12-31 00:00:00', NULL, NULL),
(93, 36, '', '2020-12-31 00:00:00', NULL, NULL),
(94, 37, '', '2020-12-31 00:00:00', NULL, NULL),
(95, 1, 'atmega.pl', '2023-01-21 16:50:01', NULL, '2023-04-21 15:55:08'),
(96, 38, '', '2020-12-31 00:00:00', NULL, NULL),
(97, 39, '', '2020-12-31 00:00:00', NULL, NULL),
(98, 40, '', '2020-12-31 00:00:00', NULL, NULL),
(99, 41, '', '2020-12-31 00:00:00', NULL, NULL),
(100, 42, '', '2020-12-31 00:00:00', NULL, NULL),
(101, 43, '', '2020-12-31 00:00:00', NULL, NULL),
(102, 44, '', '2020-12-31 00:00:00', NULL, NULL),
(103, 45, '', '2020-12-31 00:00:00', NULL, NULL),
(104, 46, '', '2020-12-31 00:00:00', NULL, NULL),
(105, 1, 'symetryczny.pl', '2023-01-21 22:15:01', NULL, '2023-04-21 21:20:07'),
(106, 1, 'api.symetryczny.pl', '2023-01-21 22:25:01', NULL, '2023-04-21 21:30:08'),
(107, 1, 'witryna.fun', '2023-01-21 22:30:01', NULL, '2023-04-21 21:35:16'),
(108, 47, '', '2020-12-31 00:00:00', NULL, NULL),
(109, 48, '', '2020-12-31 00:00:00', NULL, NULL),
(110, 49, '', '2020-12-31 00:00:00', NULL, NULL),
(111, 50, '', '2020-12-31 00:00:00', NULL, NULL),
(112, 53, '', '2020-12-31 00:00:00', NULL, NULL),
(113, 54, '', '2020-12-31 00:00:00', NULL, NULL),
(114, 55, 'kancelariaprawna.symetryczny.pl', '2022-11-23 16:15:05', NULL, '2023-02-21 17:20:15'),
(115, 56, 'dieta.symetryczny.pl', '2022-11-23 16:16:17', NULL, '2023-02-21 17:25:10'),
(116, 57, 'klocki.symetryczny.pl', '2022-11-23 16:13:35', NULL, '2023-02-21 17:15:10'),
(117, 58, '', '2020-12-31 00:00:00', NULL, NULL),
(118, 59, '', '2020-12-31 00:00:00', NULL, NULL),
(119, 60, '', '2020-12-31 00:00:00', NULL, NULL),
(120, 65, '', '2020-12-31 00:00:00', NULL, NULL),
(121, 66, '', '2020-12-31 00:00:00', NULL, NULL),
(122, 67, 'template2.symetryczny.pl', '2022-11-23 16:03:39', NULL, '2023-02-21 17:05:11'),
(123, 68, '', '2020-12-31 00:00:00', NULL, NULL),
(124, 69, '', '2020-12-31 00:00:00', NULL, NULL),
(125, 70, '', '2020-12-31 00:00:00', NULL, NULL),
(126, 71, '', '2020-12-31 00:00:00', NULL, NULL),
(127, 72, '', '2020-12-31 00:00:00', NULL, NULL),
(128, 73, '', '2020-12-31 00:00:00', NULL, NULL),
(129, 74, '', '2020-12-31 00:00:00', NULL, NULL),
(130, 75, '', '2020-12-31 00:00:00', NULL, NULL),
(131, 76, '', '2020-12-31 00:00:00', NULL, NULL),
(132, 77, '', '2020-12-31 00:00:00', NULL, NULL),
(133, 78, '', '2020-12-31 00:00:00', NULL, NULL),
(134, 79, '', '2020-12-31 00:00:00', NULL, NULL),
(135, 80, '', '2020-12-31 00:00:00', NULL, NULL),
(136, 81, '', '2020-12-31 00:00:00', NULL, NULL),
(137, 82, '', '2020-12-31 00:00:00', NULL, NULL),
(138, 83, '', '2020-12-31 00:00:00', NULL, NULL),
(139, 84, '', '2020-12-31 00:00:00', NULL, NULL),
(140, 85, '', '2020-12-31 00:00:00', NULL, NULL),
(141, 86, '', '2020-12-31 00:00:00', NULL, NULL),
(142, 87, '', '2020-12-31 00:00:00', NULL, NULL),
(143, 88, '', '2020-12-31 00:00:00', NULL, NULL),
(144, 89, '', '2020-12-31 00:00:00', NULL, NULL),
(145, 90, '', '2020-12-31 00:00:00', NULL, NULL),
(146, 91, '', '2020-12-31 00:00:00', NULL, NULL),
(147, 92, '', '2020-12-31 00:00:00', NULL, NULL),
(148, 93, '', '2020-12-31 00:00:00', NULL, NULL),
(149, 94, '', '2020-12-31 00:00:00', NULL, NULL),
(150, 95, '', '2020-12-31 00:00:00', NULL, NULL),
(151, 96, '', '2020-12-31 00:00:00', NULL, NULL),
(152, 97, '', '2020-12-31 00:00:00', NULL, NULL),
(153, 98, '', '2020-12-31 00:00:00', NULL, NULL),
(154, 99, '', '2020-12-31 00:00:00', NULL, NULL),
(155, 100, '', '2020-12-31 00:00:00', NULL, NULL),
(156, 101, '', '2020-12-31 00:00:00', NULL, NULL),
(157, 102, '', '2020-12-31 00:00:00', NULL, NULL),
(158, 103, '', '2020-12-31 00:00:00', NULL, NULL),
(159, 104, '', '2020-12-31 00:00:00', NULL, NULL),
(160, 105, '', '2020-12-31 00:00:00', NULL, NULL),
(161, 106, '', '2020-12-31 00:00:00', NULL, NULL),
(162, 107, '', '2020-12-31 00:00:00', NULL, NULL),
(163, 108, '', '2020-12-31 00:00:00', NULL, NULL),
(164, 109, '', '2020-12-31 00:00:00', NULL, NULL),
(165, 110, '', '2020-12-31 00:00:00', NULL, NULL),
(166, 111, '', '2020-12-31 00:00:00', NULL, NULL),
(167, 112, '', '2020-12-31 00:00:00', NULL, NULL),
(168, 113, 'generuje.pl', '2022-11-15 20:05:30', NULL, '2023-02-13 21:10:10'),
(169, 114, '', '2020-12-31 00:00:00', NULL, NULL),
(170, 115, '', '2020-12-31 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `facebook1`
--

CREATE TABLE `facebook1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `clientid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clientsecret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accesstoken` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `pageid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageaccesstoken` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appsecretproof` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecreation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `facebook1`
--

INSERT INTO `facebook1` (`id`, `user_id`, `clientid`, `clientsecret`, `accesstoken`, `accountid`, `scope`, `pageid`, `pageaccesstoken`, `appsecretproof`, `timecreation`) VALUES
(1, 2, NULL, NULL, 'Bearer EAAWkSWhrqg8BANZCZC2XigXILecwA1adlJOt349HPzXEZC4hCAgQHsIjhcAaVc3Y8sDyl18QUcKc2ZB3mi3efq8deqEn76tO74OBcrBGnPhd5mDD76jtdZCZClN3EKOUuk3EVMAGfQXAnnfQROba8db3cEtGKCVihW0nZACKIFaw0xWPMusejsrIO7W03z5oo0tYBcUn12VwvJ1RZB8U1fmm4gzUlj9Gql434hyN94OgmAZDZD', NULL, '[]', '104847742506896', 'EAAWkSWhrqg8BAArTaZC8ZCv9x78locQYsA41aX6cvHypCffazPZCXhIod6baUzFTuk1ylcCsO2ZAMzWZCSVFzVfbvQA5ikD1E0o8S8HgPmu8FjqIXs6ScBZBhXOlCLGoYIzzFaJo3ihcwIsLAZBesqjRfW0FLY2N6vFwloAKPuzIncI8GNVwdpe', '620f7d8ebf8f228f15b43610147af862c94c6b7d8519123afbb5a2ff271c7688', '2023-01-13 17:44:58'),
(2, 3, NULL, NULL, NULL, NULL, '[]', NULL, NULL, NULL, NULL),
(14, 15, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(15, 16, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(16, 17, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(17, 18, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(18, 19, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(19, 20, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(20, 21, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(21, 22, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(22, 23, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(23, 24, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(24, 25, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(25, 26, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(26, 27, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(27, 28, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(28, 29, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(29, 30, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(30, 31, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(31, 32, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(32, 33, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(33, 34, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(34, 35, NULL, NULL, 'Bearer EAAHNcKTC39QBAMXtloXqZCdfZBP0JZBomsWV5D4fcsJH72KGJBoUgbtIno2QaPSWUQTvhTaHwkZB2T9xNeeiXmP6ZBuN3dGBu1KPJmGZBaub8YFiSlnRdlF6NZAINEJQtzot7KCxkd4X4VcCWAa4k107W9ISPXNo5w9JsPI7OAWIzdNGRV13N04SGMU9DBRQTClUq8vaiO98mJQwpZC4yaZAuj1VABh5ZCIrukA1f9QNxIHgZDZD', NULL, '[]', '111607421447429', 'EAAHNcKTC39QBAHMzd6CHzaBeIKfgdwvsbZADUznMZAdBfYU2g8fZByWKyEsGihyyw8U0RYvucipOBsrCbUKsNFQH8cFGKMy0DEhyldgvfGXFEPOC4pXWFdlTxEEccZAMjMXmplGFPxIDBO4P9G2cWm2Vy9FUSx070mjcRkmw3yvxavU17DAH', 'd362dc96ba3cdef4148092734f6b0ff1aadc58dbaea3037a79ca1e95a19e30c1', '2022-02-15 19:56:20'),
(35, 36, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(36, 37, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(37, 38, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(38, 39, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(39, 40, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(40, 41, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(41, 42, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(42, 43, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(43, 44, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(44, 45, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(45, 46, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(46, 47, NULL, NULL, 'Bearer EAAF9Hbjp3CoBAKitlQ5CdiZA9cI4Rg3nLCj2u2lN43puoB8t7zW8ez5XFb3uZBZC9ZBROZCDi6xgifRwu5AWaZBhkhgaFGKASSrtdDZAtI2H93E7NKxFCLM1FSdeX7zX6XmxzcPLEivSxk9qj4XX3xnpvJPxgpwGfZA1mNeqF8qrqstitPLtT0aBAr2i3yqctQccx1f6B4hyBYuRpAcxIxXp6Tx2WuStKeZCZCehmfbMmAswZDZD', NULL, '[]', '103142865535027', 'EAAF9Hbjp3CoBAKqDLcDkFCj4LqwtqU0jlW8ZCZCQqocOLk7RXZCPV4SVOvuo06IEDnfwM8eKiRSWRKvPgNPztCE4QZAWXSJdT2ZBYHqj3cZBkohGuTmqsqdjJU5x3xzL5XM29NMGR15EbDNkSOpP8W3r3lKX8NTGXv2d5Oo5Ps1jS67Hcz6BqZB', 'a33486edc96fff150f29dda93348c7524bd7aad41fcab3cac905fb72ad5d09f9', '2022-03-04 17:31:36'),
(47, 48, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(48, 49, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(49, 50, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(50, 53, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(51, 54, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(52, 55, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(53, 56, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(54, 57, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(55, 58, NULL, NULL, 'Bearer EAAOH8ZAvWuloBAJOFpxJkDthBw5CQO09Vpa3whg3PcQZAoxiL1TMGM8iIE4LRkmZBZCyD0fnSiHKfmp41BJOEzZCiGUwUo6kXZANbHTWY9BUsjq4oeKCgAhHhApHlaIbZAbwoKgxnXB2VHU99rCHfrodX2DwJlQJdjqhbsd5wovtHnfAmvebSj25PB2KtX8uaOKXdsL8HmvLVYj1XkK8i1A7W712SfQDdzJ5jAs7F5IvgZDZD', NULL, '[]', '100228219262831', 'EAAOH8ZAvWuloBAAmHFFZC9FyLKa4vtLuUNc5gOxr9gZAegyAlBdZBjjWAQvtwRhe736T3IYHZA4UDPKRKmn3z94Qpp5MGA2ZAvuHH8kpg7QyBNFuZBfTeVgpgufZCFWTuv0mPg49uGLrUiQRJHLBadWEVAKjK2ZAdw41HNOiZBbWa5GGPcLEROrVVC', 'aeb402b2741b01c8a18c8ac9c7052d7b82e190512cc9d68970200b907a7b2907', '2022-05-31 08:43:32'),
(56, 59, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(57, 60, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(62, 65, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(63, 66, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(64, 67, NULL, NULL, 'Bearer EAAOH8ZAvWuloBAF0ozZBUoavm5SJPps6YfDZCagU0DqfUZBmkeVbCA5imJ86ErZB3dLmOAnPEs9Qq4O5HlRSqVs3gpWUgysYXTB72VNC4qeZCfjVhYSMXJvu1tmJ47UB7Oq2H9Jc3CHTaR8TnKMvdfhzK6pQ9xcHsUpyPs2x4P9RKvgMBi4nZCQXb7rqwcgU48t1ivSZByMvAnTswnbWbZA1BV9KayTnm7RGFPqDCsP1LzAZDZD', NULL, '[]', '109265244859583', 'EAAOH8ZAvWuloBAG7Bv8XtYbcYXN2lzudPX4XZA0LS1wbMdZB6RhYJXpFHEKjyIZAZBERCp7mHJCvhDdGxp3ZC5ZCjnw8yu3kKfZCcpD2rr6wmXhRyDxw8IIJTi4kvwZBXZCxd2iFhzcjaRnpIUHZBgJohxOTv49k2RukT5TzHTwz0VRHWWZCABxfpEUa', 'ff31123ca8aa204aab8740ffa939495263785853a3f84352276f8bc1390da1e2', '2022-11-29 18:22:07'),
(65, 68, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(66, 69, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(67, 70, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(68, 71, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(69, 72, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(70, 73, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(71, 74, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(72, 75, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(73, 76, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(74, 77, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(75, 78, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(76, 79, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(77, 80, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(78, 81, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(79, 82, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(80, 83, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(81, 84, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(82, 85, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(83, 86, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(84, 87, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(85, 88, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(86, 89, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(87, 90, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(88, 91, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(89, 92, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(90, 93, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(91, 94, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(92, 95, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(93, 96, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(94, 97, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(95, 98, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(96, 99, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(97, 100, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(98, 101, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(99, 102, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(100, 103, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(101, 104, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(102, 105, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(103, 106, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(104, 107, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(105, 108, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(106, 109, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(107, 110, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(108, 111, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(109, 112, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(110, 113, NULL, NULL, 'Bearer EAAHYwLcRpcwBAKG8fxacuR75vzwpOnBgUVgWL3DCL4O4XpO4cjNfgOxHrZB7YJ8GnngumXVY5ZC5GRzr5knbJQFKRCnAD6g3MDUGxjzkc94kRBIO4JO3vB2HkeK0rUX5HaetuMEkF89DAM2rBd9KZCzGeXNoZBUU23WEYDm6HxJXUI0ZBGWLxgB8kJMAnutclJdQr9sVkN8hZCAWCPGV2QQ72kWIWEmbLQTuUkFrlDmgZDZD', NULL, '[]', '109265244859583', 'EAAHYwLcRpcwBAJKthWrfX1oLxZB16hRNgzHOZCCF3BsMCnakaSEMtwHFO1F10ySvuv1rw5OpuEyBfDXSHBdVX3VmHcPBfg6vAhXAGWi1jQN1CsGZAB00x6Bx0rZBOzECI5nW55G1PAisHXtYdS4tYKOpIt3HOjm8ZBZBmkQaegP1Eb4kBdmp0h', 'b59beef86137ab0a2873d62fa0f731c7a0579b73df7e6ff148aa3dd2d890e32d', '2022-11-13 17:14:04'),
(111, 114, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL),
(112, 115, '', '', NULL, NULL, '[]', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `file1`
--

CREATE TABLE `file1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `file1`
--

INSERT INTO `file1` (`id`, `user_id`, `data`) VALUES
(1, 2, '[\"\\u00ff\"]'),
(2, 3, '[\"\\u00ff\"]'),
(14, 15, '[\"\\u00ff\"]'),
(15, 16, '[\"\\u00ff\"]'),
(16, 17, '[\"\\u00ff\"]'),
(17, 18, '[\"\\u00ff\"]'),
(18, 19, '[\"\\u00ff\"]'),
(19, 20, '[\"\\u00ff\"]'),
(20, 21, '[\"\\u00ff\"]'),
(21, 22, '[\"\\u00ff\"]'),
(22, 23, '[\"\\u00ff\"]'),
(23, 24, '[\"\\u00ff\"]'),
(24, 25, '[\"\\u00ff\"]'),
(25, 26, '[\"\\u00ff\"]'),
(26, 27, '[\"\\u00ff\"]'),
(27, 28, '[\"\\u00ff\"]'),
(28, 29, '[\"\\u00ff\"]'),
(29, 30, '[\"\\u00ff\"]'),
(30, 31, '[\"\\u00ff\"]'),
(31, 32, '[\"\\u00ff\"]'),
(32, 33, '[\"\\u00ff\"]'),
(33, 34, '[\"\\u00ff\"]'),
(34, 35, '[\"\\u00ff\"]'),
(35, 36, '[\"\\u00ff\"]'),
(36, 37, '[\"\\u00ff\"]'),
(37, 38, '[\"\\u00ff\"]'),
(38, 39, '[\"\\u00ff\"]'),
(39, 40, '[\"\\u00ff\"]'),
(40, 41, '[\"\\u00ff\"]'),
(41, 42, '[\"\\u00ff\"]'),
(42, 43, '[\"\\u00ff\"]'),
(43, 44, '[\"\\u00ff\"]'),
(44, 45, '[\"\\u00ff\"]'),
(45, 46, '[\"\\u00ff\"]'),
(46, 47, '[\"\\u00ff\"]'),
(47, 48, '[\"\\u00ff\"]'),
(48, 49, '[\"\\u00ff\"]'),
(49, 50, '[\"\\u00ff\"]'),
(50, 53, '[\"\\u00ff\"]'),
(51, 54, '[\"\\u00ff\"]'),
(52, 55, '[\"\\u00ff\"]'),
(53, 56, '[\"\\u00ff\"]'),
(54, 57, '[\"\\u00ff\"]'),
(55, 58, '[\"\\u00ff\"]'),
(56, 59, '[\"\\u00ff\"]'),
(57, 60, '[\"\\u00ff\"]'),
(59, 65, '[\"\\u00ff\"]'),
(60, 66, '[\"\\u00ff\"]'),
(61, 67, '[\"\\u00ff\"]'),
(62, 68, '[\"\\u00ff\"]'),
(63, 69, '[\"\\u00ff\"]'),
(64, 70, '[\"\\u00ff\"]'),
(65, 71, '[\"\\u00ff\"]'),
(66, 72, '[\"\\u00ff\"]'),
(67, 73, '[\"\\u00ff\"]'),
(68, 74, '[\"\\u00ff\"]'),
(69, 75, '[\"\\u00ff\"]'),
(70, 76, '[\"\\u00ff\"]'),
(71, 77, '[\"\\u00ff\"]'),
(72, 78, '[\"\\u00ff\"]'),
(73, 79, '[\"\\u00ff\"]'),
(74, 80, '[\"\\u00ff\"]'),
(75, 81, '[\"\\u00ff\"]'),
(76, 82, '[\"\\u00ff\"]'),
(77, 83, '[\"\\u00ff\"]'),
(78, 84, '[\"\\u00ff\"]'),
(79, 85, '[\"\\u00ff\"]'),
(80, 86, '[\"\\u00ff\"]'),
(81, 87, '[\"\\u00ff\"]'),
(82, 88, '[\"\\u00ff\"]'),
(83, 89, '[\"\\u00ff\"]'),
(84, 90, '[\"\\u00ff\"]'),
(85, 91, '[\"\\u00ff\"]'),
(86, 92, '[\"\\u00ff\"]'),
(87, 93, '[\"\\u00ff\"]'),
(88, 94, '[\"\\u00ff\"]'),
(89, 95, '[\"\\u00ff\"]'),
(90, 96, '[\"\\u00ff\"]'),
(91, 97, '[\"\\u00ff\"]'),
(92, 98, '[\"\\u00ff\"]'),
(93, 99, '[\"\\u00ff\"]'),
(94, 100, '[\"\\u00ff\"]'),
(95, 101, '[\"\\u00ff\"]'),
(96, 102, '[\"\\u00ff\"]'),
(97, 103, '[\"\\u00ff\"]'),
(98, 104, '[\"\\u00ff\"]'),
(99, 105, '[\"\\u00ff\"]'),
(100, 106, '[]'),
(101, 107, '[]'),
(102, 108, '[\"\\u00ff\"]'),
(103, 109, '[\"\\u00ff\"]'),
(104, 110, '[\"\\u00ff\"]'),
(105, 111, '[\"\\u00ff\"]'),
(106, 112, '[\"\\u00ff\"]'),
(107, 113, '[\"\\u00ff\"]'),
(108, 114, '[\"\\u00ff\"]'),
(109, 115, '[\"\\u00ff\"]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekcje` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sekcje`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `home`
--

INSERT INTO `home` (`id`, `user_id`, `data`, `sekcje`) VALUES
(3, 29, 'ÿ', '[]'),
(4, 30, 'ÿ', '[]'),
(5, 31, 'ÿ', '[]'),
(6, 32, 'ÿ', '[]'),
(7, 33, 'ÿ', '[]'),
(8, 2, 'ÿ', '[]'),
(9, 34, 'ÿ', '[]'),
(10, 35, 'ÿ', '[]'),
(11, 36, 'ÿ', '[]'),
(12, 37, 'ÿ', '[]'),
(13, 38, 'ÿ', '[]'),
(14, 39, 'ÿ', '[]'),
(15, 40, 'ÿ', '[]'),
(16, 41, 'ÿ', '[]'),
(17, 42, 'ÿ', '[]'),
(18, 43, 'ÿ', '[]'),
(19, 44, 'ÿ', '[]'),
(20, 45, 'ÿ', '[]'),
(21, 46, 'ÿ', '[]'),
(22, 47, 'ÿ', '[]'),
(23, 48, 'ÿ', '[]'),
(24, 49, 'ÿ', '[]'),
(25, 50, 'ÿ', '[]'),
(26, 53, 'ÿ', '[]'),
(27, 54, 'ÿ', '[]'),
(30, 55, 'ÿ', '[]'),
(34, 56, 'ÿ', '[]'),
(35, 57, 'ÿ', '[]'),
(37, 59, 'ÿ', '[]'),
(38, 60, 'ÿ', '[]'),
(45, 58, 'ÿ', '[\"\\u00ff\"]'),
(47, 65, 'ÿ', '[]'),
(48, 66, 'ÿ', '[]'),
(49, 67, 'ÿ', '[\"\\u00ff\"]'),
(50, 68, 'ÿ', '[]'),
(51, 69, 'ÿ', '[]'),
(52, 70, 'ÿ', '[]'),
(53, 71, 'ÿ', '[]'),
(54, 72, 'ÿ', '[]'),
(55, 73, 'ÿ', '[\"\\u00ff\"]'),
(56, 74, 'ÿ', '[]'),
(57, 75, 'ÿ', '[]'),
(58, 76, 'ÿ', '[]'),
(59, 77, 'ÿ', '[\"\\u00ff\"]'),
(60, 78, 'ÿ', '[]'),
(61, 79, 'ÿ', '[]'),
(62, 80, 'ÿ', '[]'),
(73, 81, 'ÿ', '[\"\\u00ff\"]'),
(74, 82, 'ÿ', '[]'),
(75, 83, 'ÿ', '[\"\\u00ff\"]'),
(76, 84, 'ÿ', '[]'),
(77, 85, 'ÿ', '[]'),
(78, 86, '<h1>Strona internetowa</h1><div><div style=\"position: relative;\"><div style=\"position: absolute; top: 0px; left: 0px;\"><img class=\"img-fluid\" style=\"width: 50px;\" src=\"https://api.symetryczny.pl/picture2/success00\" /></div></div><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/glownastr\" /></div>', '[]'),
(79, 87, '<h1>Strona internetowa</h1><div><div style=\"position: relative;\"><div style=\"position: absolute; top: 0px; left: 0px;\"><img class=\"img-fluid\" style=\"width: 50px;\" src=\"https://api.symetryczny.pl/picture2/success00\" /></div></div><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/glownastr\" /></div>', '[]'),
(80, 88, 'ÿ', '[]'),
(81, 89, 'ÿ', '[]'),
(82, 90, 'ÿ', '[]'),
(83, 91, 'ÿ', '[]'),
(84, 92, 'ÿ', '[]'),
(85, 93, 'ÿ', '[\"\\u00ff\"]'),
(86, 94, 'ÿ', '[]'),
(87, 95, 'ÿ', '[]'),
(88, 96, 'ÿ', '[]'),
(89, 97, 'ÿ', '[]'),
(90, 98, 'ÿ', '[]'),
(91, 99, 'ÿ', '[]'),
(92, 100, 'ÿ', '[]'),
(93, 101, 'ÿ', '[\"\\u00ff\"]'),
(94, 102, 'ÿ', '[\"\\u00ff\"]'),
(95, 103, 'ÿ', '[\"\\u00ff\"]'),
(96, 104, 'ÿ', '[]'),
(97, 105, 'ÿ', '[]'),
(98, 106, '<h1>Strona internetowa</h1><div><div style=\"position: relative;\"><div style=\"position: absolute; top: 0px; left: 0px;\"><img class=\"img-fluid\" style=\"width: 50px;\" src=\"https://api.symetryczny.pl/picture2/success00\" /></div></div><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/glownastr\" /></div>', '[]'),
(99, 107, '<h1>Strona internetowa</h1><div><div style=\"position: relative;\"><div style=\"position: absolute; top: 0px; left: 0px;\"><img class=\"img-fluid\" style=\"width: 50px;\" src=\"https://api.symetryczny.pl/picture2/success00\" /></div></div><img class=\"img-fluid\" src=\"https://api.symetryczny.pl/picture2/glownastr\" /></div>', '[]'),
(100, 108, 'ÿ', '[]'),
(101, 109, 'ÿ', '[\"\\u00ff\"]'),
(102, 110, 'ÿ', '[]'),
(103, 111, 'ÿ', '[\"\\u00ff\"]'),
(104, 112, 'ÿ', '[]'),
(105, 113, 'ÿ', '[\"\\u00ff\"]'),
(106, 114, 'ÿ', '[\"\\u00ff\"]'),
(107, 115, 'ÿ', '[\"\\u00ff\"]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `hotpay`
--

CREATE TABLE `hotpay` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `identyfikator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klucz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `hotpay`
--

INSERT INTO `hotpay` (`id`, `user_id`, `identyfikator`, `klucz`) VALUES
(1, 2, 'cVNYU0FFeTdVQVJ0M2txYkpta0ZjdTZLL0U1YTVMWVFnMHlWWW5zNjV2dz0,', 'test1234'),
(2, 3, '', ''),
(14, 15, '', ''),
(15, 16, '', ''),
(16, 17, '', ''),
(17, 18, '', ''),
(18, 19, '', ''),
(19, 20, '', ''),
(20, 21, '', ''),
(21, 22, '', ''),
(22, 23, '', ''),
(23, 24, '', ''),
(24, 25, '', ''),
(25, 26, '', ''),
(26, 27, '', ''),
(27, 28, '', ''),
(28, 29, '', ''),
(29, 30, '', ''),
(30, 31, '', ''),
(31, 32, '', ''),
(32, 33, '', ''),
(33, 34, '', ''),
(34, 35, '', ''),
(35, 36, '', ''),
(36, 37, '', ''),
(37, 38, '', ''),
(38, 39, '', ''),
(39, 40, '', ''),
(40, 41, 'fdsfdsf', 'dfsdf'),
(41, 42, '', ''),
(42, 43, '', ''),
(43, 44, 'fgdfg', 'fgdfgfd'),
(44, 45, '', ''),
(45, 46, '', ''),
(46, 47, '', ''),
(47, 48, '', ''),
(48, 49, '', ''),
(49, 50, '', ''),
(50, 53, '', ''),
(51, 54, '', ''),
(52, 55, '', ''),
(53, 56, '', ''),
(54, 57, 'cVNYU0FFeTdVQVJ0M2txYkpta0ZjdTZLL0U1YTVMWVFnMHlWWW5zNjV2dz0,', 'test1234'),
(55, 58, '', ''),
(56, 59, '', ''),
(57, 60, '', ''),
(58, 65, '', ''),
(59, 66, '', ''),
(60, 67, '', ''),
(61, 68, '', ''),
(62, 69, '', ''),
(63, 70, '', ''),
(64, 71, '', ''),
(65, 72, '', ''),
(66, 73, '', ''),
(67, 74, '', ''),
(68, 75, '', ''),
(69, 76, '', ''),
(70, 77, '', ''),
(71, 78, '', ''),
(72, 79, '', ''),
(73, 80, '', ''),
(74, 81, '', ''),
(75, 82, '', ''),
(76, 83, '', ''),
(77, 84, '', ''),
(78, 85, '', ''),
(79, 86, '', ''),
(80, 87, '', ''),
(81, 88, '', ''),
(82, 89, '', ''),
(83, 90, '', ''),
(84, 91, '', ''),
(85, 92, '', ''),
(86, 93, '', ''),
(87, 94, '', ''),
(88, 95, '', ''),
(89, 96, '', ''),
(90, 97, '', ''),
(91, 98, '', ''),
(92, 99, '', ''),
(93, 100, '', ''),
(94, 101, '', ''),
(95, 102, '', ''),
(96, 103, '', ''),
(97, 104, '', ''),
(98, 105, '', ''),
(99, 106, '', ''),
(100, 107, '', ''),
(101, 108, '', ''),
(102, 109, '', ''),
(103, 110, '', ''),
(104, 111, '', ''),
(105, 112, '', ''),
(106, 113, '', ''),
(107, 114, '', ''),
(108, 115, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu1`
--

CREATE TABLE `menu1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `menu` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `display` longtext DEFAULT NULL COMMENT '(DC2Type:json)',
  `naglowek1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `naglowek2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `javascript` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `menu1`
--

INSERT INTO `menu1` (`id`, `user_id`, `menu`, `display`, `naglowek1`, `naglowek2`, `javascript`, `css`) VALUES
(1, 2, '[\"\\u00ff\"]', '[true,true,false]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(2, 3, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(14, 15, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(15, 16, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(16, 17, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(17, 18, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(18, 19, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(19, 20, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(20, 21, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(21, 22, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(22, 23, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(23, 24, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(24, 25, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(25, 26, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(26, 27, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(27, 28, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(28, 29, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(29, 30, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(30, 31, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(31, 32, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(32, 33, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(33, 34, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(34, 35, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(35, 36, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(36, 37, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(37, 38, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(38, 39, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(39, 40, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(40, 41, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(41, 42, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(42, 43, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(43, 44, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(44, 45, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(45, 46, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(46, 47, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(47, 48, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(48, 49, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(49, 50, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(50, 53, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(51, 54, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(52, 55, '[\"\\u00ff\"]', '[false,false,false]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(53, 56, '[\"\\u00ff\"]', '[false,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(54, 57, '[\"\\u00ff\"]', '[false,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(55, 58, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(56, 59, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(57, 60, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(63, 65, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(64, 66, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(65, 67, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(66, 68, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(67, 69, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(68, 70, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(69, 71, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(70, 72, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(71, 73, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(72, 74, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(73, 75, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(74, 76, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(75, 77, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(76, 78, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(77, 79, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(78, 80, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(79, 81, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(80, 82, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(81, 83, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(82, 84, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(83, 85, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(84, 86, '[\"\\u00ff\"]', '[true,true,true]', '', '', '', 'https://api.symetryczny.pl/picture2/fe914a9517c5b5603bda202c89ee1480'),
(85, 87, '[\"\\u00ff\"]', '[true,true,true]', '', '', '', 'https://api.symetryczny.pl/picture2/fe914a9517c5b5603bda202c89ee1480'),
(86, 88, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(87, 89, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(88, 90, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(89, 91, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(90, 92, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(91, 93, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(92, 94, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(93, 95, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(94, 96, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(95, 97, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(96, 98, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(97, 99, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(98, 100, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(99, 101, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(100, 102, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(101, 103, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(102, 104, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(103, 105, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(104, 106, '[\"\\u00ff\"]', '[true,true,true]', '', 'ÿ', 'ÿ', 'ÿ'),
(105, 107, '[\"\\u00ff\"]', '[true,true,true]', '', 'ÿ', 'ÿ', 'ÿ'),
(106, 108, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(107, 109, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(108, 110, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(109, 111, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(110, 112, '[\"\\u00ff\"]', '[true,true,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(111, 113, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(112, 114, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ'),
(113, 115, '[\"\\u00ff\"]', '[true,false,true]', 'ÿ', 'ÿ', 'ÿ', 'ÿ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `naglowek1`
--

CREATE TABLE `naglowek1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `naglowek` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `seo` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `naglowek1`
--

INSERT INTO `naglowek1` (`id`, `user_id`, `naglowek`, `seo`) VALUES
(1, 2, '{\"naglowek1\":\"symetryczny.pl\"}', '{\"title1\":\"Kreator stron internetowych\",\"description1\":\"\\u0141atwo utw\\u00f3rz nowoczesne strony internetowe. Korzystaj z narz\\u0119dzi do rozwoju i promocji.\"}'),
(2, 3, '[]', '[]'),
(14, 15, '[]', '[]'),
(15, 16, '[]', '[]'),
(16, 17, '[]', '[]'),
(17, 18, '[]', '[]'),
(18, 19, '[]', '[]'),
(19, 20, '[]', '[]'),
(20, 21, '[]', '[]'),
(21, 22, '[]', '[]'),
(22, 23, '[]', '[]'),
(23, 24, '[]', '[]'),
(24, 25, '[]', '[]'),
(25, 26, '[]', '[]'),
(26, 27, '[]', '[]'),
(27, 28, '[]', '[]'),
(28, 29, '[]', '[]'),
(29, 30, '[]', '[]'),
(30, 31, '[]', '[]'),
(31, 32, '[]', '[]'),
(32, 33, '[]', '[]'),
(33, 34, '[]', '[]'),
(34, 35, '[]', '[]'),
(35, 36, '[]', '[]'),
(36, 37, '[]', '[]'),
(37, 38, '[]', '[]'),
(38, 39, '[]', '[]'),
(39, 40, '[]', '[]'),
(40, 41, '[]', '[]'),
(41, 42, '[]', '[]'),
(42, 43, '[]', '[]'),
(43, 44, '[]', '[]'),
(44, 45, '[]', '[]'),
(45, 46, '[]', '[]'),
(46, 47, '{\"naglowek1\":\"Test 36\"}', '[]'),
(47, 48, '[]', '[]'),
(48, 49, '[]', '[]'),
(49, 50, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(50, 53, '[]', '[]'),
(51, 54, '[]', '[]'),
(52, 55, '[]', '[]'),
(53, 56, '[]', '[]'),
(54, 57, '[]', '[]'),
(55, 58, '{\"naglowek1\":\"\"}', '[]'),
(56, 59, '[]', '[]'),
(57, 60, '[]', '[]'),
(63, 65, '{\"naglowek1\":\"symetryczny.pl\"}', '{\"title1\":\"Kreator stron internetowych\",\"description1\":\"\\u0141atwo utw\\u00f3rz nowoczesne strony internetowe. Korzystaj z narz\\u0119dzi do rozwoju i promocji.\"}'),
(64, 66, '[]', '[]'),
(65, 67, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(66, 68, '[]', '[]'),
(67, 69, '[]', '[]'),
(68, 70, '[]', '[]'),
(69, 71, '[]', '[]'),
(70, 72, '[]', '[]'),
(71, 73, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(72, 74, '[]', '[]'),
(73, 75, '[]', '[]'),
(74, 76, '[]', '[]'),
(75, 77, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(76, 78, '[]', '[]'),
(77, 79, '[]', '[]'),
(78, 80, '[]', '[]'),
(79, 81, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(80, 82, '[]', '[]'),
(81, 83, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(82, 84, '[]', '[]'),
(83, 85, '[]', '[]'),
(84, 86, '[]', '[]'),
(85, 87, '[]', '[]'),
(86, 88, '[]', '[]'),
(87, 89, '[]', '[]'),
(88, 90, '[]', '[]'),
(89, 91, '[]', '[]'),
(90, 92, '[]', '[]'),
(91, 93, '[]', '[]'),
(92, 94, '[]', '[]'),
(93, 95, '[]', '[]'),
(94, 96, '[]', '[]'),
(95, 97, '[]', '[]'),
(96, 98, '[]', '[]'),
(97, 99, '[]', '[]'),
(98, 100, '[]', '[]'),
(99, 101, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(100, 102, '[]', '[]'),
(101, 103, '{\"naglowek1\":\"1\"}', '{\"title1\":\"2\",\"description1\":\"3\"}'),
(102, 104, '[]', '[]'),
(103, 105, '{\"naglowek1\":\"4345435435\"}', '{\"title1\":\"44\",\"description1\":\"11\"}'),
(104, 106, '[]', '[]'),
(105, 107, '[]', '[]'),
(106, 108, '[]', '[]'),
(107, 109, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(108, 110, '[]', '[]'),
(109, 111, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(110, 112, '[]', '[]'),
(111, 113, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(112, 114, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]'),
(113, 115, '{\"naglowek1\":\"Nag\\u0142\\u00f3wek\"}', '[]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth2_access_token`
--

CREATE TABLE `oauth2_access_token` (
  `identifier` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_identifier` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:oauth2_scope)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth2_access_token`
--

INSERT INTO `oauth2_access_token` (`identifier`, `client`, `expiry`, `user_identifier`, `scopes`, `revoked`) VALUES
('000fc91f53a9f6dead7ecaa48030443ef37677511222a97913f49dd0de177ada8d11fedf4cdf1dc8', 'example_id', '2023-01-18 20:00:40', 'test44', 'read write', 0),
('008782cb48b993969c143ce1cf17107a020c3288fd88148497864d42c2bd9df0715e67534ffa71d5', 'example_id', '2022-12-03 19:13:20', 'test44', 'read write', 0),
('0306b0a53fc917b998f95b0f6c939b97e4c40169540a17dc2620e1dcec0d3d51f56c0505b9ecde47', 'example_id', '2023-01-18 17:46:56', 'test45', 'read write', 0),
('04547301abc1ff6d9c6aa8965933ab2d959cb3d08c4c5d2980264efe581b5d1c435aa1bc4d05965c', 'example_id', '2022-12-28 10:48:17', 'template2', 'read write', 0),
('06bf80b0cbfa1e2ee7ab12460f9e5c9920dc8a872ab46614914be9434dffe7440f0f592e5c280af8', 'example_id', '2022-12-07 17:20:37', 'template2', 'read write', 0),
('06c7d4202d18f56f56cf1aa8437aa230eba9a03cd565be92e315cbc7d1a7a2e7647d0218f7861caa', 'example_id', '2023-01-18 14:23:33', 'test44', 'read write', 0),
('07601d7dfe119a56ed789f3c0d4a96888293175f2b48f3af71b7e7366c5e28a5d72a78ec25da2faa', 'example_id', '2023-01-18 08:45:36', 'test96', 'read write', 0),
('08531548848b4c9385ba4758cb071ace39b45a12413fb6e2e46780a228dd8d394fe6eecaa8dd97ba', 'example_id', '2022-12-03 19:45:23', 'template2', 'read write', 0),
('09754adfb3ade3ee7dad82b1a83dc0517fefd3abf1ff18128d223b60c82aa844bdadfcaa2aa02058', 'example_id', '2022-11-16 14:40:10', 'test94', 'read write', 0),
('0aec7ae1458e1cd2e4ef583a4e75e00a91b10128b30b8740420cd8768cfd46f7390e678a783be920', 'example_id', '2023-01-18 17:59:32', 'test44', 'read write', 0),
('0b4e136b47c4d9658aee0716fe8e5fef0c02c292d7227258c988d99a71cffd992fb832907701c3c0', 'example_id', '2023-01-17 16:15:49', 'test96', 'read write', 0),
('0baa2b00d34f6de802b1effe296b831352a1c276458ca4682b8c7c141d31797e417cf9c8c08b70b7', 'example_id', '2023-01-18 14:33:04', 'test44', 'read write', 0),
('0d6de449babf49fe0607dffe73f82c7219ded6348d4864e5048cf7777b872c7fc61d5273ef6e00f4', 'example_id', '2022-11-23 17:09:59', 'test95', 'read write', 0),
('0da4e0438a3bc873a6023824da3a71721183da098c2c4c08df870247e819b4660e5a03b59c898215', 'example_id', '2022-12-07 16:04:53', 'template2', 'read write', 0),
('0fe91559c775df23b6a29a07ebd7143f13a7573b1b4ba7d6355fedd8b7da7149d4e38d836b0d891c', 'example_id', '2022-12-04 05:26:24', 'template2', 'read write', 0),
('10374b5cbd0b9c046f6e890f9ad1ea5691d0d5764a5b467b70d928328b04bd88fc1fe2acba14e067', 'example_id', '2022-12-04 18:45:50', 'test42', 'read write', 0),
('1068815f65773077daa0705201e07b2ca89e729d4d19b9efc49bf293db9f95fd6207f63c0719181c', 'example_id', '2023-01-14 21:17:31', 'test96', 'read write', 0),
('11a1dbab964d35e1411c45905742834c8b6028bbc0953257c607cab7f8d8793d14e88e724ac65db9', 'example_id', '2022-12-04 06:15:13', 'template2', 'read write', 0),
('12fdd762d12df6379bca4e22532434c5be4ca403966e3f27284cbf659c0bd2bfc5ed258c174d4bd1', 'example_id', '2023-01-18 14:25:52', 'test44', 'read write', 0),
('137de26a2e57f6ca67a3f32cd662ad7095a4f266119c96fa21e522d91df281f68e65a7e99651cb0b', 'example_id', '2023-01-18 15:18:07', 'test44', 'read write', 0),
('15ebe98c5b64863e88d04cef7eea43f8e163f0aeef1b7ee484c3ea29da3dd852008e11cde2655655', 'example_id', '2022-12-03 19:15:55', 'test43', 'read write', 0),
('15ece37314e1ddcb81ce42a0aac67f0e67867cea6c1f5e1a8d2cca3390b4d323c778da9866d61918', 'example_id', '2022-12-07 13:18:37', 'admin', 'read write', 0),
('16b9930b480afaa1e9a31e6f04e223cd0cadb63d37cfa1bcda6dd475a38a743fc17f05c4047278de', 'example_id', '2023-01-19 17:15:24', 'test44', 'read write', 0),
('19d4eac3d4a169e1ab2b8a49c5f352509669dfbaf1278a0e4d82d00c28fdaefd2c16dae4f038ff0f', 'example_id', '2022-12-05 05:27:56', 'test44', 'read write', 0),
('1af235ccebcee842f32179d9183ac8063bde17510c68616a77fae9636f08455e7a1a79a414f21834', 'example_id', '2023-01-22 17:17:22', 'admin', 'read write', 0),
('1af507064a8622cd5d297b269f6976e84555f8d38d8076bfa6f63a8c2539f2e59ddbca94c3cc0099', 'example_id', '2022-12-07 19:14:29', 'test44', 'read write', 0),
('1b1423a1855832b668aeef151ba40dcb8b1e8bc3c271496d9bbb318e48ac358657fde5ff09fc9b40', 'example_id', '2022-12-13 21:26:14', 'template2', 'read write', 0),
('1d815256b7a22b1922ce7061c3a43f08f11e3cbcc8a3eac46ca6ad081b118ac30da0d8ed1c4e9a5c', 'example_id', '2022-12-13 18:37:22', 'template2', 'read write', 0),
('1efa5d8c1ecf5c719f0319ad7e10db1dbd9152e7fbc61133434840afa38e2f9f97145ccfff6077c8', 'example_id', '2023-01-18 09:17:01', 'template2', 'read write', 0),
('1fd6be5b2a54f2b98e484154daf8739c9602a122ad63638a100d617d502f64f4b239eb46f1140d9d', 'example_id', '2022-12-03 19:06:53', 'template2', 'read write', 0),
('20803b3b468d3e6e7ff0c17699aee4aa2edb305d861e2ae808ff3c7209f4562d32a053c0540fafa8', 'example_id', '2023-01-03 10:37:20', 'test96', 'read write', 0),
('23fe4a07b976b234555acf491522d36e47e3fae026a94311fc507af438af5e137f789b2f771c2e27', 'example_id', '2023-01-02 10:54:13', 'test96', 'read write', 0),
('24581e0a8f2d2a8e0cd15ce72ee60e0e7a68ac1a54aaa856963ba1481113b120bbb8d04acb4f3d71', 'example_id', '2022-12-07 13:21:43', 'admin', 'read write', 0),
('24b66ff8de120d2549e817244691e11d82894bc8bb51f1842beb97cdf7c68c80930df0b4d1ef7810', 'example_id', '2023-01-18 17:42:26', 'test44', 'read write', 0),
('25331844d9da5dd9c1f590389fae7c34fc914a00ea881b54612dae6c155f02f25e0159079c672dea', 'example_id', '2022-12-09 19:18:48', 'template2', 'read write', 0),
('275943f0cbd234aff206ec03635499e0d2df39a1b567785996ee2addebf82693c2be72b89fb1ff75', 'example_id', '2022-12-03 20:32:02', 'template2', 'read write', 0),
('27b81f32d9343ead941145ca29de6c5a521e82e0c1828fe55db62504c01661aa2c7d672c8875894a', 'example_id', '2023-01-18 18:49:41', 'test44', 'read write', 0),
('2936dd23ac79464d364409c7dc4408031e76638b6f0eb13f8be9ebec1096f5329468954151f987ea', 'example_id', '2023-01-01 13:22:57', 'test96', 'read write', 0),
('2bcc8b10d93c9164325fda9f9916442961a12e438c744079b4457ee4172a2e167a69e34518151c65', 'example_id', '2022-11-23 17:00:42', 'template2', 'read write', 0),
('2ce901524c1c5c05ec053a8a3c376a737f152e3e119155ab0c3626a7aab4b1b328ccc2876586d741', 'example_id', '2023-02-01 15:17:33', 'template2', 'read write', 0),
('2e2d2fe5a2213a51d74bab63c7b47a1bc3ee03126198334873077a6b7d0ea67801adbc65e844e628', 'example_id', '2022-12-06 17:15:57', 'admin', 'read write', 0),
('2e7941d410e2f2f70c58508b440d89a6559b05b692ffc369df04b2b2a684917196152e38386ed5d4', 'example_id', '2023-01-18 19:40:02', 'test44', 'read write', 0),
('304451747f62d6d666a4b7b17d4a695fb2d7f511ebd22fc74f9ea7cd759a344e583e6a61250ce546', 'example_id', '2022-12-04 18:47:34', 'test42', 'read write', 0),
('30e9aac80aea8223aeb72c46efc73a7c5dced413e356b228bdee8bd79c9c808697d213a1839ba14c', 'example_id', '2023-01-09 14:40:39', 'test46', 'read write', 0),
('31a3583ceb12ec4ee6caba8bbd63b371840f93f58dd5526ccc826e7993d8b0394b3ef29fd5cf66ec', 'example_id', '2023-01-09 14:06:54', 'template2', 'read write', 0),
('32ec41adeae17f7d928d5c497aef9a695e7d2da8fa9604ead4effa8a36e48bd6e138e12257e49762', 'example_id', '2022-12-12 23:47:50', 'template2', 'read write', 0),
('34222727af143ff4b17a549d337f81488e6be1f8aa107bb1df796e5466ccf9db0202c7374e48a39f', 'example_id', '2022-12-05 05:27:25', 'test44', 'read write', 0),
('35c11f1a9d1936671ce3f67fcc1ac32a66b30d6f2b2124b2c5d97e0c75b51525da80a05c995328a0', 'example_id', '2023-01-31 17:04:50', 'admin', 'read write', 0),
('35caf77e47c718a07f08169ce5304b0572839400a230fa8c12b53c36e77a3638ace8224369b2144c', 'example_id', '2022-12-04 21:20:14', 'template2', 'read write', 0),
('36a2d18188569b648c6426e9ebebc4895229e6d73b059b8a57bde1a80f2f065334b5618ae43eaa77', 'example_id', '2022-11-23 17:46:58', 'test95', 'read write', 0),
('3919c85e44a01956df129b134a367a202a5414c91414f2ffe197986c61212bf66779ed6550d79eaf', 'example_id', '2023-01-23 18:21:34', 'template2', 'read write', 0),
('39a1f82e0b52698d8ce50f4c744fbe5e2e11f108bddc109fc24108ccdc3a1736f5d44e1f9ad094fa', 'example_id', '2023-01-09 14:40:52', 'test96', 'read write', 0),
('3b0728cd2768561ff0257c7335623ad6aa661c168c5443ee38e10436a87520a51b37ee929f611006', 'example_id', '2022-12-04 06:13:24', 'test44', 'read write', 0),
('3b25b132b0660068559e83807d251ad0af6ff9b1bc5e9eeb2f0f1c322f4fe03451afee07f4455865', 'example_id', '2022-11-30 17:34:43', 'template2', 'read write', 0),
('3c7ce72284d56888d4917807453810019a7352a875b6c0fada9805b6428cb3e5f99304800f38e8ac', 'example_id', '2022-12-06 18:37:25', 'template2', 'read write', 0),
('3e92b05610b3e3a2e1b1a652510e67c5b74c04a334bfbaae8e4451dae50dd101030a4dfac5b54c36', 'example_id', '2023-01-18 19:16:41', 'test44', 'read write', 0),
('4200c0d573d2e63fb1d7b7ce4c91708cb57aaef12ac6d99b3125b5559488bac15a938164c73bae0d', 'example_id', '2022-12-07 17:13:35', 'template2', 'read write', 0),
('4361ece95f3784c60ec4b43fcaf4b5d090818cb4a1936fa28329c299d4d878624918c8ccc521abaa', 'example_id', '2022-12-06 17:44:20', 'template2', 'read write', 0),
('43b4853801de19c73838906c737d25ecc2028fe901c6fe45b7f91e236d0a431166fadd9245050bbb', 'example_id', '2022-12-07 17:12:10', 'admin', 'read write', 0),
('45a37257dfa5690ff41013feab8a91b1d23b9c42912f6967c61c003e673d03334b4c9afe4934d4a0', 'example_id', '2023-01-02 13:30:12', 'test96', 'read write', 0),
('45c537add6f09e67580c7a434bd6bdcac18a2dc0e2fc0524ab7bda193e934845947729e8dca8116e', 'example_id', '2022-12-03 20:28:20', 'template2', 'read write', 0),
('45d895cbcfb7bdc8abfd4ff7f0cf1076f1d05e40d871489cc5980cd9f2a96ecb4d59d4d4f6ee69c0', 'example_id', '2022-11-30 20:33:18', 'test44', 'read write', 0),
('471c7aae5f43fc96122a87edef45ef380a8bbe433f3b5adaf8ecd2c1d8eb95a4d8e49cc6701cbb3d', 'example_id', '2022-11-25 23:10:52', 'test95', 'read write', 0),
('472eef133a78fd07e4cb0cd1f7b15713f8108f10d4403f74a19c1851f19a13ac416fdecb16298886', 'example_id', '2022-12-04 06:13:53', 'test42', 'read write', 0),
('477f6d1da14e6ac9957a5e46f96fb70c7ac1a5d72e1b6e056962206e63b12346fc149553c789681a', 'example_id', '2022-12-09 18:13:21', 'test96', 'read write', 0),
('482524a1fbaac78a3ad3e0e2871445705b798f68e323d5e20e77c0125e3c59a271dbba7b557e4be1', 'example_id', '2022-11-23 18:32:38', 'test95', 'read write', 0),
('48868b61bea4d4f32a09b3cdbd10cac16bbda04bb874b05f66eb3f905ecd5a8f56612eea654b3d16', 'example_id', '2023-01-18 14:21:16', 'test44', 'read write', 0),
('48de212651117ee04dcb3d4b06ddecff4c5e7b59b3056e5049818a3c4c262a53c6d7331a5586d2ea', 'example_id', '2022-12-28 11:36:44', 'admin', 'read write', 0),
('4a14efda83b5504cf7ee20025c43c27d4c1383cdcb029a8dbc75cc93ee1342e173db78a0dac37550', 'example_id', '2022-11-23 17:53:42', 'test95', 'read write', 0),
('4a30c5953ece4916e942b25596dc3e4572f19fdca853d0a1591faabaa236a43f7dc3063169f0454c', 'example_id', '2022-11-30 18:06:34', 'test44', 'read write', 0),
('4ca83d31a8ccb3af59db40a15e57a4bc53db73a2a0bdfd2143ce5158ef15a0987dd5dceba3fc3fc2', 'example_id', '2023-01-18 14:43:45', 'test44', 'read write', 0),
('4dce174efd67a629fd31c45ce6ab3606e4715e2496eb32b7070405a28396b62b8a873a7bea0040b0', 'example_id', '2023-01-31 13:01:03', 'admin', 'read write', 0),
('5738bc256397d1fcca5a5a6b06a79e0aac69272b4fbd344dd70967459321fd46ac1de44aeaf9fa92', 'example_id', '2022-11-30 16:48:50', 'template2', 'read write', 0),
('57439831dca697232e6c1280e6fc07fc172030f027e118bc35114321063a855edfd40b8b27e58d1a', 'example_id', '2023-01-03 08:50:39', 'test96', 'read write', 0),
('58f2d1c798480efbcce58a487b081865b65e2385bfbf7930faaeb3ef22673c5d5821f7445615bd8e', 'example_id', '2023-01-18 08:42:39', 'template2', 'read write', 0),
('590241eea87e6ed19b55b3cc3437df92fc0d5b086079a22852245bd1ef7c4c42c05867f4b7ac2481', 'example_id', '2023-01-18 17:32:22', 'test96', 'read write', 0),
('5bab0d53a5ee3d58748de7ab9b9f813a7933e08ccc64cd1e54a5707396b6161499eabae28d387c05', 'example_id', '2023-01-18 19:59:39', 'template2', 'read write', 0),
('5c95f41df8fae20850a8f69b894f5b70fb76773cb0a869653d6b47bc166f81c1bd88fb1cd28b4af3', 'example_id', '2022-12-09 19:21:17', 'template2', 'read write', 0),
('5d770fcde7f8595f760ad6fd8237d1acbb555ec08caead875189aa3063b8b4374c83cbee8c12eedc', 'example_id', '2023-01-17 10:23:38', 'test96', NULL, 0),
('612164a06a796c8ea8936f52eec204010ff5b8bc1633c30f313d2f9c573642b8922d9dacfa5d5fc6', 'example_id', '2023-01-04 18:53:59', 'test96', 'read write', 0),
('64162038b1d80b329ae3b2ff81ad380094a27f46adebf668e775f3e3b3caf6b81bc5c9d590b389f0', 'example_id', '2023-01-22 17:06:41', 'admin', 'read write', 0),
('6505d66e538d0bcc4af7dabcc6712314d8fda5df8d1f8ebe5f6e99bac9ec24df5a69f73a15049ebf', 'example_id', '2023-01-18 14:51:28', 'test44', 'read write', 0),
('650e5a3d4f7045bfaaa90efa7024650d95aef7e60dfa0c3c72a79eb7ab95fceb53baa7182eb813a5', 'example_id', '2022-11-16 19:22:47', 'template2', 'read write', 0),
('65ddba89c1ad220aee2dc89a51a74c23f6e9f90bdf3d73f99e70202e8e326da17cf1baa826e82b7c', 'example_id', '2022-12-03 18:49:22', 'template2', 'read write', 0),
('66932317625e1743e99084756d909f79551dbfd65e6c44e3aa0d42b3714326f8374302834a3a7686', 'example_id', '2023-01-17 22:54:35', 'template2', 'read write', 0),
('68d7b02865b748a73244cd89264147380b1e844377887e3d366d6f93cd91ab3f6d7fad90e72d2b07', 'example_id', '2023-01-31 12:05:29', 'template2', 'read write', 0),
('68ea3f92c4dea8fe679f099cafd709aef8c1a92dbf2e99122801764aec0e5bcc0a1d5136df40e91d', 'example_id', '2023-01-18 11:11:57', 'test97', 'read write', 0),
('69539f7979b8b3ddccbdc9aa9ec060ea539700538d021276726957c5a441ff2785c6c99622e0a4e1', 'example_id', '2023-01-17 20:26:12', 'test44', 'read write', 0),
('6a6f245789ad1ef4e75a185ea12a371db9220449072b57325eb26940716db657ee0cebd1fe438494', 'example_id', '2022-11-30 18:19:14', 'test44', 'read write', 0),
('6b941480d24436c4f45500f7acb8c23ffc57ddbb0bca6c161aa7424b1835f4a0f3aa9e26bd165231', 'example_id', '2022-11-16 15:54:35', 'template2', 'read write', 0),
('6c5defdbb3be2a2180c9a31a2eec8be582197691a6170cf836b03c70b0ca993c77382724969773f4', 'example_id', '2023-01-18 17:37:48', 'test97', 'read write', 0),
('6cc56dd5e48b66cfb7499eaaa80f9df637d92ffdf126c329dfea5d658fc1492c4cd0016de0d6e0b1', 'example_id', '2022-11-28 20:11:39', 'template2', 'read write', 0),
('6dd0b1f4dcdade75447a8136ca8c2f8ee737adb189d51c505147e41809bb2f4fdd8d2b52387f70eb', 'example_id', '2022-12-04 05:36:44', 'test42', 'read write', 0),
('6e3ca8667b47f818ebff4eb72fd0afe735db148ec3680bf96df8ca39d9ef6206fe0fca54a9bc9cc7', 'example_id', '2023-01-18 13:51:06', 'test44', 'read write', 0),
('705b444d7fc28e617599009c2b38483b0c5903098ec7c3497f1c7e724a9f2e9ca13cc31cee028e6d', 'example_id', '2022-12-13 18:50:56', 'template2', 'read write', 0),
('70b7961f04707cbff169ec346f8b7cf294ac756a95c28debe67cb5196ff683b39d502c6603102bef', 'example_id', '2023-01-18 09:19:17', 'test44', 'read write', 0),
('718c0be614b32af845355c439d55e5e91b88140ccd1a3353d3ae148ac0dd95e559e38f96abdc21a5', 'example_id', '2022-11-23 17:10:09', 'test95', 'read write', 0),
('737a4458d794eb9b350d5740cda97d88b5228512c7bec538261ce5f255d4867b5be95a64f7e035bd', 'example_id', '2022-12-06 14:49:32', 'template2', 'read write', 0),
('73b278b9dee90bc1b8825164fdf491c365a33582445d762f7c6d6b9214fe777157654a2b9ff2932f', 'example_id', '2022-11-25 22:48:05', 'test95', 'read write', 0),
('754e85873916a1253a9668324d829d675f61a13a489b196a1ceae45b1f4ed43c10d2a96e06c42dc5', 'example_id', '2023-01-18 14:01:15', 'test44', 'read write', 0),
('7681fed38e7146a1c830c76e31aa512aa017b0423e32bcded83efc5ae70aa004935e10f3ca4564c3', 'example_id', '2022-12-04 12:18:00', 'test44', 'read write', 0),
('77c6df74f5e732e7278889d4496e881c6442fac6ad46be36ca05f96674ded39f3753dc4cd1a1326a', 'example_id', '2023-01-18 19:21:11', 'test44', 'read write', 0),
('7a1fa922b4314b2cd7e5204013c35642be5eebcd9514298a4f7b538882fc16077300e5ae53fe71dc', 'example_id', '2022-12-04 18:53:29', 'template2', 'read write', 0),
('7af95001dcc9a3d4a33d4c6642fc0ee580902b4944f3b040194d46608e994e1c7398ef2cde344f36', 'example_id', '2022-12-03 19:38:40', 'template2', 'read write', 0),
('7af95c65ff59ec08112f2646168657fbbf3067492ec03f64dacf7e0c2b8c52848952944ba3f5a0c1', 'example_id', '2022-11-30 16:50:35', 'admin', 'read write', 0),
('7b9ff35f383d9757e9f158b93cd0cab6c70edc285599388de25f09c6d23b30064f2f394b32c71fe5', 'example_id', '2023-01-09 12:34:03', 'test96', 'read write', 0),
('7cf2f2ee51d7cf5f8a3d8491350d0e6ef809f07678366977fddb979e1d7ecef3dab187c7967f3bc9', 'example_id', '2022-12-04 18:40:26', 'test42', 'read write', 0),
('7d88cb3bf9e6b1633807e74c0824af0b69d35389238b6894cf56e2324c83a99e8520ae0a1c8ae4a2', 'example_id', '2022-12-04 06:30:10', 'template2', 'read write', 0),
('7edcd69de74faaa6f62864568dccafa76423e55b7217ac1266a1633e7b36d175043e44f4180534ff', 'example_id', '2022-11-30 17:16:56', 'test95', 'read write', 0),
('7f7b627700d524a201f51aebe4ade717ff193d3a037132f9a816478f9c89468b4bee71a3bde2c1fb', 'example_id', '2022-12-04 06:14:19', 'test42', 'read write', 0),
('81116f57d2d1b8003bead9e2e69241714c3a03e910f40adda0ff46e8b00c90ff9c1d4f0dca9e7254', 'example_id', '2023-01-02 13:28:14', 'test96', 'read write', 0),
('8120b9fca9a48dd27926f329e5334bd640090b7d3b9d7a067c62c791f80d5a1648f46a5889c14795', 'example_id', '2023-01-18 21:34:38', 'test44', 'read write', 0),
('82aa9cbe3e16876640b0e14c4b4d2f415ea94c856a1e0f3e4143624b0256a925f7e3d4018c6531f1', 'example_id', '2022-11-30 20:42:17', 'test44', 'read write', 0),
('830a089fff2f4be380df220d842dbb5b3c711c8dcefb93ad55ba9e37a9ee790a6e6f0b9f9bfef476', 'example_id', '2023-01-18 14:18:50', 'test44', 'read write', 0),
('86b7bba7fb90916c59f2164c52b47b1e11b094517476b909b351790ddf3e641094ce3915a1beb58d', 'example_id', '2022-12-06 20:15:20', 'template2', 'read write', 0),
('89144e9fef3db169e085378248b5826263a8002b85fbd003cdc17a4225660ad4edc9f51370fdf549', 'example_id', '2022-11-30 19:37:30', 'test44', 'read write', 0),
('8ae4ad830cebd8f17660a7041451edcc10c4e345d409acb4c19b95fe5afd69f84bcd2d129aa27029', 'example_id', '2023-01-18 17:27:23', 'test96', 'read write', 0),
('8b312506e8b6b6e47b854020ed87a2a7fb3a0b77d53e12ccb9a040fae858af1a85e71ade57675675', 'example_id', '2023-01-03 13:22:36', 'test96', 'read write', 0),
('8bdedc3fd85e3c7c3746cc04786ff71d68a644a08d8171c8510c4da1eb5dade806ede47b4712f95d', 'example_id', '2022-12-13 21:26:28', 'template2', 'read write', 0),
('8c4580e061bf840f7f3a9d36fb714bf2bce35d476ace99c36e27dd9be2210ae165e8b5800115a8a9', 'example_id', '2022-12-06 17:31:12', 'test44', 'read write', 0),
('8c94418f4f665533b04b5e71043dde0ba4a0fed45a048f328c1988ecd1c5855119284be94d6feb4f', 'example_id', '2023-01-18 14:16:51', 'test44', 'read write', 0),
('8de384f3800b49c941adeae01d611866f63efdac568de8af486df1b119116f54e24be69893b79adb', 'example_id', '2022-12-03 18:52:05', 'template2', 'read write', 0),
('914ac014824e44cdab88fce088f1ffc2e024fa998090c1f3aced15eb979665f81d2d4ea703bb81e7', 'example_id', '2023-01-09 22:23:36', 'test96', 'read write', 1),
('92c064c6f27b42e704f01272835803ddb7ffcab84addaa9009e10e7d16c1f00da0729ad09c8e666b', 'example_id', '2023-01-18 13:58:55', 'test44', 'read write', 0),
('9ed1864c6036db66b18cade5eed660a7f092cf6cff4d3a3d7e7d9c9f6e966d508938b36379681b38', 'example_id', '2022-12-06 18:12:22', 'template2', 'read write', 0),
('a1163c893d3de4f2c61a60ed42ca9ca098cba49f7ff558207472aa02bcb39759f53c86ef06dfd59b', 'example_id', '2022-12-03 18:52:19', 'template2', 'read write', 0),
('a1fd5fe4639e47cc83cb046fb3d7f5a783def12a508cc1d681d1cf960cd3edf93c0137b8399dc45f', 'example_id', '2023-01-18 13:46:14', 'test44', 'read write', 0),
('a47ab826c18c7a6d891141eef0b0852e96ed11a9f67d5d9076b65620b8c656c58685364b647452aa', 'example_id', '2022-12-04 05:38:45', 'test44', 'read write', 0),
('a4d472ded6cb649dc3b2464c85208664cde4c25faf9b3f97fcdec406ec1796c32f18a40b204f5647', 'example_id', '2022-11-16 15:21:25', 'template2', 'read write', 0),
('a545b507860c7ac06f94f9d9757820c1d7ca11e9761088459c435e9877cb4717d4bf9518ba98717b', 'example_id', '2023-01-18 18:26:20', 'test44', 'read write', 0),
('a5be692440b406b9399f6dea7a326a2f1dc12a0e7b6b9c6a3852c3a247e33f6d894dd2a9933dcbde', 'example_id', '2022-12-03 19:46:21', 'template2', 'read write', 0),
('a6416d77fa11e1db775baaa73b042d0c73124382265ffeaaa9aa33a84828a337ab3d55011bfadea1', 'example_id', '2023-01-18 19:19:32', 'template2', 'read write', 0),
('a6c1cb341ab0f2c580bfeb9abcb857185a40f2e425d7c072c238dadfd637e2b44e66cc42f41a793d', 'example_id', '2022-11-30 16:54:44', 'test95', 'read write', 0),
('a7ac44f8f3747f3fd11779368a692888cc0d558ab7030e304d282361d842d10b4f05e182a4cc815f', 'example_id', '2023-01-18 17:46:21', 'test45', 'read write', 0),
('a7e1c621a655949f4ebeefd5109a447d24a35897f6c4d74e1933e89a4bf0274114674700ded805f3', 'example_id', '2022-11-16 19:20:41', 'template2', 'read write', 0),
('a8f294a3a54d0a9da8e9db494e19b0323dbbcf16463dbae102ae4f3fd6a395b1084a19d5beb5748d', 'example_id', '2022-12-28 06:24:30', 'template2', 'read write', 0),
('aab98ed73357cb6df45691388457ff27f999666aaaa738f21740d742f0391d75dee341f1bd30d4ce', 'example_id', '2022-11-23 17:00:59', 'template2', 'read write', 0),
('aecc33f0cf854869ea7aadb3a8f5fbd97d36097fa552006b07e8d463dec2509041217bbe1c329312', 'example_id', '2023-01-18 13:28:13', 'test44', 'read write', 0),
('b0365edbc58023a91db7f1e926d10d50fcdaff5b31292046a72f03ebe80cfc0b4f2428e08993e3e6', 'example_id', '2023-01-18 11:13:30', 'test44', 'read write', 0),
('b1b2e5bc0ccf86bb8d16c8f63ab50f751df5cbf65c083d2aa6786bb50036cf8f77ff64bfc45acdb3', 'example_id', '2023-01-17 22:02:20', 'test96', 'read write', 0),
('b317e533d7885a5a307f12d7988a12356fded11f49e386774fd1cf092001e96ce0e6582462175c33', 'example_id', '2022-12-03 18:14:05', 'template2', 'read write', 0),
('b39a79515aa0632dffad60253813d48da8d0eec49a33c128819e697532a8523b6857469f24b1298c', 'example_id', '2022-12-04 18:41:02', 'test42', 'read write', 0),
('b5049129d09580915c431e6e62f99a6fa6e5d561f940f7080078771cd521ab2e838684bb76aac0f6', 'example_id', '2022-12-04 06:15:58', 'admin', 'read write', 0),
('b5a37445c56dce47257bf1a8b976ac3ff187f9076ed7a426d790ee11914b910b52a6e722448a6fe5', 'example_id', '2023-01-18 19:13:56', 'test42', 'read write', 0),
('b5c7e7a353abe2c02478d3ab3dfb8c93092d1dd0b63bf26a842cece949fc1207d16f53f696f25fde', 'example_id', '2022-12-04 06:58:15', 'template2', 'read write', 0),
('b712ff6c5568e7f90dd8db3c2d73cab1f5aa7edf9ca30ba5bd4919496e968ab6fea3c8097f86b119', 'example_id', '2022-12-04 18:47:03', 'test42', 'read write', 0),
('b9faffbc3cb770731426b882770d2165f1454ff575434e5d7402552b9bf46d2cc0cd37c674492699', 'example_id', '2022-12-04 18:37:21', 'test42', 'read write', 0),
('ba41ebc99cd371c6f85b7268e149d42cc754c4a52e24527c2dcbe9508ea12a26c88ee1eb1cf84ac7', 'example_id', '2023-01-18 19:17:57', 'test43', 'read write', 0),
('ba71af5964f952ea85b7df71c448f00f3ff09a6c3f5c3a0811a0829b4bb94ee4c9a3d9b9d414475d', 'example_id', '2022-11-23 18:09:18', 'test95', 'read write', 0),
('ba93c5361836f3c33981d6de08270d90b0daa46735e3860726b31a886111af5158503cc4717c9aeb', 'example_id', '2022-12-03 22:29:20', 'template2', 'read write', 0),
('bbb7a746260341d6bc04ece807aebd440505572a75f2bf9cb9c7e1f8230f22fa2c185ab1355c6ef5', 'example_id', '2022-12-03 21:07:48', 'template2', 'read write', 0),
('bdfd6a75bf87f964ebcf31e9c6c9f10fa82997c6189ce6731b2fbf4f51b825af47147d744290faf7', 'example_id', '2022-12-04 05:26:48', 'template2', 'read write', 0),
('bebdff0015b9e0df186bbae53c4d9f55d9b7f4c37517669bd24017d27e6c4651024b701281777cb5', 'example_id', '2022-12-04 06:15:43', 'admin', 'read write', 0),
('bebf1369c6f6a06f7eb583e240457c0bab99e672962cd9b6f32a5d90794a394aa00deacb2163794c', 'example_id', '2023-01-17 23:24:14', 'test97', 'read write', 0),
('bf4cc7a1deb59d0a91911a94d8fb5dfa933a8559986c2b398acaa2fef04634036f7cc220f9b1e030', 'example_id', '2022-12-04 05:27:12', 'template2', 'read write', 0),
('c1248652505b1cbf536e5cd2d2ad11eea675d6de6c15ddeaaf6e630fbd83f9e89f88dc32af6d3dd8', 'example_id', '2022-12-03 18:50:03', 'template2', 'read write', 0),
('c2c556dbf789317d8cb570e987323bbf8d6c2627a5fb1ddf178437bbc130b212a407c3b68588375f', 'example_id', '2022-12-04 18:36:31', 'test42', 'read write', 0),
('c3c86c4641914c49e67cb44a6d9dc8f214c13904338234ff05d82c208cb183e0ad6554a13f92fd9a', 'example_id', '2022-12-07 19:19:54', 'test44', 'read write', 0),
('c6407447567962a40537105bccc6b1ae927beca9021b384163fa3ab164d4df23c975d56158e7f7d9', 'example_id', '2022-12-03 18:41:37', 'template2', 'read write', 0),
('c80ca523adbffe1299b6f5857af3ab9d3953d35be8d4fd0cd988e625421f4f8ded2f7c157bfcf8a4', 'example_id', '2023-01-23 18:05:00', 'admin', 'read write', 0),
('c821cadffc9bfda89ebec3669f2d39c99d5ea6c91a1dfe0da7aa553aff96c6bc31c168c233d00fde', 'example_id', '2022-12-03 18:05:20', 'template2', 'read write', 0),
('c8bc69b31ddf1bcb4c26a267ac36dda0a40b3f5b3ab4b8ee871f4bb70e5f850ed4257ae058a118f2', 'example_id', '2022-12-28 10:43:20', 'template2', 'read write', 0),
('c8d6d8bb14e654b69877d8fd15a68d437c4ff597486fe8608b723e4e0a0aa3ca5ab59829e7a82658', 'example_id', '2022-11-30 20:56:58', 'test44', 'read write', 0),
('caf3b5c65f6c88837d2cb4c67b79e29a18a9fd779cd8f9ef7bb8e1d1bec45a8ceef021fbdaf54acf', 'example_id', '2022-11-23 18:19:52', 'test95', 'read write', 0),
('cc38a3d10433f8ee8b1d7fe4a0ba815f825b14d93f791b28e2b349c1a225353e89ed800583e405b9', 'example_id', '2022-12-06 17:15:45', 'test44', 'read write', 0),
('ccb1935e2cabc9014cd975e23a2ce260a40ce183fa99583bb69eb41d51d84630dcea0b479adf27ee', 'example_id', '2022-11-30 17:35:22', 'test95', 'read write', 0),
('ccb6c15d642b0eadd107283178c817233493d9c6bbe628cf83285b277db38d10f0b7c8fe9c14488d', 'example_id', '2022-11-23 00:12:41', 'template2', 'read write', 0),
('ce3d9ca54f541bccbbaf7ad0ae6f376a803f8aa96bd77b5267d976f14bcad48e8d7e1577f8e3f784', 'example_id', '2022-12-28 09:51:36', 'admin', 'read write', 0),
('ce91e3c836bda14c8feb72686dc89219880633e7629ccd8e26e6b5fdef2e4a80d1caa03d85425f74', 'example_id', '2022-12-14 13:49:57', 'admin', 'read write', 0),
('cee41fb2ca65b35f319bf124bdb856078d78b0524ba13818122fecc273f9be9307214eaab786c6e5', 'example_id', '2023-01-22 17:12:17', 'admin', 'read write', 0),
('cff3abbd77bafab575053f4be6fd6ff52183ad94110b87ca566b0069ecbe0bb30856728d3c807c65', 'example_id', '2022-12-07 18:29:18', 'template2', 'read write', 0),
('d292f6bcf10874a96d6947de050734cfa1899704ae8218f9ca009864cab92889c2ea3aaace878ed6', 'example_id', '2022-12-24 20:07:53', 'template2', 'read write', 0),
('d2d893ad49b2ac3726df3557d6c62cb350d42718a08e936ce2fac2a25ff331e41c20c77881384138', 'example_id', '2022-12-03 19:14:38', 'test42', 'read write', 0),
('d34dec79898ff96adef6d921c8950189239046d8761a16539a4a5800bfe8c4fc0a8cc8e93e523e76', 'example_id', '2022-12-24 18:21:34', 'template2', 'read write', 0),
('d5196e0e5f9e018d9680d2d28f7be7a78c1b177e56c089b292d388d436acba21e40e9f62279a6cff', 'example_id', '2023-01-18 11:44:53', 'test44', 'read write', 0),
('d5ab9e844bee7ae18c81fde2f9445f25765919939207f7d6b4d9e2be4d4252a9d08778a63a257e90', 'example_id', '2022-12-09 18:49:29', 'template2', 'read write', 0),
('d71ec8593a1d5f483cf399aece1476da4c534cc57ff1aef13ecb66f01ef291bc5ed8a251529caac5', 'example_id', '2022-11-25 07:13:35', 'test95', 'read write', 0),
('d9bac1045aaa4305cb90e984ee9a6b7a78bc6fe776914525c511dbd8759ff77a271e5a15987e88e5', 'example_id', '2022-12-04 18:46:50', 'test42', 'read write', 0),
('da9dd629eb1a54f32e935ea929dc3e4b5366e2d147dfe7145f8d22b61484c7b32da3ece5c13823ce', 'example_id', '2023-01-31 13:07:15', 'admin', 'read write', 0),
('db1d3ae9255a8b0101ff9e0489b3555191708c2b5a05a0dfade8bf92d201372b89b210151ce74198', 'example_id', '2023-01-17 19:47:44', 'test44', 'read write', 0),
('dc980691edebdae9e481f2b3c60de37501c537fdd91bc189bd1967939bfadc6cdb40d617cfc19e0b', 'example_id', '2022-11-30 21:04:35', 'test95', 'read write', 0),
('dcfe4968c9a805ca2c7dfff42209b2fb62bda4a0d8e07a0e52c50f2937d8f81d0d52b19ca4173618', 'example_id', '2022-11-21 15:53:37', 'template2', 'read write', 0),
('dd2647e0b2d931ca91fce67f6c450fff6dedfddfae2a7f7e57d1c32bb97dd199e8f6390f6c08114e', 'example_id', '2022-11-30 17:32:39', 'test95', 'read write', 0),
('dec9d9482daba6f51b72537627432589a6851bb0b2791aef39223c100057d3564b823769db3b548e', 'example_id', '2023-01-18 11:23:08', 'test44', 'read write', 0),
('e12f446222c4abdf24a0c65fcb300849b0c8851de257bc57181ff49a4ba47e421d0efd21e4adae48', 'example_id', '2023-01-18 11:35:03', 'test44', 'read write', 0),
('e2c8868483b4761e126e5c3bfe7c36175d4000588c23ae8994e778ae04fa931afe22a632036daaff', 'example_id', '2022-12-03 18:48:34', 'template2', 'read write', 0),
('e2d75212bbb98013faa84f29d9dc4b7f4a4a708cab38fa25c5f5b99eee7668ce44bec1a86eb31a93', 'example_id', '2022-11-21 16:02:28', 'admin', 'read write', 0),
('e2e03b9f5203a42a86d5be7b2ef3fce2c9fe9f788ae19e3c59f5183691479c40d621d3f1b6b78d2f', 'example_id', '2022-12-20 20:14:45', 'template2', 'read write', 0),
('e30014904b97e9dc0db465d3e8a65b4680faddb3b13169e6beb340601cca46aa486beddf5931d1de', 'example_id', '2023-01-18 14:27:58', 'test44', 'read write', 0),
('e6683da27f0ee333495f587be23eabcfd2aed4273825690f3129ad533074209d1a19a1c10cd945c2', 'example_id', '2022-11-23 17:46:44', 'test95', 'read write', 0),
('e7a4d1d963eac98d8e833ff07c8cc4132499214dec6b1aebdb0c1b9e0421eefba7bd84f5ca868d9c', 'example_id', '2022-12-04 18:37:49', 'test42', 'read write', 0),
('e98232f8e34c92748e997a582d7e1e7647279684ec811057a4c5a6909290c3d82ed6a85dc1f39462', 'example_id', '2022-12-16 15:19:54', 'admin', 'read write', 0),
('eaf3b673e8fa1453881267a26d638680cf32f94e4f0c7602bdabb3d3bf35006a5393802d8a07dead', 'example_id', '2023-01-18 16:00:20', 'test44', 'read write', 0),
('ec7ee361de15bc1816408ddfe177a9ec202eb06a59aa2ce7df64a2087fdc359eafa674ef0babc539', 'example_id', '2022-12-01 20:53:58', 'template2', 'read write', 0),
('ecf6b0f86ffb750dbb220fd03796848415fdc5902798a4e5d3fdc51a5ce6c469ea6cdc36d52285a9', 'example_id', '2022-11-25 22:47:52', 'test95', 'read write', 0),
('ee85a4362ccc34b9dca6560f2e91f3294b38e3edafdd5bd2015b9a146e8137ee483c372f790b4d18', 'example_id', '2022-11-25 07:19:23', 'test95', 'read write', 0),
('ef99e77dafb47475407a66eb0a00052487d244f778083de15180c225db5c4d6075d480a039dd7cf9', 'example_id', '2022-12-03 19:37:10', 'template2', 'read write', 0),
('efc0e79ae0a92d07277299d78d35eb1c356d38e546efa92280f1b85f4d1e386074c2e39afa4dd48d', 'example_id', '2022-12-05 05:28:08', 'test44', 'read write', 0),
('f1060e03f76d120612fe679942dc6fb198d0fe667765a1bc0b1b97ea0d142b8eb7fe780de72f0310', 'example_id', '2022-12-27 17:47:04', 'template2', 'read write', 0),
('f20df678b504c2d9c3349c3ef1c11f815fd721f084891fff90ed74132bf67f85d7c5bdd5ce9341a4', 'example_id', '2022-12-03 19:34:03', 'template2', 'read write', 0),
('f2b720085cb669fc6040337ac20aa2ab96bc332573c6f2a23c03bd74c7c33eb3678b6f0f6053943b', 'example_id', '2022-11-28 22:09:05', 'template2', 'read write', 0),
('f2c230c6b2a0a93bc26765e9bd57c948472c58aef7385a364c55d7f0285ed7fa92111fa00267edd2', 'example_id', '2023-01-02 13:32:12', 'test96', 'read write', 0),
('f3eb185d11fd42da2408f2adc549a7f961fcfb561001c0cae9e894921f352f436b83d3626937fff3', 'example_id', '2023-01-18 17:25:56', 'test44', 'read write', 0),
('f49377bb1916843c7f4308f5965a6644f72d99ceaaa3fa06d4d1ba3bbf9049429564a8ac649af05b', 'example_id', '2022-12-06 17:22:38', 'template2', 'read write', 0),
('f4b3d47e22be9da9262785d23c157df281cfd8cde9b59d502a693bace47cd458841f2dbf88938bb2', 'example_id', '2022-12-06 11:32:18', 'template2', 'read write', 0),
('f5379fe97b0fa057f887483cc62bc92e23ca5bb20aa6640dcf66aefe9cefd2dc80bd837ea33d3bf2', 'example_id', '2022-12-09 18:54:01', 'test95', 'read write', 0),
('f56d85cecf0fe36fe9dbfc45c3ba9f5e5e02d049b3fdfd617015cfe89ba83fb12a4340663f9c1943', 'example_id', '2023-01-18 18:09:30', 'test42', 'read write', 0),
('f7eeb1ab71459ac80f92de4f97a2646c479825dd9f2977105e55a6c9751448a920a5d48005843f9b', 'example_id', '2022-11-23 10:37:02', 'admin', 'read write', 0),
('f810220237a1f96c8eb0417401bbd729122bd4b2579e9ab05ccaff5bfffa7907e883e01d2d4d0637', 'example_id', '2023-01-18 17:40:22', 'template2', 'read write', 0),
('f918902e60151eb7292ceb40622c56793073714b7f7cb266967d102c0a8a77f4b4ca3e5611056d25', 'example_id', '2023-01-18 11:40:45', 'test44', 'read write', 0),
('fad16e5e3bac8f11dd2f2f8d903f728d4af076ad863b639ed7eab18a5b974e68e1d02542f47d7fdf', 'example_id', '2022-12-04 18:39:08', 'test42', 'read write', 0),
('fadcabcdd7280a3099b9917458db970eff46bdd363b9cbcf42748cf3dd724d1e7b3eabed4ad672e5', 'example_id', '2023-02-01 15:50:41', 'template2', 'read write', 0),
('fb402217e202c9e7d8db8314f5926530629f618898cb34fbbc3605dd60986bfa26e81603ca10a60b', 'example_id', '2022-12-24 19:52:25', 'template2', 'read write', 0),
('fc5f455e50094c42b87794bed2305ca5004eb979cc441675754147b4d4a63572e389037234853447', 'example_id', '2022-11-30 19:01:17', 'test95', 'read write', 0),
('fe1d89ff79110c7a4b63d2094079b6691cb8e1c92344d57357efc6c7893e334501dd5870587ea780', 'example_id', '2023-01-11 12:14:51', 'test96', 'read write', 0),
('fe3956f4b6472b210ace18c8ba867cfe5e98de987ff8ffb105a375ab098e6ca3c85afb07e0d5ab30', 'example_id', '2023-02-01 14:42:08', 'template2', 'read write', 0),
('fe6584b4f257771ed582bb962c0af145f766da4d82fe363f657c9a57b1b29bcb42bb0c0684f5606b', 'example_id', '2023-01-01 13:15:27', 'template2', 'read write', 0),
('ff6848a74e2f81f22ccdbc4a5361fd47f0d0448836c9607067efcc91034c6d2d84941b5f3cc8bc7f', 'example_id', '2022-12-04 05:39:20', 'test44', 'read write', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth2_authorization_code`
--

CREATE TABLE `oauth2_authorization_code` (
  `identifier` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_identifier` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:oauth2_scope)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth2_client`
--

CREATE TABLE `oauth2_client` (
  `identifier` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_uris` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:oauth2_redirect_uri)',
  `grants` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:oauth2_grant)',
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:oauth2_scope)',
  `active` tinyint(1) NOT NULL,
  `allow_plain_text_pkce` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth2_client`
--

INSERT INTO `oauth2_client` (`identifier`, `secret`, `redirect_uris`, `grants`, `scopes`, `active`, `allow_plain_text_pkce`) VALUES
('example_id', 'test', 'http://a.pl', 'password client_credentials refresh_token', 'read write', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth2_refresh_token`
--

CREATE TABLE `oauth2_refresh_token` (
  `identifier` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` char(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `revoked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth2_refresh_token`
--

INSERT INTO `oauth2_refresh_token` (`identifier`, `access_token`, `expiry`, `revoked`) VALUES
('019ab896b1148a462e31bc449612bb465ea375d30758bf3ec6a1da88465af371890e3a5188f7b17c', '5c95f41df8fae20850a8f69b894f5b70fb76773cb0a869653d6b47bc166f81c1bd88fb1cd28b4af3', '2023-05-29 19:21:17', 0),
('02372f799ab8d1467136b9e2fcda625d9bb9fd6b70de4c4ff3b7062e8ad5bb55e9291c2d5898bfa9', '82aa9cbe3e16876640b0e14c4b4d2f415ea94c856a1e0f3e4143624b0256a925f7e3d4018c6531f1', '2023-05-20 20:42:17', 0),
('03a319c3d0621861040251b10dbf7c5a87360e564bfd23733ce0d219baa65e0831a4c7e1db02c01c', 'a1163c893d3de4f2c61a60ed42ca9ca098cba49f7ff558207472aa02bcb39759f53c86ef06dfd59b', '2023-05-23 18:52:19', 0),
('0436cbcb0ea547092959d9f843b66cc555757ec41c27752351564346a7c94255d1a00e7b9d6499a3', '1068815f65773077daa0705201e07b2ca89e729d4d19b9efc49bf293db9f95fd6207f63c0719181c', '2023-07-04 21:17:31', 0),
('046990492c8c7f2878facbe4bc65f6fc75a042965fb797a025fa0af6e66a9650f83af91689949379', '68d7b02865b748a73244cd89264147380b1e844377887e3d366d6f93cd91ab3f6d7fad90e72d2b07', '2023-07-21 12:05:29', 0),
('05b08b5c41c1e427d448119e64491255600c1514aa4837632b26c78087f10b5418d271983451d024', '1af235ccebcee842f32179d9183ac8063bde17510c68616a77fae9636f08455e7a1a79a414f21834', '2023-07-12 17:17:22', 0),
('060a3e4f870d37f59e6a12fad601c6d8874e59b8392340467a391980a4584dd33f4207ef9209556b', 'b712ff6c5568e7f90dd8db3c2d73cab1f5aa7edf9ca30ba5bd4919496e968ab6fea3c8097f86b119', '2023-05-24 18:47:03', 0),
('0989d78b83cf32fee550b2ae503df7240e4daa5ace52f462fe6a16950466a2b028c933d4ed12b0db', '472eef133a78fd07e4cb0cd1f7b15713f8108f10d4403f74a19c1851f19a13ac416fdecb16298886', '2023-05-24 06:13:53', 0),
('0c428439e102a5d65614d4493b3eb879f7a6c250274eb36dbf734eaa1c9a7321e1d751f87196f5ab', '705b444d7fc28e617599009c2b38483b0c5903098ec7c3497f1c7e724a9f2e9ca13cc31cee028e6d', '2023-06-03 18:50:56', 0),
('0c61deb4680bf0de994a546fbef42c90eddae6557e5e3380b2306759412ca0d442f7ddac9d79b36a', 'd292f6bcf10874a96d6947de050734cfa1899704ae8218f9ca009864cab92889c2ea3aaace878ed6', '2023-06-14 20:07:53', 0),
('0df4a8e1d197e50ea32bc2503b0329400b519d835a89ce9665464271827cfb41a21e6a75ad04a3dd', '650e5a3d4f7045bfaaa90efa7024650d95aef7e60dfa0c3c72a79eb7ab95fceb53baa7182eb813a5', '2023-05-06 19:22:47', 0),
('0ef2582e780251c6f64f650c07a20edb1a9fb7332a9e566b2a7e3838f5e09de5ffa775033ac9553a', 'e98232f8e34c92748e997a582d7e1e7647279684ec811057a4c5a6909290c3d82ed6a85dc1f39462', '2023-06-06 15:19:54', 0),
('0f0c23ab6eaf52f44ab631463ef5d9211acb888fc253dd60b643ccc80cc90297aca0744340f21552', 'caf3b5c65f6c88837d2cb4c67b79e29a18a9fd779cd8f9ef7bb8e1d1bec45a8ceef021fbdaf54acf', '2023-05-13 18:19:52', 0),
('11638a124d7fe4764bd47468c9bad1b94f55419e419afb9d37a79539a5fff7e9972ce30a104bf03d', '19d4eac3d4a169e1ab2b8a49c5f352509669dfbaf1278a0e4d82d00c28fdaefd2c16dae4f038ff0f', '2023-05-25 05:27:56', 0),
('124f9e241c6a0c0b0333ccec16e3f2082b4297754eb0a7efe82d2bf9cade10c176752a0e9d47ed3a', 'b1b2e5bc0ccf86bb8d16c8f63ab50f751df5cbf65c083d2aa6786bb50036cf8f77ff64bfc45acdb3', '2023-07-07 22:02:20', 0),
('125df671ca7b8d5b10ffc5a2d6b77bf548164a443a96bd81fb2b565a54e0cc385ac6df53956d2de6', 'd71ec8593a1d5f483cf399aece1476da4c534cc57ff1aef13ecb66f01ef291bc5ed8a251529caac5', '2023-05-15 07:13:35', 0),
('12d7bc7a14f79074d3a352f676337c43ab516fa8056549a9b1c1dc8d11a3eeca73dd6a927a2d13e0', '0306b0a53fc917b998f95b0f6c939b97e4c40169540a17dc2620e1dcec0d3d51f56c0505b9ecde47', '2023-07-08 17:46:56', 0),
('13e5fa6b9f8c9764117f6c7a961cbf9718cdbcdb02030275de6df5a90dcb9ad76b5b403f3d1f3857', 'd2d893ad49b2ac3726df3557d6c62cb350d42718a08e936ce2fac2a25ff331e41c20c77881384138', '2023-05-23 19:14:38', 0),
('14dbaaf8d911839fe73fe113205a14d471ff936456023e330ea0d6d4ef7e9e84d7aadda419edc5e6', 'c8bc69b31ddf1bcb4c26a267ac36dda0a40b3f5b3ab4b8ee871f4bb70e5f850ed4257ae058a118f2', '2023-06-18 10:43:20', 0),
('15fef74149f5dba79f748a1be043a742c8069218c8b78057396bc386f9640817a01ca2533fd0ee41', '81116f57d2d1b8003bead9e2e69241714c3a03e910f40adda0ff46e8b00c90ff9c1d4f0dca9e7254', '2023-06-23 13:28:14', 0),
('16d52fe6d6e30eb6e8fc3a76fbdd235779c174899b4c6a9f8c809af61ad14d32c0d34edeba723162', 'cc38a3d10433f8ee8b1d7fe4a0ba815f825b14d93f791b28e2b349c1a225353e89ed800583e405b9', '2023-05-26 17:15:45', 0),
('1d0cdfc080f87f135c9547a75fbb5288bbac67a1c9a99f068ccd8a574149104a53de17ade2a97c83', '275943f0cbd234aff206ec03635499e0d2df39a1b567785996ee2addebf82693c2be72b89fb1ff75', '2023-05-23 20:32:03', 0),
('1df15424d6d37696031e0725f7cbd7ed3ee6c4f51049238d495de5dfd98f334822262630aaf11641', 'd34dec79898ff96adef6d921c8950189239046d8761a16539a4a5800bfe8c4fc0a8cc8e93e523e76', '2023-06-14 18:21:34', 0),
('1df948c02cc62ff33f13865e284a9bd4a12eef6b11e31858c9d673f49d05a9423843d62639e05632', 'e2c8868483b4761e126e5c3bfe7c36175d4000588c23ae8994e778ae04fa931afe22a632036daaff', '2023-05-23 18:48:34', 0),
('1fc4d41af76da170a2642fe1b3badd9e0cb9f2217854cf6b573de56b42c53b8dc0ffb11db55dd145', '48868b61bea4d4f32a09b3cdbd10cac16bbda04bb874b05f66eb3f905ecd5a8f56612eea654b3d16', '2023-07-08 14:21:16', 0),
('211ce57ce1045a375b499daecf197f6ec3dc71595fa2bdd90989249a9aed5cde21096de40a880ed2', '2ce901524c1c5c05ec053a8a3c376a737f152e3e119155ab0c3626a7aab4b1b328ccc2876586d741', '2023-07-22 15:17:33', 0),
('227f76deab567de991a7e578bb1c003c7b29781bc24eed93d7f037bc9d1ecb518da61bbcbd1be562', '1efa5d8c1ecf5c719f0319ad7e10db1dbd9152e7fbc61133434840afa38e2f9f97145ccfff6077c8', '2023-07-08 09:17:01', 0),
('235bda3efac571d2fd1e8fd7615e158ede3297d847ba07f49dc560660cad054fa30317e51ae1de39', 'dc980691edebdae9e481f2b3c60de37501c537fdd91bc189bd1967939bfadc6cdb40d617cfc19e0b', '2023-05-20 21:04:35', 0),
('242e69ad2591038f9390424b3fc9f8d3029ed2a7bc26f8cc87afefd40302d24e30e1a74a42237676', '6b941480d24436c4f45500f7acb8c23ffc57ddbb0bca6c161aa7424b1835f4a0f3aa9e26bd165231', '2023-05-06 15:54:35', 0),
('2626505d25329187c6dbfa1a0f9ed18265628c9dcec56215a117d65f923d9be7aa235d6eccdf5caa', 'db1d3ae9255a8b0101ff9e0489b3555191708c2b5a05a0dfade8bf92d201372b89b210151ce74198', '2023-07-07 19:47:44', 0),
('2872ee0c23dad72298a726531f6ce1019ef1b4744cd51b6ff6c8d1a3cda980065a4ad5801469eada', '31a3583ceb12ec4ee6caba8bbd63b371840f93f58dd5526ccc826e7993d8b0394b3ef29fd5cf66ec', '2023-06-30 14:06:54', 0),
('28824b6bf6ea1f1292d144e3e23c253f5a865644c0dabf752bd504bd20abab8efdb24b4dc132b04b', 'c1248652505b1cbf536e5cd2d2ad11eea675d6de6c15ddeaaf6e630fbd83f9e89f88dc32af6d3dd8', '2023-05-23 18:50:03', 0),
('29f11c171538804d0a6ed3719663f74e9d1014e131fac65d7d608639644b9eddc58437ed79e109c5', '32ec41adeae17f7d928d5c497aef9a695e7d2da8fa9604ead4effa8a36e48bd6e138e12257e49762', '2023-06-02 23:47:50', 0),
('29fa912d3a7f7743e6fe2bcbb73403171b5a3a068f04394203b67f2824670c8610282edbd5aeb585', 'ec7ee361de15bc1816408ddfe177a9ec202eb06a59aa2ce7df64a2087fdc359eafa674ef0babc539', '2023-05-21 20:53:58', 0),
('2e3966fa28312ef9b8db1df1b2747d22e5b59dd6b6febf730ab7bb0988301da98526645e686ba98d', 'a4d472ded6cb649dc3b2464c85208664cde4c25faf9b3f97fcdec406ec1796c32f18a40b204f5647', '2023-05-06 15:21:25', 0),
('2e74182bb80583d7f717d1ad0318592dbdde2641dd6be3f9cbec1b6b27180ff355dca4d2b38c61e2', '77c6df74f5e732e7278889d4496e881c6442fac6ad46be36ca05f96674ded39f3753dc4cd1a1326a', '2023-07-08 19:21:11', 0),
('2e828f6362dbf9511b6fea85c40976edaf17a8b44d665a5ea02feb5984bc819b87cde84033e9de09', '000fc91f53a9f6dead7ecaa48030443ef37677511222a97913f49dd0de177ada8d11fedf4cdf1dc8', '2023-07-08 20:00:40', 0),
('2f607045ca430977ef024dcebb4536d7be4ee88aca313af6050f3295597d02def4c5379b02e647a1', '2936dd23ac79464d364409c7dc4408031e76638b6f0eb13f8be9ebec1096f5329468954151f987ea', '2023-06-22 13:22:57', 0),
('3170bc3d4b1c06b106ccfbac63849121e06d99186c94598a1c8efda433b66b7dbd78454d941811a4', '7cf2f2ee51d7cf5f8a3d8491350d0e6ef809f07678366977fddb979e1d7ecef3dab187c7967f3bc9', '2023-05-24 18:40:26', 0),
('3212331a55a175a6f56b184c29d9d8a6eaedf00f0eeca5b58324d006af6f8aa6b45b830873f33f39', 'e12f446222c4abdf24a0c65fcb300849b0c8851de257bc57181ff49a4ba47e421d0efd21e4adae48', '2023-07-08 11:35:03', 0),
('326791af156d41f9fe1917929f8dd8ade04bfe2b4dda4480d41516832e602c0a55d19c4d2c96d436', '89144e9fef3db169e085378248b5826263a8002b85fbd003cdc17a4225660ad4edc9f51370fdf549', '2023-05-20 19:37:30', 0),
('33012b4a456ed3a1ce506639ec2172fedb499801c44d0160ee4aca1a4fefda1b5675ddb971e56795', 'a1fd5fe4639e47cc83cb046fb3d7f5a783def12a508cc1d681d1cf960cd3edf93c0137b8399dc45f', '2023-07-08 13:46:14', 0),
('33b5b3b8bde7087da4d9fe40eabdd43b507d2367cd839d67803edb8bcfef7b385ec35eeab53145b2', 'fe3956f4b6472b210ace18c8ba867cfe5e98de987ff8ffb105a375ab098e6ca3c85afb07e0d5ab30', '2023-07-22 14:42:08', 0),
('347ef8621b1348433378c6c25f62912703e59eeeac2dedbe251cdcb181578da08ed9f36698f35a3c', '7af95001dcc9a3d4a33d4c6642fc0ee580902b4944f3b040194d46608e994e1c7398ef2cde344f36', '2023-05-23 19:38:40', 0),
('3596588632e2a33cae263cfd58ab2134a7213ea864c396f2ebe9ad2712c6010b85372dd8f14c6566', 'bbb7a746260341d6bc04ece807aebd440505572a75f2bf9cb9c7e1f8230f22fa2c185ab1355c6ef5', '2023-05-23 21:07:48', 0),
('35d99c1b4d71589c59446ff124993b7eb9b04682d298f28fd8d1073c90fd651ffc464f4aff50360f', '3919c85e44a01956df129b134a367a202a5414c91414f2ffe197986c61212bf66779ed6550d79eaf', '2023-07-13 18:21:34', 0),
('3663f19ef4266fef4261435fa5ec9b8367ccfeaec8cae1338b80be81f98d4d3dfee8285e8840dd81', 'b9faffbc3cb770731426b882770d2165f1454ff575434e5d7402552b9bf46d2cc0cd37c674492699', '2023-05-24 18:37:21', 0),
('38aba38e9296a679d406e6a8d3bfcdbc7cb8f440267085011af57cc4024383ffe8c5a54c4f4e6409', 'e30014904b97e9dc0db465d3e8a65b4680faddb3b13169e6beb340601cca46aa486beddf5931d1de', '2023-07-08 14:27:58', 0),
('38d95bb17120e8f52d75800f621bd118052b895ed97df54014274080c6b60d303b3425ee3fe04c6d', 'f56d85cecf0fe36fe9dbfc45c3ba9f5e5e02d049b3fdfd617015cfe89ba83fb12a4340663f9c1943', '2023-07-08 18:09:30', 0),
('3fcfcb9cefb857c612aed8ceab7eb7cc8cef6055e2bb321c34f22ae581f67798c72310a87bdd9d6e', '8c94418f4f665533b04b5e71043dde0ba4a0fed45a048f328c1988ecd1c5855119284be94d6feb4f', '2023-07-08 14:16:51', 0),
('40aba832dbf20bcc57bc80f5a8eb3d6a9dddd697eab610dd3ef269867e75a8a60b3b6e7554ae59e1', 'a5be692440b406b9399f6dea7a326a2f1dc12a0e7b6b9c6a3852c3a247e33f6d894dd2a9933dcbde', '2023-05-23 19:46:21', 0),
('43b17d17441aa74dbcb615a035450db35d494dc044f528fb1868ecde0f86c650a66410f216a6056c', '4361ece95f3784c60ec4b43fcaf4b5d090818cb4a1936fa28329c299d4d878624918c8ccc521abaa', '2023-05-26 17:44:20', 0),
('450a5fcdb1b0568f8ed15a11a984a669646d51abb87ec7d3fca05ab752c4c913a7ceb034ef648c97', 'bf4cc7a1deb59d0a91911a94d8fb5dfa933a8559986c2b398acaa2fef04634036f7cc220f9b1e030', '2023-05-24 05:27:12', 0),
('46a3232df625c2d4c1f54a59940cea30ae0715f0a0a7ec75e8910e256767b49c273af62c79a83340', '69539f7979b8b3ddccbdc9aa9ec060ea539700538d021276726957c5a441ff2785c6c99622e0a4e1', '2023-07-07 20:26:12', 0),
('46b3b40dc4448ff89249df0ac551f87ed33992eab1f62cffc807717ce40257617293b8e7540a3f7c', '10374b5cbd0b9c046f6e890f9ad1ea5691d0d5764a5b467b70d928328b04bd88fc1fe2acba14e067', '2023-05-24 18:45:50', 0),
('482c577d5e0c0d58462ecaf6fef3e1631ff08b1f2a96d5895173e29d8112ae0684b7381699d5dd3d', '45a37257dfa5690ff41013feab8a91b1d23b9c42912f6967c61c003e673d03334b4c9afe4934d4a0', '2023-06-23 13:30:12', 0),
('484022c1db9f876d9c6cd0e86fdaec750ad4b98d46985cd38cf5c6f52b718ba568370a1db035272f', '1b1423a1855832b668aeef151ba40dcb8b1e8bc3c271496d9bbb318e48ac358657fde5ff09fc9b40', '2023-06-03 21:26:14', 0),
('49fc2a02e28b444217244dd8e5315724c2618fe07655abc7c74597bef774f2d8cd957d8782932c2c', 'f810220237a1f96c8eb0417401bbd729122bd4b2579e9ab05ccaff5bfffa7907e883e01d2d4d0637', '2023-07-08 17:40:22', 0),
('4b33cc872a7e538a64337e2426e157fee25db651aed082ed6bab6821fae905af5fe2ccf49144ddbf', '4ca83d31a8ccb3af59db40a15e57a4bc53db73a2a0bdfd2143ce5158ef15a0987dd5dceba3fc3fc2', '2023-07-08 14:43:45', 0),
('4b46ba844b6071155b3f58b636ae5dc25bc8ef657bbce17682d615526baf09146695ea301468671c', '24581e0a8f2d2a8e0cd15ce72ee60e0e7a68ac1a54aaa856963ba1481113b120bbb8d04acb4f3d71', '2023-05-27 13:21:43', 0),
('4d3e2d78f770058d62fa781f218a713b7be29b5cd6a39a46597713e571973d96d0e0e9d1a43a26db', '137de26a2e57f6ca67a3f32cd662ad7095a4f266119c96fa21e522d91df281f68e65a7e99651cb0b', '2023-07-08 15:18:07', 0),
('4ed2aa163c67eef2fcaa09468c81598ab0c168cccf8a447fd99e640b87c31a89d6cfcf0c95450ddc', '6e3ca8667b47f818ebff4eb72fd0afe735db148ec3680bf96df8ca39d9ef6206fe0fca54a9bc9cc7', '2023-07-08 13:51:06', 0),
('4fc325cf2ae46cbf1cc35c54272799dedfd18d85fe5bd2aa5011f5b75d0d3aa45f1e2de3f8e06c14', '04547301abc1ff6d9c6aa8965933ab2d959cb3d08c4c5d2980264efe581b5d1c435aa1bc4d05965c', '2023-06-18 10:48:17', 0),
('5031033ba35ad6d1c99c4941c7f97c91c9a3a2e2e56f154f7b0874bc55b50e41bf20301b199671f5', 'e2e03b9f5203a42a86d5be7b2ef3fce2c9fe9f788ae19e3c59f5183691479c40d621d3f1b6b78d2f', '2023-06-10 20:14:45', 0),
('5062444b37d676cbd0ed7ac8ae2fa30d5f00b76c8f45637c17d078fb60f11c566fa78afa814f1fb2', 'ccb1935e2cabc9014cd975e23a2ce260a40ce183fa99583bb69eb41d51d84630dcea0b479adf27ee', '2023-05-20 17:35:22', 0),
('50ad41a768f98b23069a985edc14446ce63bf4b4d1c0611fd1c43990cd327451ac358fad071e286c', '15ebe98c5b64863e88d04cef7eea43f8e163f0aeef1b7ee484c3ea29da3dd852008e11cde2655655', '2023-05-23 19:15:55', 0),
('51fc4df48ed0893cdef478cc2e1ac5a7f38c53dce79558dc86539c1be4aeebded823e8aaf6ad8050', '8120b9fca9a48dd27926f329e5334bd640090b7d3b9d7a067c62c791f80d5a1648f46a5889c14795', '2023-07-08 21:34:38', 0),
('527050c15806afc6c13fea3df7e18cce826f7d349c4da197d43468397131ba399f1461b881809fd2', '6dd0b1f4dcdade75447a8136ca8c2f8ee737adb189d51c505147e41809bb2f4fdd8d2b52387f70eb', '2023-05-24 05:36:44', 0),
('532a32242ed07ab26d455a4c6e0232ec3ad466f2356178a5c09e198720887ef721d2aecd373c3b2c', '7d88cb3bf9e6b1633807e74c0824af0b69d35389238b6894cf56e2324c83a99e8520ae0a1c8ae4a2', '2023-05-24 06:30:10', 0),
('54aba910923cad0b37321962a843b98b0872f10662832319766d6e87375c67e15cc2fe608dccd5f7', '48de212651117ee04dcb3d4b06ddecff4c5e7b59b3056e5049818a3c4c262a53c6d7331a5586d2ea', '2023-06-18 11:36:44', 0),
('54e4ed2fefc7e71546226b6fcad908292572bc5a886f95d7ee640de65460697bf059ca2ce1c0771c', '3c7ce72284d56888d4917807453810019a7352a875b6c0fada9805b6428cb3e5f99304800f38e8ac', '2023-05-26 18:37:25', 0),
('55e125eeefcc025766c6006741b48b580c21411a3d148d25b7afc0867c854cc0a541a1160c224b50', '2bcc8b10d93c9164325fda9f9916442961a12e438c744079b4457ee4172a2e167a69e34518151c65', '2023-05-13 17:00:42', 0),
('5680198f3a1caa41fec45dea262ba4f7768eb047596e87771ceb7fc77c12e61147412f680cd53844', '16b9930b480afaa1e9a31e6f04e223cd0cadb63d37cfa1bcda6dd475a38a743fc17f05c4047278de', '2023-07-09 17:15:24', 0),
('568fe6a4ab4f06602065503d42a9708d14fea427487e3ef3c6cad4d85e620a6fc21e64e5fa855e35', '06bf80b0cbfa1e2ee7ab12460f9e5c9920dc8a872ab46614914be9434dffe7440f0f592e5c280af8', '2023-05-27 17:20:37', 0),
('56f0f61b0c1d4f7206a910e0d5ac571fede7bea3ba5fb2780f5d6c362d85b02fb0f6dfe092b9aa70', 'c821cadffc9bfda89ebec3669f2d39c99d5ea6c91a1dfe0da7aa553aff96c6bc31c168c233d00fde', '2023-05-23 18:05:20', 0),
('59a051651178be9244a506475491330486b825466201bf2cfbf51c31ee000533f1d423eefdd0fb97', 'fe1d89ff79110c7a4b63d2094079b6691cb8e1c92344d57357efc6c7893e334501dd5870587ea780', '2023-07-01 12:14:51', 0),
('5bff5b05732c65fc97fccb9002e6c0b5deefb1e5f04498438a536a13f684ed2a01b99acdb30c6659', '34222727af143ff4b17a549d337f81488e6be1f8aa107bb1df796e5466ccf9db0202c7374e48a39f', '2023-05-25 05:27:25', 0),
('5d8525491f57ef4bcd8f93312a098b9287236919deb884409df28ba8f106ca5c5dfa9c2726e01e5d', 'ccb6c15d642b0eadd107283178c817233493d9c6bbe628cf83285b277db38d10f0b7c8fe9c14488d', '2023-05-13 00:12:41', 0),
('5e685c925208a2fb9a965415aea4ff51085449d55f3073e3f512cbe0ce56cf642c66a60f751a6f64', '06c7d4202d18f56f56cf1aa8437aa230eba9a03cd565be92e315cbc7d1a7a2e7647d0218f7861caa', '2023-07-08 14:23:33', 0),
('5ec6bf5398edbce5961cae5e7adc768839938532739ab0433e17c9cf71dbfad371c6e692b8122b42', '754e85873916a1253a9668324d829d675f61a13a489b196a1ceae45b1f4ed43c10d2a96e06c42dc5', '2023-07-08 14:01:15', 0),
('62ec48445df38b19c4751477b9d46fdc9f4a99ebcc3ce9897fb3459482356682cd278694bb4ff8cd', 'ba41ebc99cd371c6f85b7268e149d42cc754c4a52e24527c2dcbe9508ea12a26c88ee1eb1cf84ac7', '2023-07-08 19:17:57', 0),
('639aabb5424166b368c49534be3ffb4e42f544fbaf44b335809aa63ef0af64c166171a168c2add69', 'd5ab9e844bee7ae18c81fde2f9445f25765919939207f7d6b4d9e2be4d4252a9d08778a63a257e90', '2023-05-29 18:49:29', 0),
('65a88d9e6b53e489ff8b3b4a53b76459f0568ab35a9ad8baf3cfe4330383b095319521dbef3d6b2c', 'fb402217e202c9e7d8db8314f5926530629f618898cb34fbbc3605dd60986bfa26e81603ca10a60b', '2023-06-14 19:52:25', 0),
('66a421071cfbd6c64131a18866eaa3c5b5eb856d314a6a4b3058040474fcbd2fb3ea84c5fac1db47', 'e6683da27f0ee333495f587be23eabcfd2aed4273825690f3129ad533074209d1a19a1c10cd945c2', '2023-05-13 17:46:44', 0),
('66d1f4118da42c5f02725092cb5e3bddafda8a15c70d9baf6cac40bd2830bdc2c7474f6b6115d11f', '09754adfb3ade3ee7dad82b1a83dc0517fefd3abf1ff18128d223b60c82aa844bdadfcaa2aa02058', '2023-05-06 14:40:10', 0),
('6811d68f14535d8b5821b9c2717e08726a91d1b42be6b6830d979b73652e7724012d9837860d9a6a', '0baa2b00d34f6de802b1effe296b831352a1c276458ca4682b8c7c141d31797e417cf9c8c08b70b7', '2023-07-08 14:33:04', 0),
('682b3fa7fd0131d0e7c61773e58029de46aa7e7e3b91ab57985fc7e9bea090cb7998be6849e4575b', 'a7e1c621a655949f4ebeefd5109a447d24a35897f6c4d74e1933e89a4bf0274114674700ded805f3', '2023-05-06 19:20:41', 0),
('6847a93149074e22efb5b00f0a37b20309522a37e841ca28e922b1699740d9dc60ae523c4a321b3d', 'dd2647e0b2d931ca91fce67f6c450fff6dedfddfae2a7f7e57d1c32bb97dd199e8f6390f6c08114e', '2023-05-20 17:32:39', 0),
('68b7ac7927ad28b55c2a96fba7c8e9280160b044dae835177003bc53a16305602883f68e8551d65b', 'ef99e77dafb47475407a66eb0a00052487d244f778083de15180c225db5c4d6075d480a039dd7cf9', '2023-05-23 19:37:10', 0),
('69a98a0f08245f4554320afbf7eb09f526caa232e25a4b51c8d62bf95f4a29c46629f50cec4360ca', 'aab98ed73357cb6df45691388457ff27f999666aaaa738f21740d742f0391d75dee341f1bd30d4ce', '2023-05-13 17:00:59', 0),
('6a50f82bc74ac2f96511e4eb765d5562d1ddaeb770cd72eb4ea3c441079bd3a5913e25bc34b00639', 'd5196e0e5f9e018d9680d2d28f7be7a78c1b177e56c089b292d388d436acba21e40e9f62279a6cff', '2023-07-08 11:44:53', 0),
('6b7a3bde139cde4b4cf76bb9ff93ef0738f719dcf70e05fe3d40601e802219f6a103544273950c81', '830a089fff2f4be380df220d842dbb5b3c711c8dcefb93ad55ba9e37a9ee790a6e6f0b9f9bfef476', '2023-07-08 14:18:50', 0),
('6f7efe2186903c7a1fd775052e31d7c9b220fc5d7ab23791771065efa72993cbff52e6653473c190', 'b5c7e7a353abe2c02478d3ab3dfb8c93092d1dd0b63bf26a842cece949fc1207d16f53f696f25fde', '2023-05-24 06:58:15', 0),
('70fa5a730851685c1a709a18c84057673d00ed8615a824c8855e2eeafc802c1c290e48a624565dbc', '4200c0d573d2e63fb1d7b7ce4c91708cb57aaef12ac6d99b3125b5559488bac15a938164c73bae0d', '2023-05-27 17:13:35', 0),
('7346fbfbd559b88771fd4b1f1cd15ecc6b45581fc49a60f524355c11cabeab3113f12d6688b5d23b', '43b4853801de19c73838906c737d25ecc2028fe901c6fe45b7f91e236d0a431166fadd9245050bbb', '2023-05-27 17:12:10', 0),
('74cbff303cde9fdfa997811d5310c08b3512f21231179eeed12d3d432ea16b24edefcca69ed5e050', '39a1f82e0b52698d8ce50f4c744fbe5e2e11f108bddc109fc24108ccdc3a1736f5d44e1f9ad094fa', '2023-06-30 14:40:52', 0),
('75cad2bbbfa4f21296978161a357c64185c5ed789a926b1b85c1393218c9675b1f885205f1fcc971', '15ece37314e1ddcb81ce42a0aac67f0e67867cea6c1f5e1a8d2cca3390b4d323c778da9866d61918', '2023-05-27 13:18:37', 0),
('777dc93cefd6fb25e3c6bd1853fce5d1b2cdd2ee1ffd2e32236cbdd993bd3ccd93d512fe90073f51', 'fe6584b4f257771ed582bb962c0af145f766da4d82fe363f657c9a57b1b29bcb42bb0c0684f5606b', '2023-06-22 13:15:27', 0),
('77d2da4003ad6ca695db859e9307c34e9fefe1775f2248446ccb3ca2149ea0488cfc5c68a0d527b2', '612164a06a796c8ea8936f52eec204010ff5b8bc1633c30f313d2f9c573642b8922d9dacfa5d5fc6', '2023-06-25 18:53:59', 0),
('789ce6c20ec147660a79c7b43966822bf0c779291cdcfff0b5ae7dd8c98c464f12e193134ece54ec', 'c3c86c4641914c49e67cb44a6d9dc8f214c13904338234ff05d82c208cb183e0ad6554a13f92fd9a', '2023-05-27 19:19:54', 0),
('78cd196f1bd3163b291e390dcddde06c2bd0bb4495a146d62c98efa28678a15a35f74b7377505823', 'b0365edbc58023a91db7f1e926d10d50fcdaff5b31292046a72f03ebe80cfc0b4f2428e08993e3e6', '2023-07-08 11:13:30', 0),
('7a1d2fcc584816581cf6123341404f064f1c346ecdaff9a6a7bc04092c4fe0060d0f0f9f53e65fcb', '58f2d1c798480efbcce58a487b081865b65e2385bfbf7930faaeb3ef22673c5d5821f7445615bd8e', '2023-07-08 08:42:39', 0),
('7b2e4f1e42564e15fab7c0c3ebf1f15f2235b8693847bc97aff33862ef03a7cbb986d1f4b2f6c1d2', 'f918902e60151eb7292ceb40622c56793073714b7f7cb266967d102c0a8a77f4b4ca3e5611056d25', '2023-07-08 11:40:45', 0),
('7bce71f21d41f35f3a4e7d5f695653fd39af902b7aa51d4f25701682b2db97c4e85bbc3123752cf4', 'efc0e79ae0a92d07277299d78d35eb1c356d38e546efa92280f1b85f4d1e386074c2e39afa4dd48d', '2023-05-25 05:28:08', 0),
('7dd8fa2b6394bab5559a705ba391a2a2f74bdff83f68a26960f43c0a0c4232d67a201589ef907cb1', '25331844d9da5dd9c1f590389fae7c34fc914a00ea881b54612dae6c155f02f25e0159079c672dea', '2023-05-29 19:18:48', 0),
('7faaa67fb29b8e03f59796d1adfb0415a1fbde24b78c32a250eea6f458741b42cf5e47bced320b60', '36a2d18188569b648c6426e9ebebc4895229e6d73b059b8a57bde1a80f2f065334b5618ae43eaa77', '2023-05-13 17:46:58', 0),
('7fb0384a4e229513d823a3c06bae0f278ddfc78339e3cfa86fbbbba5126a0da5f746c329783cb736', 'b5a37445c56dce47257bf1a8b976ac3ff187f9076ed7a426d790ee11914b910b52a6e722448a6fe5', '2023-07-08 19:13:56', 0),
('88775e18ad073f793c74b9b314f4bce224f05f15685759c3326e83d27f7394d8aa35c088f7f15472', '2e2d2fe5a2213a51d74bab63c7b47a1bc3ee03126198334873077a6b7d0ea67801adbc65e844e628', '2023-05-26 17:15:57', 0),
('893e1756d4c0496b4dbd52b3f1d15a8551a29ae06fc6bf08eef59838ca4118fb4e97f2ebad50a747', '737a4458d794eb9b350d5740cda97d88b5228512c7bec538261ce5f255d4867b5be95a64f7e035bd', '2023-05-26 14:49:32', 0),
('8aded4253861d5a886e5ae23b0867b14023a9a933ea479caf47b7914b2ea3e08c5382572be861c95', 'aecc33f0cf854869ea7aadb3a8f5fbd97d36097fa552006b07e8d463dec2509041217bbe1c329312', '2023-07-08 13:28:13', 0),
('8b88dd143b6ae4390b2b1ece725337ec7e27bd6e4edd2e2421b52b913a67605455dbe4eb956c08cb', 'eaf3b673e8fa1453881267a26d638680cf32f94e4f0c7602bdabb3d3bf35006a5393802d8a07dead', '2023-07-08 16:00:20', 0),
('8c3123d94b448debe81856029ba4b873fd419e317a8ade8e005054ad8808ed68866ea761d4755a50', 'b5049129d09580915c431e6e62f99a6fa6e5d561f940f7080078771cd521ab2e838684bb76aac0f6', '2023-05-24 06:15:58', 0),
('8c5297a800f6ef7bffe76c5522fdf9c22e03a36e56a1d1ba255c305659158309cde8c0174941cfbc', '6505d66e538d0bcc4af7dabcc6712314d8fda5df8d1f8ebe5f6e99bac9ec24df5a69f73a15049ebf', '2023-07-08 14:51:28', 0),
('8d36d647ee3ebd85c28bce588392891c02304f51ca34c281a65ac405cabe87ccd35df3e932f664fd', 'f2b720085cb669fc6040337ac20aa2ab96bc332573c6f2a23c03bd74c7c33eb3678b6f0f6053943b', '2023-05-18 22:09:05', 0),
('8db440f750367545c6adfdab9c996483e3f637c6ea442d8c5088848ed761cad211494ad7a993376d', '590241eea87e6ed19b55b3cc3437df92fc0d5b086079a22852245bd1ef7c4c42c05867f4b7ac2481', '2023-07-08 17:32:22', 0),
('8dbfd57c3bf5136a421be3eadb194261e3b3317e981064c02ee8882f3caf10aa7e25adeb6e5b064a', 'e7a4d1d963eac98d8e833ff07c8cc4132499214dec6b1aebdb0c1b9e0421eefba7bd84f5ca868d9c', '2023-05-24 18:37:49', 0),
('8f932be035dfc4be5e86c0c7c7d2a1920f84a02ee7eadb113c203adfb436e3b77efa0720b4bfee56', '3b0728cd2768561ff0257c7335623ad6aa661c168c5443ee38e10436a87520a51b37ee929f611006', '2023-05-24 06:13:24', 0),
('905d3a0632695bc050599269c9b922c440fbf3ecf28ea3a1ab46de6051af8c88a7de8fdddc8d8562', '11a1dbab964d35e1411c45905742834c8b6028bbc0953257c607cab7f8d8793d14e88e724ac65db9', '2023-05-24 06:15:13', 0),
('9210b31c1968836997495ee677c5dcb3fb3a02908d878bdfb1d28d194787ee3627f29a88684449de', 'b39a79515aa0632dffad60253813d48da8d0eec49a33c128819e697532a8523b6857469f24b1298c', '2023-05-24 18:41:02', 0),
('9214e42fb2d88c21ea09ee065e0feded478ae9aed2e0ecee3a6b5525b6387c1cd7062a1f403b6835', '482524a1fbaac78a3ad3e0e2871445705b798f68e323d5e20e77c0125e3c59a271dbba7b557e4be1', '2023-05-13 18:32:38', 0),
('9334b1bdbd93a3579121003f7df44fb0165faa45ebd241a297111fd1b1c403c5de1444980c490d57', 'fad16e5e3bac8f11dd2f2f8d903f728d4af076ad863b639ed7eab18a5b974e68e1d02542f47d7fdf', '2023-05-24 18:39:08', 0),
('945f844b4712e5317157251f6f3f5b417e00df33ecce63da7006409b741f67b25d3fb42f676a480c', '65ddba89c1ad220aee2dc89a51a74c23f6e9f90bdf3d73f99e70202e8e326da17cf1baa826e82b7c', '2023-05-23 18:49:22', 0),
('95767e069fc248a1dd7e7c82210c263abe4dc6f6a1fbc89dec010b82fea70dddc1a59a71c64183aa', 'bebf1369c6f6a06f7eb583e240457c0bab99e672962cd9b6f32a5d90794a394aa00deacb2163794c', '2023-07-07 23:24:14', 0),
('96490ccadda4b379ffa72ce5255130b96996cba7ac828bdb4fedc7e9d7fb2a1dbfff56590ebe7a5e', '9ed1864c6036db66b18cade5eed660a7f092cf6cff4d3a3d7e7d9c9f6e966d508938b36379681b38', '2023-05-26 18:12:22', 0),
('97b2d8776eb5b467adeded6fa7c3ee1a57ba6e1e72ce90d6917ce12a812129b2a849bd7d03fd8f96', '8c4580e061bf840f7f3a9d36fb714bf2bce35d476ace99c36e27dd9be2210ae165e8b5800115a8a9', '2023-05-26 17:31:12', 0),
('980e86cd564b005e26da36ac1b7857537fb3cd8e8f91fd62f8b2754fbb2b477419bbf84298080bd5', 'ce91e3c836bda14c8feb72686dc89219880633e7629ccd8e26e6b5fdef2e4a80d1caa03d85425f74', '2023-06-04 13:49:57', 0),
('9a7009fc8b7c135f8a65d3110233b87e4970c30386a9c1abddb30df00120057262231ad647dc4945', '4a14efda83b5504cf7ee20025c43c27d4c1383cdcb029a8dbc75cc93ee1342e173db78a0dac37550', '2023-05-13 17:53:42', 0),
('9b88d5b78c1e97e820f021834b35d479b0c7d8ef8137ab2c03ef7b1db622d737889e8c078d59abee', 'b317e533d7885a5a307f12d7988a12356fded11f49e386774fd1cf092001e96ce0e6582462175c33', '2023-05-23 18:14:05', 0),
('9c977769c784df16040b963c0e5428c24f71554e0a16d2b1789803a2e5524dbf41f2a5174d51ad78', 'f3eb185d11fd42da2408f2adc549a7f961fcfb561001c0cae9e894921f352f436b83d3626937fff3', '2023-07-08 17:25:56', 0),
('9d285ea75940122ea644fb39631b0c60e9600bd1f62822a4307bc63a2cabb62bdcaf286b3d6e4e83', 'e2d75212bbb98013faa84f29d9dc4b7f4a4a708cab38fa25c5f5b99eee7668ce44bec1a86eb31a93', '2023-05-11 16:02:28', 0),
('9dbeb159e4cf554a61aac86c37af2015d76828cde30ee5a028468bd88fdd8d4d5b44d81ab88a6ed7', '008782cb48b993969c143ce1cf17107a020c3288fd88148497864d42c2bd9df0715e67534ffa71d5', '2023-05-23 19:13:20', 0),
('9e1ec66c31788e33a17c8ef019a00232e0986d412ead7d130f389696359bdf8f8d432137a90bca9d', '7af95c65ff59ec08112f2646168657fbbf3067492ec03f64dacf7e0c2b8c52848952944ba3f5a0c1', '2023-05-20 16:50:35', 0),
('9e633ebe5fe4bae5c638069fccb0ba60afc699ca9048d2dac6bac76fedb56df96b2ed6936c2326c6', '4a30c5953ece4916e942b25596dc3e4572f19fdca853d0a1591faabaa236a43f7dc3063169f0454c', '2023-05-20 18:06:34', 0),
('9f2ae6f56a854db74a7a679c23a0dd15ddee999b1df719421f2d6e7bd1674ec26cad3ed33120bd75', 'ff6848a74e2f81f22ccdbc4a5361fd47f0d0448836c9607067efcc91034c6d2d84941b5f3cc8bc7f', '2023-05-24 05:39:20', 0),
('a5a415dd2243b298d4374812d1beb2d9e711f867dd42e8a90c131aa4553e831fba5feed6d4ee637f', '30e9aac80aea8223aeb72c46efc73a7c5dced413e356b228bdee8bd79c9c808697d213a1839ba14c', '2023-06-30 14:40:39', 0),
('a976ae7aeddf8f98bd0ce18fbb33903be33ec80eeb81ec5d4e51bceb17ce9c88944de232bafa416e', '73b278b9dee90bc1b8825164fdf491c365a33582445d762f7c6d6b9214fe777157654a2b9ff2932f', '2023-05-15 22:48:05', 0),
('a9fcbc523c50434825102ef1aa9a805a9af8bbd3bf26c1fd405ec13d0db507b776d7b08bcf294b02', '57439831dca697232e6c1280e6fc07fc172030f027e118bc35114321063a855edfd40b8b27e58d1a', '2023-06-24 08:50:39', 0),
('ab4cbc33afb00b05d7834f93686eb0dc0715993e10b9eef75576f0c3d978ea87a88e82388d0ff988', '471c7aae5f43fc96122a87edef45ef380a8bbe433f3b5adaf8ecd2c1d8eb95a4d8e49cc6701cbb3d', '2023-05-15 23:10:52', 0),
('abb99cfb5e0f12a8c4fbb77ed972c2c89b877ef1941222421f226be7e56807329ebd2a252dc22f6b', 'ee85a4362ccc34b9dca6560f2e91f3294b38e3edafdd5bd2015b9a146e8137ee483c372f790b4d18', '2023-05-15 07:19:23', 0),
('abd0e10f272db7ec382b5a9683892a8e51e8b8ab92c45eeeb34a64af033c8b1cfcb12f7f93393106', '92c064c6f27b42e704f01272835803ddb7ffcab84addaa9009e10e7d16c1f00da0729ad09c8e666b', '2023-07-08 13:58:55', 0),
('ac0874e1912db1b6cfc37cb2684526c18b5e945c111c7a4259c660a0a4c3b0ccf49b62734aefc90e', 'da9dd629eb1a54f32e935ea929dc3e4b5366e2d147dfe7145f8d22b61484c7b32da3ece5c13823ce', '2023-07-21 13:07:15', 0),
('ac4193bafd12887b40a0776e07e7a6f66e9c6a6c6f4fdc5cea1a2419dd19839de6a15df73c4b62dc', '5d770fcde7f8595f760ad6fd8237d1acbb555ec08caead875189aa3063b8b4374c83cbee8c12eedc', '2023-07-07 10:23:38', 0),
('af0ce05199ac9453bc724d2b6073b2a862bce5c9ff32128f35a4551a4b09fe7b483959bfc20b0faa', '8bdedc3fd85e3c7c3746cc04786ff71d68a644a08d8171c8510c4da1eb5dade806ede47b4712f95d', '2023-06-03 21:26:28', 0),
('af19a7d0d037aaeea4a07dfff44c5db663f78864701ac54eeed0479151cd0d3cda95f965f2e49f0e', '7b9ff35f383d9757e9f158b93cd0cab6c70edc285599388de25f09c6d23b30064f2f394b32c71fe5', '2023-06-30 12:34:03', 0),
('b0a128443fe2e93ffa6e7fe9a65bfdcbd452bc4b823bb25ce3250e48ce0e2312efb80abd21590972', '0fe91559c775df23b6a29a07ebd7143f13a7573b1b4ba7d6355fedd8b7da7149d4e38d836b0d891c', '2023-05-24 05:26:24', 0),
('b1ed82382fc07c6f0eda79c9ab4cba185f128dc4c733028f7daa555281e9d71d670ed28870d6c355', '6c5defdbb3be2a2180c9a31a2eec8be582197691a6170cf836b03c70b0ca993c77382724969773f4', '2023-07-08 17:37:48', 0),
('b4a366d99dd3b2f015e3390f2449d54bbb76c28027943b3f304670a8c4e58b29c4798e28631b2d3e', '45c537add6f09e67580c7a434bd6bdcac18a2dc0e2fc0524ab7bda193e934845947729e8dca8116e', '2023-05-23 20:28:20', 0),
('b6b7e52608d9993089f6293f9b45b142e529a7df76b5aaa532e4c400690ff45d8726883591ff9ae3', '8b312506e8b6b6e47b854020ed87a2a7fb3a0b77d53e12ccb9a040fae858af1a85e71ade57675675', '2023-06-24 13:22:36', 0),
('b76db0f743ebcc401d4d45a5f05c15d975dffd2d54f9c6c151f925e1cd47c97d79c83c2bb70b6963', '5738bc256397d1fcca5a5a6b06a79e0aac69272b4fbd344dd70967459321fd46ac1de44aeaf9fa92', '2023-05-20 16:48:50', 0),
('b77d172d7334b5bfe9b7df533a8eb6e47e8941a72ab0fa834342fb5a30b7a053a560f6c5d0fa129b', '7edcd69de74faaa6f62864568dccafa76423e55b7217ac1266a1633e7b36d175043e44f4180534ff', '2023-05-20 17:16:56', 0),
('b8354cb218a9d88db4324510929617f9897c8b03252d0eb207161df33b94056d3651c5f3b3d23d1f', 'ce3d9ca54f541bccbbaf7ad0ae6f376a803f8aa96bd77b5267d976f14bcad48e8d7e1577f8e3f784', '2023-06-18 09:51:36', 0),
('ba35b9214231f36acf2fc631c77a284e495fec877e1eaa320dbe9613fbcdfe197bef87a504f89e46', '24b66ff8de120d2549e817244691e11d82894bc8bb51f1842beb97cdf7c68c80930df0b4d1ef7810', '2023-07-08 17:42:26', 0),
('bad0d0f114b34eaecff1ea4d27dd434701f6e1762fe1eab6858b8cc92f25734418a1748a3fdec6bc', '35c11f1a9d1936671ce3f67fcc1ac32a66b30d6f2b2124b2c5d97e0c75b51525da80a05c995328a0', '2023-07-21 17:04:50', 0),
('bb4f75089856e5c5f6b08eb53ccfc00e8672382d7073a19e03cd4b6749ce6beb30ed248af0b76eca', '0aec7ae1458e1cd2e4ef583a4e75e00a91b10128b30b8740420cd8768cfd46f7390e678a783be920', '2023-07-08 17:59:32', 0),
('bb6009b98936dd231d4f004209fa586427cdfd340539924441b4ddde149985a365fe159becbbc6db', 'f49377bb1916843c7f4308f5965a6644f72d99ceaaa3fa06d4d1ba3bbf9049429564a8ac649af05b', '2023-05-26 17:22:38', 0),
('bcb43aa8644b8a46af3664adf1f1efc5dedf764f82c047b1d52bb66e8e35d15a458ec15101b0e331', '20803b3b468d3e6e7ff0c17699aee4aa2edb305d861e2ae808ff3c7209f4562d32a053c0540fafa8', '2023-06-24 10:37:20', 0),
('bce41a196a5927086aa1ab4c1da00a631fffde63029e7f96e6d85d3192c7341967278c6c125e8816', '6a6f245789ad1ef4e75a185ea12a371db9220449072b57325eb26940716db657ee0cebd1fe438494', '2023-05-20 18:19:14', 0),
('bce94da9c072e24d9da34d8266e3527623207267393abf11418453d2b8dc76b7afb96d739caaaa63', 'ba71af5964f952ea85b7df71c448f00f3ff09a6c3f5c3a0811a0829b4bb94ee4c9a3d9b9d414475d', '2023-05-13 18:09:18', 0),
('bd2b530a2af28842204478b023501fe0868561335d19fd4c321b10b9cab1089df0dcc6fcf33c23b9', '477f6d1da14e6ac9957a5e46f96fb70c7ac1a5d72e1b6e056962206e63b12346fc149553c789681a', '2023-05-29 18:13:21', 0),
('bd73d396ac65b072d9cd841941257816e28c270343814d26e69f94f8dba27a9d37eb6088ae99bac4', '86b7bba7fb90916c59f2164c52b47b1e11b094517476b909b351790ddf3e641094ce3915a1beb58d', '2023-05-26 20:15:20', 0),
('be08aa83a290c78f8e05b94b914c175565c0449b274bc082f1338632f4889cbdf31a789d8d22a2c0', '7f7b627700d524a201f51aebe4ade717ff193d3a037132f9a816478f9c89468b4bee71a3bde2c1fb', '2023-05-24 06:14:19', 0),
('be4a8fbcaaf5ddb82b1922f3ddfec4ebf0d72209c1e6b53f1da1aaa9445a7929a38464880fd3bfca', '914ac014824e44cdab88fce088f1ffc2e024fa998090c1f3aced15eb979665f81d2d4ea703bb81e7', '2023-06-30 22:23:36', 1),
('c137d75d48d258cc61c727978127346564b8ec3a6b7e5d2dac35eeac6c6673b861f1995eabe86d82', '1fd6be5b2a54f2b98e484154daf8739c9602a122ad63638a100d617d502f64f4b239eb46f1140d9d', '2023-05-23 19:06:53', 0),
('c211d8b7349c8346429f7dca0365db7ffb769639aa978bfd3a6b667e2ef511234dea66d50b17ab08', 'a8f294a3a54d0a9da8e9db494e19b0323dbbcf16463dbae102ae4f3fd6a395b1084a19d5beb5748d', '2023-06-18 06:24:30', 0),
('c2697b9ee263e873cbe9f995d7e7374f4f70c159afc0ba712fa572dcd9e313aa5bbcdea8d9186b7f', '64162038b1d80b329ae3b2ff81ad380094a27f46adebf668e775f3e3b3caf6b81bc5c9d590b389f0', '2023-07-12 17:06:41', 0),
('c27a39fd9dad01d6fc1904d5fbe2a64507a095bce1b7114975df5447f0489f1cc9959bb02513ab69', 'f4b3d47e22be9da9262785d23c157df281cfd8cde9b59d502a693bace47cd458841f2dbf88938bb2', '2023-05-26 11:32:18', 0),
('c74f2845953d80ade867fc6e70ffc3707f7fc3ff5723aede909dc72ad314c9aae75fefe902062eb1', '2e7941d410e2f2f70c58508b440d89a6559b05b692ffc369df04b2b2a684917196152e38386ed5d4', '2023-07-08 19:40:02', 0),
('c7c4a6759871bcc1b946de614d1e0bccee4de6fc2c3ac99742d9993d64b9ddb8720b28b670846698', 'a545b507860c7ac06f94f9d9757820c1d7ca11e9761088459c435e9877cb4717d4bf9518ba98717b', '2023-07-08 18:26:20', 0),
('ca1df72967d74deac7308252304d8b05b067d8aa511653d65607708c6191fa3fd888efdd486a0bd3', '7681fed38e7146a1c830c76e31aa512aa017b0423e32bcded83efc5ae70aa004935e10f3ca4564c3', '2023-05-24 12:18:00', 0),
('cad5b63fd77991e7192b5663d8a427260773f74782cff57915afbd027ffbb3e1a28a813a845e4bb6', 'a7ac44f8f3747f3fd11779368a692888cc0d558ab7030e304d282361d842d10b4f05e182a4cc815f', '2023-07-08 17:46:21', 0),
('cb526cab823ba17742d44fe6c3f1689f852c5a905473eb0577370b97a696297a7311c90c713bf6ba', '3e92b05610b3e3a2e1b1a652510e67c5b74c04a334bfbaae8e4451dae50dd101030a4dfac5b54c36', '2023-07-08 19:16:41', 0),
('cc024becfb78db94c3243955898e3c28f27263dda52df58ec4ca382f4a0703bfef1cebef2d6209f7', 'c2c556dbf789317d8cb570e987323bbf8d6c2627a5fb1ddf178437bbc130b212a407c3b68588375f', '2023-05-24 18:36:31', 0),
('ccbecd8f6dfcb29bb6fa2754fdcf74d2be2f2c692e134ab439e0bd9e16f2145f39b30f2e18f97bf3', '0da4e0438a3bc873a6023824da3a71721183da098c2c4c08df870247e819b4660e5a03b59c898215', '2023-05-27 16:04:53', 0),
('ccebe728e2216213656569bb43ad124ca6395f65f78a47b0abfffa823491d1e16f91be061a2b8294', '7a1fa922b4314b2cd7e5204013c35642be5eebcd9514298a4f7b538882fc16077300e5ae53fe71dc', '2023-05-24 18:53:29', 0),
('cd802eebe578bbd3db7e589ce0b42695b92a1ac88e0e588c14c1e0e21f8a36b207240f4c0932bcd0', 'f2c230c6b2a0a93bc26765e9bd57c948472c58aef7385a364c55d7f0285ed7fa92111fa00267edd2', '2023-06-23 13:32:12', 0),
('cf916599289fe9b102e078f868afd7f52be2163c9afa6b85f1a594e3068426f574e9206dd75f99d6', '8de384f3800b49c941adeae01d611866f63efdac568de8af486df1b119116f54e24be69893b79adb', '2023-05-23 18:52:05', 0),
('d2652fbbbd05a2b6cd08182b978230a9243b4b428f0c7c9ca68ce0ea56bb9028e29645d35fe0c333', 'dec9d9482daba6f51b72537627432589a6851bb0b2791aef39223c100057d3564b823769db3b548e', '2023-07-08 11:23:08', 0),
('d3409cb1fca888649acc3a81b246f3798693927f1930dc68aa6ff33120433fc10758f09e415eba82', 'c8d6d8bb14e654b69877d8fd15a68d437c4ff597486fe8608b723e4e0a0aa3ca5ab59829e7a82658', '2023-05-20 20:56:58', 0),
('d4c7698e602c2c58f9068577825eeb127ee9e15b756188d6478a80db66c1c7195ee3cd958398f519', 'd9bac1045aaa4305cb90e984ee9a6b7a78bc6fe776914525c511dbd8759ff77a271e5a15987e88e5', '2023-05-24 18:46:50', 0),
('d53c52d2147ca23ca89dee78c9433f6d5604de1b305a3ccfe25c74bb32325a55744e5e4ff3143fc9', '718c0be614b32af845355c439d55e5e91b88140ccd1a3353d3ae148ac0dd95e559e38f96abdc21a5', '2023-05-13 17:10:09', 0),
('d76fe7f699323d51708ced495a8f6dff4cdde151c1aa29a4a2d1048f42c91509cb85d850b512c78a', 'ba93c5361836f3c33981d6de08270d90b0daa46735e3860726b31a886111af5158503cc4717c9aeb', '2023-05-23 22:29:20', 0),
('d7a58c46d5b9826d5f052e32666bc8aacb96f9c9f9af971ef4c34defb979e0767e552b95b0b75e21', 'fadcabcdd7280a3099b9917458db970eff46bdd363b9cbcf42748cf3dd724d1e7b3eabed4ad672e5', '2023-07-22 15:50:41', 0),
('d83145b3a6c47a168b5c10bec779ca2412fbfd8e8d35837900f71582941a8a4e84c6bc2d6db13179', 'bebdff0015b9e0df186bbae53c4d9f55d9b7f4c37517669bd24017d27e6c4651024b701281777cb5', '2023-05-24 06:15:43', 0),
('da3dd792a292e06328294e5cd51e633fe4c785f17643b8296c29fba13a18270223c81d67704c7bc7', 'c6407447567962a40537105bccc6b1ae927beca9021b384163fa3ab164d4df23c975d56158e7f7d9', '2023-05-23 18:41:37', 0),
('dacde639a2438472fdfb3854bfd8aab66997983b356cf4243ad1a840fcaa85d0420d5a60dc4ea125', '12fdd762d12df6379bca4e22532434c5be4ca403966e3f27284cbf659c0bd2bfc5ed258c174d4bd1', '2023-07-08 14:25:52', 0),
('dafef9da14707e2a12f7c05f7ab4a7bd9d3301482e717b8ca274b1933ef664b59e27d3ba2611fe08', '5bab0d53a5ee3d58748de7ab9b9f813a7933e08ccc64cd1e54a5707396b6161499eabae28d387c05', '2023-07-08 19:59:39', 0),
('db940c639136a8f32c49f5909ba4c795c36f57e646e77c9b669d6d9cefcb97af3e836dcbf2636c52', '45d895cbcfb7bdc8abfd4ff7f0cf1076f1d05e40d871489cc5980cd9f2a96ecb4d59d4d4f6ee69c0', '2023-05-20 20:33:18', 0),
('de0d3854fadbf84a1909fc632492fcdfcfa52d9864e2aed2cc4a586aaa1fb134c92aa28d77c57ffa', '35caf77e47c718a07f08169ce5304b0572839400a230fa8c12b53c36e77a3638ace8224369b2144c', '2023-05-24 21:20:14', 0),
('e2bf3631e14c09f4e76d135a927676a5d7dccc925840446244b9dc749284cf04e786244a0ee21f1e', 'f20df678b504c2d9c3349c3ef1c11f815fd721f084891fff90ed74132bf67f85d7c5bdd5ce9341a4', '2023-05-23 19:34:03', 0),
('e3fb8d255aee275588d89912b13ee4af58d7a1dd27428826bdc889d52b2b734e78fc67ae7aa3b261', '70b7961f04707cbff169ec346f8b7cf294ac756a95c28debe67cb5196ff683b39d502c6603102bef', '2023-07-08 09:19:17', 0),
('e4846bfc518efd9bbbcbd2f030bb891814183d96d9df7aa70dd36d4506572e705fdde6d4bdf3b1f7', 'a47ab826c18c7a6d891141eef0b0852e96ed11a9f67d5d9076b65620b8c656c58685364b647452aa', '2023-05-24 05:38:45', 0),
('e5a54f2d26b1605460a6a609f79e04171113f9d4b533da88351d212d84c48215be2c1019a15f1798', '07601d7dfe119a56ed789f3c0d4a96888293175f2b48f3af71b7e7366c5e28a5d72a78ec25da2faa', '2023-07-08 08:45:36', 0),
('e7ecda6fc9d26857b27ded8d06f1214c3ab695324ed3b575f28c4975f4d8fdd8641cce81adcbd652', '27b81f32d9343ead941145ca29de6c5a521e82e0c1828fe55db62504c01661aa2c7d672c8875894a', '2023-07-08 18:49:41', 0),
('e8a8f7856995b1668f6740907082a9dadc095a993afe6b738131e8bde56f336aa18621b40ba3e9ac', '4dce174efd67a629fd31c45ce6ab3606e4715e2496eb32b7070405a28396b62b8a873a7bea0040b0', '2023-07-21 13:01:03', 0),
('e98d6cf175f119c425dd44936bea84d073e51ecbc19b483041b8050aedfc79305d598eab7041042e', '66932317625e1743e99084756d909f79551dbfd65e6c44e3aa0d42b3714326f8374302834a3a7686', '2023-07-07 22:54:35', 0),
('eb961111483ade099049d6b005580c75558feb5973a6db174bddacb9c91d855f87df48c1cfc4009e', 'dcfe4968c9a805ca2c7dfff42209b2fb62bda4a0d8e07a0e52c50f2937d8f81d0d52b19ca4173618', '2023-05-11 15:53:37', 0),
('ed4e67146533471932046e6010d68ef3e7bbdcb8e5d03e24465ef829e2a827bfcef44e7fecd52098', 'f1060e03f76d120612fe679942dc6fb198d0fe667765a1bc0b1b97ea0d142b8eb7fe780de72f0310', '2023-06-17 17:47:04', 0),
('f0a675355ad4b8df5297cb765fa4d5cc2415bbf6cbd5341558ec53d512f6baf87678ab5b158384ab', 'ecf6b0f86ffb750dbb220fd03796848415fdc5902798a4e5d3fdc51a5ce6c469ea6cdc36d52285a9', '2023-05-15 22:47:52', 0),
('f0a9e11c998527e5a567cb6b4bc2ff58ad5fe0c34dc8ec14088cfe74d36fd12f357c77929cf53238', 'bdfd6a75bf87f964ebcf31e9c6c9f10fa82997c6189ce6731b2fbf4f51b825af47147d744290faf7', '2023-05-24 05:26:48', 0),
('f0ea3d002e68eb5b3d89a43d23c5fa785106de470b4ee0dd861807dde2de30681810019152eb2186', '0d6de449babf49fe0607dffe73f82c7219ded6348d4864e5048cf7777b872c7fc61d5273ef6e00f4', '2023-05-13 17:09:59', 0),
('f2abbea2e82a279e5ffb00c47b9cf16f24c3fa9b207d8903991a069102fdd5980a16a89747479b96', '304451747f62d6d666a4b7b17d4a695fb2d7f511ebd22fc74f9ea7cd759a344e583e6a61250ce546', '2023-05-24 18:47:34', 0),
('f326b35d7361ccd343429aa9757ebf9c7eb6c0e82021bd463f5f2bf4219e6223d09a50722aeb106a', 'cff3abbd77bafab575053f4be6fd6ff52183ad94110b87ca566b0069ecbe0bb30856728d3c807c65', '2023-05-27 18:29:18', 0),
('f3553a8ff12f97f0490a44db03908a3abf7dfcf1fceceed6d7fa0e6a835c62f261600159b5287d1c', 'f5379fe97b0fa057f887483cc62bc92e23ca5bb20aa6640dcf66aefe9cefd2dc80bd837ea33d3bf2', '2023-05-29 18:54:01', 0),
('f36c5b19ff44a4bac8382898ee0a9fbee140cf354af2b67202cf092a86374853816169c2eba152fa', '1af507064a8622cd5d297b269f6976e84555f8d38d8076bfa6f63a8c2539f2e59ddbca94c3cc0099', '2023-05-27 19:14:29', 0),
('f42847d563f1fbcded01550787d895854b77fc540c63d99d0122142a34d48cb931a3b6d6f724f499', '6cc56dd5e48b66cfb7499eaaa80f9df637d92ffdf126c329dfea5d658fc1492c4cd0016de0d6e0b1', '2023-05-18 20:11:39', 0),
('f442bb3db9f89013684e27b35e455341403c9d1c7d0112f0fee52a826aba9c15f3e8442a653b57c1', 'fc5f455e50094c42b87794bed2305ca5004eb979cc441675754147b4d4a63572e389037234853447', '2023-05-20 19:01:17', 0),
('f5962c0361fb8de39e306cef321683ecd4e2478c61cc3acd9974407de87a4721babd97317b297b68', '23fe4a07b976b234555acf491522d36e47e3fae026a94311fc507af438af5e137f789b2f771c2e27', '2023-06-23 10:54:13', 0),
('f624f2f914edc6250c292c23cc39bb0251d2e35cacb2e2b185a5da11e30d93e2ed9cf23bfafd7937', 'c80ca523adbffe1299b6f5857af3ab9d3953d35be8d4fd0cd988e625421f4f8ded2f7c157bfcf8a4', '2023-07-13 18:05:00', 0),
('f675a58cc39ab424d78d0c15afdcd2a1052c0502a873f86ada0da0106abe41eaf6ec7cbc5f3bcff0', 'f7eeb1ab71459ac80f92de4f97a2646c479825dd9f2977105e55a6c9751448a920a5d48005843f9b', '2023-05-13 10:37:02', 0),
('f920af4ab883751eea4b91d66338e5171911cc21f8b3157d4deb89fe13bc87a7ab906f03bbd9823d', 'a6416d77fa11e1db775baaa73b042d0c73124382265ffeaaa9aa33a84828a337ab3d55011bfadea1', '2023-07-08 19:19:32', 0),
('f92d7a1b60a180769ca9d77e46ee0a8f3d35b9cc20bd16dfc12e50950168e924653272a37108d309', '1d815256b7a22b1922ce7061c3a43f08f11e3cbcc8a3eac46ca6ad081b118ac30da0d8ed1c4e9a5c', '2023-06-03 18:37:22', 0),
('f98da1a3b4ae79a08daa3c70b10e161ec9769e2a1f126e1c2df14c56f7eb716e51dbb71541931ac2', 'a6c1cb341ab0f2c580bfeb9abcb857185a40f2e425d7c072c238dadfd637e2b44e66cc42f41a793d', '2023-05-20 16:54:44', 0),
('f9e71af5b14d4b7c3d5f995ca0a48c31f5f817594305c87c640390fc0391ccf495de37899355f457', '0b4e136b47c4d9658aee0716fe8e5fef0c02c292d7227258c988d99a71cffd992fb832907701c3c0', '2023-07-07 16:15:49', 0),
('fbeb3f4a9532c5d4ceb02717e1fd69b24e6956312f9e3d7ccc047df5eee20dc260baa445479fdf95', '8ae4ad830cebd8f17660a7041451edcc10c4e345d409acb4c19b95fe5afd69f84bcd2d129aa27029', '2023-07-08 17:27:23', 0),
('fdc5d1505096c808fc7a35989c93c0e394a57c13295af40b984d05d4aa43cbd43cbb700d153ab70c', '3b25b132b0660068559e83807d251ad0af6ff9b1bc5e9eeb2f0f1c322f4fe03451afee07f4455865', '2023-05-20 17:34:43', 0),
('fe393f5c0a029b10f3d6b261bd25fb088f2d0e6ac5a9801038dbeb37b2da5928c436dfcd26b4df5b', '08531548848b4c9385ba4758cb071ace39b45a12413fb6e2e46780a228dd8d394fe6eecaa8dd97ba', '2023-05-23 19:45:23', 0),
('fed1bd53f76ff8bfed0fcb3d4d65ef98de49211259719c3714fe220154d7a856a58150c5125c8e08', '68ea3f92c4dea8fe679f099cafd709aef8c1a92dbf2e99122801764aec0e5bcc0a1d5136df40e91d', '2023-07-08 11:11:57', 0),
('ffe9c941fd3f171e38c49bd8178586496c88199dc4fa523d97339ae568e69baf44df9ab237a845f9', 'cee41fb2ca65b35f319bf124bdb856078d78b0524ba13818122fecc273f9be9307214eaab786c6e5', '2023-07-12 17:12:17', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `creation` datetime NOT NULL,
  `status` smallint(6) NOT NULL,
  `error` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `zamowienie` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniq` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentid` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `data`, `creation`, `status`, `error`, `zamowienie`, `uniq`, `paymentid`) VALUES
(1, 2, '[\"\\u00ff\"]', '2022-02-03 09:18:14', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(2, 2, '[\"\\u00ff\"]', '2022-02-04 18:10:18', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(3, 2, '[\"\\u00ff\"]', '2022-02-04 18:10:26', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(4, 2, '[\"\\u00ff\"]', '2022-02-04 18:10:31', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(5, 2, '[\"\\u00ff\"]', '2022-02-04 18:10:37', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(6, 2, '[\"\\u00ff\"]', '2022-02-04 18:10:41', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(7, 2, '[\"\\u00ff\"]', '2022-02-04 18:12:26', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(8, 2, '[\"\\u00ff\"]', '2022-02-04 18:12:57', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(9, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:02', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(10, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:06', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(11, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:09', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(12, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:14', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(13, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:18', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(14, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:20', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(15, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:24', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(16, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(17, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:30', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(18, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:33', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(19, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:36', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(20, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:39', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(21, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:42', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(22, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:46', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(23, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:49', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(24, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:52', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(25, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:55', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(26, 2, '[\"\\u00ff\"]', '2022-02-04 18:13:58', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(27, 2, '[\"\\u00ff\"]', '2022-02-04 18:14:02', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(28, 2, '[\"\\u00ff\"]', '2022-02-04 18:14:04', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(29, 2, '[\"\\u00ff\"]', '2022-02-04 18:14:07', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(30, 2, '[\"\\u00ff\"]', '2022-02-04 18:31:17', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(31, 2, '[\"\\u00ff\"]', '2022-02-04 18:32:17', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(32, 2, '[\"\\u00ff\"]', '2022-02-04 18:32:38', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(33, 2, '[\"\\u00ff\"]', '2022-02-04 18:33:01', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(34, 2, '[\"\\u00ff\"]', '2022-02-04 18:33:59', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(35, 2, '[\"\\u00ff\"]', '2022-02-04 18:34:49', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(36, 2, '[\"\\u00ff\"]', '2022-02-04 18:35:18', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(37, 2, '[\"\\u00ff\"]', '2022-02-04 18:42:30', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_61fd6586341ad', NULL),
(38, 2, '[\"\\u00ff\"]', '2022-02-04 18:42:52', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_61fd659c9e58b', NULL),
(39, 2, '[\"\\u00ff\"]', '2022-02-04 21:12:20', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(40, 2, '[\"\\u00ff\"]', '2022-02-06 14:25:32', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(41, 2, '[\"\\u00ff\"]', '2022-02-06 21:26:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(42, 2, '[\"\\u00ff\"]', '2022-02-06 21:37:15', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(43, 2, '[\"\\u00ff\"]', '2022-02-06 21:38:17', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(44, 2, '[\"\\u00ff\"]', '2022-02-06 21:40:13', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(45, 2, '[\"\\u00ff\"]', '2022-02-06 21:52:29', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(46, 2, '[\"\\u00ff\"]', '2022-02-06 21:58:19', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6200366bdcff9', NULL),
(47, 2, '[\"\\u00ff\"]', '2022-02-06 21:58:50', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6200368aa6599', NULL),
(48, 2, '[\"\\u00ff\"]', '2022-02-06 23:03:13', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620045a1d8e1d', NULL),
(49, 2, '[\"\\u00ff\"]', '2022-02-06 23:03:25', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620045ade0e8a', NULL),
(50, 2, '[\"\\u00ff\"]', '2022-02-06 23:04:03', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620045d3ae68b', NULL),
(51, 2, '[\"\\u00ff\"]', '2022-02-07 11:27:23', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6200f40b445d3', NULL),
(52, 2, '[\"\\u00ff\"]', '2022-02-07 11:36:22', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6200f626b7091', NULL),
(53, 2, '[\"\\u00ff\"]', '2022-02-07 11:37:14', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6200f65a437eb', NULL),
(54, 2, '[\"\\u00ff\"]', '2022-02-07 11:43:04', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(55, 2, '[\"\\u00ff\"]', '2022-02-07 11:43:10', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(56, 2, '[\"\\u00ff\"]', '2022-02-07 15:24:15', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(57, 2, '[\"\\u00ff\"]', '2022-02-07 15:24:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(58, 2, '[\"\\u00ff\"]', '2022-02-07 16:02:14', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620134767ea52', NULL),
(59, 2, '[\"\\u00ff\"]', '2022-02-07 16:02:30', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(60, 2, '[\"\\u00ff\"]', '2022-02-07 16:05:16', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(61, 2, '[\"\\u00ff\"]', '2022-02-07 16:06:13', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_62013565b3119', '5669'),
(62, 2, '[\"\\u00ff\"]', '2022-02-07 16:13:00', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620136fc127f3', NULL),
(63, 2, '[\"\\u00ff\"]', '2022-02-07 16:17:31', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(64, 2, '[\"\\u00ff\"]', '2022-02-07 16:18:41', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_62013851e079f', '5673'),
(65, 2, '[\"\\u00ff\"]', '2022-02-11 19:24:04', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6206a9c426213', NULL),
(66, 2, '[\"\\u00ff\"]', '2022-02-11 19:24:20', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6206a9d45e644', NULL),
(67, 2, '[\"\\u00ff\"]', '2022-02-11 19:24:40', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6206a9e8639d0', NULL),
(68, 2, '[\"\\u00ff\"]', '2022-02-12 07:10:28', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62074f5431e06', NULL),
(69, 2, '[\"\\u00ff\"]', '2022-02-12 07:10:28', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62074f54b062b', NULL),
(70, 2, '[\"\\u00ff\"]', '2022-02-12 07:10:54', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62074f6e2e79f', NULL),
(71, 2, '[\"\\u00ff\"]', '2022-02-12 07:11:13', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62074f810a026', NULL),
(72, 2, '[\"\\u00ff\"]', '2022-02-12 07:11:33', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62074f95a03e0', NULL),
(73, 2, '[\"\\u00ff\"]', '2022-02-12 07:12:10', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_62074fbacb378', '56.64'),
(74, 2, '[\"\\u00ff\"]', '2022-02-12 07:12:45', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(75, 2, '[\"\\u00ff\"]', '2022-02-12 07:16:44', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_620750cc76adc', NULL),
(76, 2, '[\"\\u00ff\"]', '2022-02-12 07:17:42', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(77, 2, '[\"\\u00ff\"]', '2022-02-12 12:21:22', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6207983214256', NULL),
(78, 2, '[\"\\u00ff\"]', '2022-02-17 03:42:20', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(79, 41, '[\"\\u00ff\"]', '2022-02-24 18:13:40', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217bcc46ecdc', '251.31'),
(80, 41, '[\"\\u00ff\"]', '2022-02-24 18:19:58', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217be3e3d3cf', '7.19'),
(81, 41, '[\"\\u00ff\"]', '2022-02-24 18:20:21', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(82, 41, '[\"\\u00ff\"]', '2022-02-24 19:19:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217cc380d6a6', '3.22'),
(83, 41, '[\"\\u00ff\"]', '2022-02-24 19:19:53', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(84, 41, '[\"\\u00ff\"]', '2022-02-24 20:12:26', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217d89a309f8', '3.22'),
(85, 41, '[\"\\u00ff\"]', '2022-02-24 20:19:33', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217da45553c9', '3.22'),
(86, 41, '[\"\\u00ff\"]', '2022-02-24 20:24:24', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217db68837c3', '385.09'),
(87, 41, '[\"\\u00ff\"]', '2022-02-24 20:25:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(88, 41, '[\"\\u00ff\"]', '2022-02-24 20:26:16', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217dbd87384c', '3.97'),
(89, 42, '[\"\\u00ff\"]', '2022-02-24 20:43:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(90, 42, '[\"\\u00ff\"]', '2022-02-24 20:44:06', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(91, 42, '[\"\\u00ff\"]', '2022-02-24 20:44:57', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(92, 41, '[\"\\u00ff\"]', '2022-02-24 20:52:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(93, 41, '[\"\\u00ff\"]', '2022-02-24 20:54:58', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(94, 41, '[\"\\u00ff\"]', '2022-02-24 20:55:43', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217e2bf480b5', '3.97'),
(95, 41, '[\"\\u00ff\"]', '2022-02-24 20:56:48', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217e300828c3', '3.97'),
(96, 41, '[\"\\u00ff\"]', '2022-02-24 21:02:09', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217e44107fd7', '127.37'),
(97, 41, '[\"\\u00ff\"]', '2022-02-24 21:03:20', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217e48887db2', '127.37'),
(98, 41, '[\"\\u00ff\"]', '2022-02-24 21:05:12', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(99, 41, '[\"\\u00ff\"]', '2022-02-24 21:05:45', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6217e51921407', '114.15'),
(100, 41, '[\"\\u00ff\"]', '2022-02-24 21:06:11', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(101, 42, '[\"\\u00ff\"]', '2022-02-24 21:19:11', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(102, 42, '[\"\\u00ff\"]', '2022-02-24 21:19:52', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(103, 41, '[\"\\u00ff\"]', '2022-02-25 09:35:07', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621894bb82dd2', '152.33'),
(104, 41, '[\"\\u00ff\"]', '2022-02-25 09:35:56', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(105, 41, '[\"\\u00ff\"]', '2022-02-25 09:37:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_62189550435d7', '141.21'),
(106, 41, '[\"\\u00ff\"]', '2022-02-25 09:38:14', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(107, 41, '[\"\\u00ff\"]', '2022-02-25 09:40:05', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(108, 41, '[\"\\u00ff\"]', '2022-02-25 09:41:15', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(109, 41, '[\"\\u00ff\"]', '2022-02-25 09:42:12', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(110, 41, '[\"\\u00ff\"]', '2022-02-25 09:42:32', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6218967833369', '99.97'),
(111, 41, '[\"\\u00ff\"]', '2022-02-25 09:44:32', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621896f0f06f2', '9597.12'),
(112, 41, '[\"\\u00ff\"]', '2022-02-25 09:44:41', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(113, 41, '[\"\\u00ff\"]', '2022-02-25 09:51:19', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6218988730d62', '22.35'),
(114, 41, '[\"\\u00ff\"]', '2022-02-25 09:52:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(115, 41, '[\"\\u00ff\"]', '2022-02-25 09:52:51', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621898e36890b', '11.23'),
(116, 41, '[\"\\u00ff\"]', '2022-02-25 09:53:47', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(117, 44, '[\"\\u00ff\"]', '2022-02-26 12:40:20', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621a11a44dfcc', '102.3'),
(118, 44, '[\"\\u00ff\"]', '2022-02-26 12:55:32', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621a153485096', '102.3'),
(119, 44, '[\"\\u00ff\"]', '2022-02-26 20:04:51', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621a79d31e1a8', '908.06'),
(120, 44, '[\"\\u00ff\"]', '2022-02-26 20:05:34', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(121, 44, '[\"\\u00ff\"]', '2022-02-26 20:18:47', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(122, 44, '[\"\\u00ff\"]', '2022-02-26 21:49:48', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621a926c1a432', '2.33'),
(123, 44, '[\"\\u00ff\"]', '2022-02-28 11:10:42', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(124, 44, '[\"\\u00ff\"]', '2022-02-28 11:22:21', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(125, 44, '[\"\\u00ff\"]', '2022-02-28 11:22:42', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(126, 44, '[\"\\u00ff\"]', '2022-02-28 11:26:54', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(127, 44, '[\"\\u00ff\"]', '2022-02-28 11:27:51', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(128, 44, '[\"\\u00ff\"]', '2022-02-28 11:34:47', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(129, 44, '[\"\\u00ff\"]', '2022-02-28 11:38:48', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(130, 44, '[\"\\u00ff\"]', '2022-02-28 11:39:37', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(131, 44, '[\"\\u00ff\"]', '2022-02-28 11:54:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(132, 44, '[\"\\u00ff\"]', '2022-02-28 12:25:04', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(133, 44, '[\"\\u00ff\"]', '2022-02-28 12:25:55', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(134, 44, '[\"\\u00ff\"]', '2022-02-28 12:28:41', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(135, 44, '[\"\\u00ff\"]', '2022-02-28 12:28:53', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(136, 44, '[\"\\u00ff\"]', '2022-02-28 12:29:46', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(137, 44, '[\"\\u00ff\"]', '2022-02-28 12:30:11', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(138, 44, '[\"\\u00ff\"]', '2022-02-28 12:30:20', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(139, 44, '[\"\\u00ff\"]', '2022-02-28 12:30:48', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(140, 44, '[\"\\u00ff\"]', '2022-02-28 12:33:44', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(141, 44, '[\"\\u00ff\"]', '2022-02-28 12:40:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(142, 44, '[\"\\u00ff\"]', '2022-02-28 12:42:42', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(143, 44, '[\"\\u00ff\"]', '2022-02-28 13:12:56', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(144, 44, '[\"\\u00ff\"]', '2022-02-28 13:13:52', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(145, 44, '[\"\\u00ff\"]', '2022-02-28 13:17:03', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(146, 44, '[\"\\u00ff\"]', '2022-02-28 13:37:26', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(147, 44, '[\"\\u00ff\"]', '2022-02-28 13:37:42', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(148, 44, '[\"\\u00ff\"]', '2022-02-28 13:40:08', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(149, 44, '[\"\\u00ff\"]', '2022-02-28 13:40:16', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(150, 44, '[\"\\u00ff\"]', '2022-02-28 13:59:12', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(151, 44, '[\"\\u00ff\"]', '2022-02-28 15:25:33', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(152, 44, '[\"\\u00ff\"]', '2022-02-28 15:33:52', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(153, 44, '[\"\\u00ff\"]', '2022-02-28 15:34:33', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(154, 44, '[\"\\u00ff\"]', '2022-02-28 15:35:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(155, 44, '[\"\\u00ff\"]', '2022-02-28 15:36:29', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(156, 44, '[\"\\u00ff\"]', '2022-02-28 15:38:47', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(157, 44, '[\"\\u00ff\"]', '2022-02-28 15:38:59', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(158, 44, '[\"\\u00ff\"]', '2022-02-28 15:39:29', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(159, 44, '[\"\\u00ff\"]', '2022-02-28 16:18:58', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(160, 44, '[\"\\u00ff\"]', '2022-02-28 16:19:53', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(161, 44, '[\"\\u00ff\"]', '2022-02-28 16:23:29', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(162, 44, '[\"\\u00ff\"]', '2022-02-28 16:24:41', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(163, 44, '[\"\\u00ff\"]', '2022-02-28 16:25:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(164, 44, '[\"\\u00ff\"]', '2022-02-28 16:33:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(165, 44, '[\"\\u00ff\"]', '2022-02-28 16:33:50', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(166, 44, '[\"\\u00ff\"]', '2022-02-28 16:34:23', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(167, 44, '[\"\\u00ff\"]', '2022-02-28 16:34:38', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(168, 44, '[\"\\u00ff\"]', '2022-02-28 16:37:56', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(169, 44, '[\"\\u00ff\"]', '2022-02-28 16:38:18', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(170, 44, '[\"\\u00ff\"]', '2022-02-28 16:38:39', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(171, 44, '[\"\\u00ff\"]', '2022-02-28 16:39:00', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(172, 44, '[\"\\u00ff\"]', '2022-02-28 17:03:45', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(173, 44, '[\"\\u00ff\"]', '2022-02-28 17:06:40', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf31020a0c', NULL),
(174, 44, '[\"\\u00ff\"]', '2022-02-28 17:06:51', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf31b77c87', NULL),
(175, 44, '[\"\\u00ff\"]', '2022-02-28 17:07:19', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf337b6b02', NULL),
(176, 44, '[\"\\u00ff\"]', '2022-02-28 17:07:43', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf34fa6297', '104.35'),
(177, 44, '[\"\\u00ff\"]', '2022-02-28 17:31:31', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf8e3632aa', NULL),
(178, 44, '[\"\\u00ff\"]', '2022-02-28 17:32:05', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cf905aca8b', NULL),
(179, 44, '[\"\\u00ff\"]', '2022-02-28 17:48:27', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621cfcdbdd528', '104.35'),
(180, 44, '[\"\\u00ff\"]', '2022-02-28 17:49:37', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621cfd213255b', '104.35'),
(181, 44, '[\"\\u00ff\"]', '2022-02-28 17:50:02', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cfd3a285ff', NULL),
(182, 44, '[\"\\u00ff\"]', '2022-02-28 17:51:29', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621cfd911bb57', '104.35'),
(183, 44, '[\"\\u00ff\"]', '2022-02-28 17:51:53', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621cfda9c87a3', NULL),
(184, 44, '[\"\\u00ff\"]', '2022-02-28 17:52:12', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(185, 44, '[\"\\u00ff\"]', '2022-02-28 17:52:40', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(186, 44, '[\"\\u00ff\"]', '2022-02-28 17:56:49', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(187, 44, '[\"\\u00ff\"]', '2022-02-28 17:58:05', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(188, 44, '[\"\\u00ff\"]', '2022-02-28 18:18:04', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(189, 44, '[\"\\u00ff\"]', '2022-02-28 19:55:35', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1aa74f214', NULL),
(190, 44, '[\"\\u00ff\"]', '2022-02-28 20:08:12', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1d9c6f311', NULL),
(191, 44, '[\"\\u00ff\"]', '2022-02-28 20:08:25', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1da8c4350', 'NO4F-1A0-QKN-JMA'),
(192, 44, '[\"\\u00ff\"]', '2022-02-28 20:09:51', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1dfeb6e8e', NULL),
(193, 44, '[\"\\u00ff\"]', '2022-02-28 20:10:07', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1e0f7beca', NULL),
(194, 44, '[\"\\u00ff\"]', '2022-02-28 20:10:42', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1e3261b66', NULL),
(195, 44, '[\"\\u00ff\"]', '2022-02-28 20:11:21', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621d1e5949095', 'NOBO-FTK-H93-UZW'),
(196, 44, '[\"\\u00ff\"]', '2022-02-28 21:03:34', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2a95c04be', NULL),
(197, 44, '[\"\\u00ff\"]', '2022-02-28 21:04:22', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2ac5e75f4', NULL),
(198, 44, '[\"\\u00ff\"]', '2022-02-28 21:06:21', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b3d80d32', NULL),
(199, 44, '[\"\\u00ff\"]', '2022-02-28 21:06:37', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b4d211ce', NULL),
(200, 44, '[\"\\u00ff\"]', '2022-02-28 21:06:42', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b5277dfa', NULL),
(201, 44, '[\"\\u00ff\"]', '2022-02-28 21:06:55', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b5f487bb', NULL),
(202, 44, '[\"\\u00ff\"]', '2022-02-28 21:07:41', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b8d8f8bc', NULL),
(203, 44, '[\"\\u00ff\"]', '2022-02-28 21:07:59', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2b9ec27d3', 'NOGB-13G-RG5-Q0M'),
(204, 44, '[\"\\u00ff\"]', '2022-02-28 21:11:10', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_621d2c5d9343f', 'NOBK-BBU-IIH-984'),
(205, 44, '[\"\\u00ff\"]', '2022-03-01 20:55:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621e7a383f945', '2.38'),
(206, 44, '[\"\\u00ff\"]', '2022-03-01 20:57:27', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_621e7aa714687', NULL),
(207, 44, '[\"\\u00ff\"]', '2022-03-01 21:01:42', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_621e7ba6ec189', '2.38'),
(208, 2, '[\"\\u00ff\"]', '2022-03-04 20:52:35', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(209, 2, '[\"\\u00ff\"]', '2022-03-04 23:21:29', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(210, 2, '[\"\\u00ff\"]', '2022-03-05 16:22:00', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_622380184e4df', NULL),
(211, 2, '[\"\\u00ff\"]', '2022-03-05 16:22:34', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_6223803a9550a', '6025'),
(212, 2, '[\"\\u00ff\"]', '2022-03-07 17:59:46', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62263a02106da', NULL),
(213, 2, '[\"\\u00ff\"]', '2022-03-07 18:05:06', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62263b421e01f', NULL),
(214, 2, '[\"\\u00ff\"]', '2022-04-19 09:45:09', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(215, 2, '[\"\\u00ff\"]', '2022-06-05 22:22:45', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(216, 57, '[\"\\u00ff\"]', '2022-06-07 08:08:07', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629eeb4730260', 'a87e819eb8'),
(217, 57, '[\"\\u00ff\"]', '2022-06-07 08:13:27', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eec872cd1f', '82.98'),
(218, 57, '[\"\\u00ff\"]', '2022-06-07 08:13:38', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eec92f0538', '82.98'),
(219, 57, '[\"\\u00ff\"]', '2022-06-07 08:17:01', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eed5d2e421', '82.98'),
(220, 57, '[\"\\u00ff\"]', '2022-06-07 08:18:35', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eedbb1002f', '82.98'),
(221, 57, '[\"\\u00ff\"]', '2022-06-07 08:19:11', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eeddfa7ae7', '82.98'),
(222, 57, '[\"\\u00ff\"]', '2022-06-07 08:22:03', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eee8bd12f3', '82.98'),
(223, 57, '[\"\\u00ff\"]', '2022-06-07 08:24:38', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629eef2644acb', '82.98'),
(224, 57, '[\"\\u00ff\"]', '2022-06-07 08:35:40', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef1bc316f5', '82.98'),
(225, 57, '[\"\\u00ff\"]', '2022-06-07 08:35:47', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef1c371e37', '82.98'),
(226, 57, '[\"\\u00ff\"]', '2022-06-07 08:36:48', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef20040365', '82.98'),
(227, 57, '[\"\\u00ff\"]', '2022-06-07 08:37:27', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef2271202c', '82.98'),
(228, 57, '[\"\\u00ff\"]', '2022-06-07 08:38:40', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef2707863c', '82.98'),
(229, 57, '[\"\\u00ff\"]', '2022-06-07 08:40:01', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef2c177d8c', '82.98'),
(230, 57, '[\"\\u00ff\"]', '2022-06-07 08:40:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef2e4bc6ab', '82.98'),
(231, 57, '[\"\\u00ff\"]', '2022-06-07 08:41:49', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef32d0eed1', '82.98'),
(232, 57, '[\"\\u00ff\"]', '2022-06-07 08:42:41', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef3617698d', '82.98'),
(233, 57, '[\"\\u00ff\"]', '2022-06-07 08:44:31', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef3cf8008f', '82.98'),
(234, 57, '[\"\\u00ff\"]', '2022-06-07 08:46:07', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef42fb095c', '82.98'),
(235, 57, '[\"\\u00ff\"]', '2022-06-07 08:46:18', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef43ab9dfa', '82.98'),
(236, 57, '[\"\\u00ff\"]', '2022-06-07 08:46:52', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef45ce8459', '82.98'),
(237, 57, '[\"\\u00ff\"]', '2022-06-07 08:47:11', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef46f9f683', '82.98'),
(238, 57, '[\"\\u00ff\"]', '2022-06-07 08:47:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef488b094f', '82.98'),
(239, 57, '[\"\\u00ff\"]', '2022-06-07 08:47:54', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef49ad5f3b', '82.98'),
(240, 57, '[\"\\u00ff\"]', '2022-06-07 08:48:07', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef4a7025fb', '82.98'),
(241, 57, '[\"\\u00ff\"]', '2022-06-07 08:48:27', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef4bbd2e65', '82.98'),
(242, 57, '[\"\\u00ff\"]', '2022-06-07 08:50:44', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef544bfe68', '82.98'),
(243, 57, '[\"\\u00ff\"]', '2022-06-07 08:51:12', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef560edb91', '82.98'),
(244, 57, '[\"\\u00ff\"]', '2022-06-07 08:51:15', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef563aa8b9', '82.98'),
(245, 57, '[\"\\u00ff\"]', '2022-06-07 08:51:38', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef57ac2e68', '7deb904adc'),
(246, 57, '[\"\\u00ff\"]', '2022-06-07 09:04:14', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629ef86d47d0d', 'NORF-JM4-GI1-PIR'),
(247, 57, '[\"\\u00ff\"]', '2022-06-07 09:50:18', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f033aba37c', NULL),
(248, 57, '[\"\\u00ff\"]', '2022-06-07 09:50:34', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629f034953a8b', 'NOIX-JK2-Q1J-2DG'),
(249, 57, '[\"\\u00ff\"]', '2022-06-07 09:52:10', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629f03aa03763', 'edf457ddca'),
(250, 57, '[\"\\u00ff\"]', '2022-06-07 09:52:51', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f03d303645', NULL),
(251, 57, '[\"\\u00ff\"]', '2022-06-07 09:53:07', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_629f03e3a023d', 'NOZO-BLQ-EL0-ALJ'),
(252, 57, '[\"\\u00ff\"]', '2022-06-07 10:09:25', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f07b5c936c', NULL),
(253, 57, '[\"\\u00ff\"]', '2022-06-07 10:09:56', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f07d44a68f', NULL),
(254, 57, '[\"\\u00ff\"]', '2022-06-07 10:11:09', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629f081d984af', 'bbdbf9b663'),
(255, 57, '[\"\\u00ff\"]', '2022-06-07 10:12:29', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f086dbcd89', NULL),
(256, 57, '[\"\\u00ff\"]', '2022-06-07 10:13:40', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f08b49a3ff', NULL),
(257, 57, '[\"\\u00ff\"]', '2022-06-07 10:13:53', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f08c19b121', NULL),
(258, 57, '[\"\\u00ff\"]', '2022-06-07 10:20:07', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(259, 57, '[\"\\u00ff\"]', '2022-06-07 10:20:33', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f0a5145d80', NULL),
(260, 57, '[\"\\u00ff\"]', '2022-06-07 10:48:16', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f10d0b3163', NULL),
(261, 57, '[\"\\u00ff\"]', '2022-06-07 10:48:31', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f10deba1fb', NULL),
(262, 2, '[\"\\u00ff\"]', '2022-06-07 11:55:40', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629f209bc0fcc', 'NOQO-EML-EOO-ZH4'),
(263, 57, '[\"\\u00ff\"]', '2022-06-07 12:03:19', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_629f226789d82', NULL),
(264, 57, '[\"\\u00ff\"]', '2022-06-07 12:06:43', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_629f233252e51', 'NOCN-YEB-L9K-9A0'),
(265, 57, '[\"\\u00ff\"]', '2022-06-07 15:11:12', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(266, 57, '[\"\\u00ff\"]', '2022-06-07 15:33:40', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(267, 57, '[\"\\u00ff\"]', '2022-06-07 15:34:57', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(268, 57, '[\"\\u00ff\"]', '2022-06-07 16:52:01', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(269, 57, '[\"\\u00ff\"]', '2022-06-07 17:06:13', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(270, 2, '[\"\\u00ff\"]', '2022-07-24 14:00:56', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_62dd34788fe5e', NULL),
(271, 2, '[\"\\u00ff\"]', '2022-07-24 14:01:31', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_62dd349a69038', 'NOUD-VDD-D1B-07S'),
(272, 57, '[\"\\u00ff\"]', '2022-10-03 19:46:18', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_633b1feaaaa5b', '76.98'),
(273, 57, '[\"\\u00ff\"]', '2022-10-03 19:47:21', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(274, 57, '[\"\\u00ff\"]', '2022-10-03 19:50:18', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_633b20da445ec', '76.98'),
(275, 57, '[\"\\u00ff\"]', '2022-10-03 19:56:04', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_633b2234133a5', '76.32'),
(276, 57, '[\"\\u00ff\"]', '2022-10-03 20:02:55', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(277, 57, '[\"\\u00ff\"]', '2022-10-03 20:04:48', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(278, 57, '[\"\\u00ff\"]', '2022-10-03 20:05:48', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(279, 57, '[\"\\u00ff\"]', '2022-10-03 20:08:59', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(280, 57, '[\"\\u00ff\"]', '2022-10-03 20:10:45', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(281, 57, '[\"\\u00ff\"]', '2022-10-03 20:11:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(282, 57, '[\"\\u00ff\"]', '2022-10-03 20:18:18', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(283, 57, '[\"\\u00ff\"]', '2022-10-03 20:19:38', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(284, 57, '[\"\\u00ff\"]', '2022-10-03 20:30:26', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(285, 57, '[\"\\u00ff\"]', '2022-10-03 20:37:13', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(286, 57, '[\"\\u00ff\"]', '2022-10-03 20:39:43', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(287, 57, '[\"\\u00ff\"]', '2022-10-03 21:14:26', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(288, 57, '[\"\\u00ff\"]', '2022-10-03 22:01:43', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(289, 57, '[\"\\u00ff\"]', '2022-10-03 22:04:33', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(290, 57, '[\"\\u00ff\"]', '2022-10-03 22:07:02', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(291, 57, '[\"\\u00ff\"]', '2022-10-03 22:21:43', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(292, 57, '[\"\\u00ff\"]', '2022-10-03 22:23:32', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(293, 57, '[\"\\u00ff\"]', '2022-10-03 22:26:17', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(294, 57, '[\"\\u00ff\"]', '2022-10-03 22:27:50', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(295, 57, '[\"\\u00ff\"]', '2022-10-03 22:29:32', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(296, 57, '[\"\\u00ff\"]', '2022-10-03 22:31:32', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(297, 57, '[\"\\u00ff\"]', '2022-10-03 22:33:05', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(298, 57, '[\"\\u00ff\"]', '2022-10-03 22:36:59', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(299, 57, '[\"\\u00ff\"]', '2022-10-03 22:38:10', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(300, 57, '[\"\\u00ff\"]', '2022-10-03 22:40:48', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(305, 57, '[\"\\u00ff\"]', '2022-10-04 17:53:00', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(306, 57, '[\"\\u00ff\"]', '2022-10-04 17:55:03', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_633c5757212a3', '34cd78d424'),
(307, 57, '[\"\\u00ff\"]', '2022-10-04 18:00:20', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(308, 57, '[\"\\u00ff\"]', '2022-10-04 18:01:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(309, 57, '[\"\\u00ff\"]', '2022-10-04 18:03:51', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(310, 57, '[\"\\u00ff\"]', '2022-10-04 18:11:45', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_633c5b41adeb4', NULL),
(311, 57, '[\"\\u00ff\"]', '2022-10-04 18:12:13', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_633c5b5d2a216', NULL),
(312, 57, '[\"\\u00ff\"]', '2022-10-04 18:12:38', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(313, 57, '[\"\\u00ff\"]', '2022-10-04 18:14:13', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(314, 57, '[\"\\u00ff\"]', '2022-10-04 18:14:49', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(315, 57, '[\"\\u00ff\"]', '2022-10-04 18:16:18', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(316, 104, '[\"\\u00ff\"]', '2022-11-05 15:07:20', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(317, 104, '[\"\\u00ff\"]', '2022-11-05 15:08:52', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(318, 104, '[\"\\u00ff\"]', '2022-11-05 15:09:15', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(319, 2, '[\"\\u00ff\"]', '2022-11-05 15:25:09', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_63667244e899d', 'NOPL-W79-CSE-RMO'),
(320, 105, '[\"\\u00ff\"]', '2022-11-05 16:42:46', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_63668476e3051', '5753.94'),
(321, 105, '[\"\\u00ff\"]', '2022-11-05 16:46:01', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_63668539d7155', '5653.97'),
(322, 111, '[\"\\u00ff\"]', '2022-11-06 09:33:20', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_6367715061f97', NULL),
(323, 111, '[\"\\u00ff\"]', '2022-11-06 09:33:36', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_63677160388cc', 'NOZV-N95-P55-17W'),
(324, 111, '[\"\\u00ff\"]', '2022-11-06 11:13:46', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(325, 57, '[\"\\u00ff\"]', '2022-11-20 20:10:15', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7b97bb49b', NULL),
(326, 57, '[\"\\u00ff\"]', '2022-11-20 20:10:33', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7ba96f4c2', NULL),
(327, 57, '[\"\\u00ff\"]', '2022-11-20 20:10:51', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7bbbb2789', NULL),
(328, 57, '[\"\\u00ff\"]', '2022-11-20 20:12:14', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7c0ec10fc', NULL),
(329, 57, '[\"\\u00ff\"]', '2022-11-20 20:13:47', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7c6ac4674', NULL),
(330, 57, '[\"\\u00ff\"]', '2022-11-20 20:15:02', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7cb65a611', NULL),
(331, 57, '[\"\\u00ff\"]', '2022-11-20 20:16:48', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7d207a758', NULL),
(332, 57, '[\"\\u00ff\"]', '2022-11-20 20:23:15', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7ea3b398a', NULL),
(333, 57, '[\"\\u00ff\"]', '2022-11-20 20:23:45', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7ec0a0fb5', 'NOW9-22O-LI6-NIM'),
(334, 57, '[\"\\u00ff\"]', '2022-11-20 20:25:18', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7f1dd98da', NULL),
(335, 57, '[\"\\u00ff\"]', '2022-11-20 20:25:25', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7f254f600', NULL),
(336, 57, '[\"\\u00ff\"]', '2022-11-20 20:25:59', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_637a7f470969e', 'NOFV-IOG-7AU-Z07'),
(337, 57, '[\"\\u00ff\"]', '2022-11-20 20:41:48', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_637a82fb88fca', 'NOO4-ODJ-EK3-TRX'),
(338, 57, '[\"\\u00ff\"]', '2022-11-20 20:42:51', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_637a833b7635b', 'NOFC-57Z-VXR-1U7'),
(339, 57, '[\"\\u00ff\"]', '2022-11-20 20:45:23', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(340, 57, '[\"\\u00ff\"]', '2022-11-20 20:45:58', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_637a83f5abcbb', 'NO51-K8X-ZXN-F9G'),
(341, 57, '[\"\\u00ff\"]', '2022-11-20 20:46:54', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a842e44b58', NULL),
(342, 57, '[\"\\u00ff\"]', '2022-11-20 20:47:09', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_637a843d1bbeb', 'NO84-5K8-8E1-1DY'),
(343, 57, '[\"\\u00ff\"]', '2022-11-20 20:58:56', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a86ffce60e', NULL),
(344, 57, '[\"\\u00ff\"]', '2022-11-20 20:59:51', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637a87370af94', NULL),
(345, 57, '[\"\\u00ff\"]', '2022-11-20 21:01:37', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_637a87a18400f', 'NO1U-S4I-VQM-JE2'),
(346, 57, '[\"\\u00ff\"]', '2022-11-24 19:06:21', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_637fb29d1b2b5', '558b1919b9'),
(347, 57, '[\"\\u00ff\"]', '2022-11-24 19:07:18', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_637fb2d687ae9', NULL),
(353, 114, '[\"\\u00ff\"]', '2022-12-23 17:54:43', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(354, 114, '[\"\\u00ff\"]', '2022-12-23 17:56:49', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(355, 114, '[\"\\u00ff\"]', '2022-12-23 18:13:41', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(357, 114, '[\"\\u00ff\"]', '2022-12-23 18:16:22', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(358, 114, '[\"\\u00ff\"]', '2022-12-23 18:32:09', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(359, 114, '[\"\\u00ff\"]', '2022-12-23 18:33:21', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(360, 114, '[\"\\u00ff\"]', '2022-12-23 18:36:38', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(361, 114, '[\"\\u00ff\"]', '2022-12-23 18:45:17', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(362, 114, '[\"\\u00ff\"]', '2022-12-23 18:47:32', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(363, 114, '[\"\\u00ff\"]', '2022-12-23 18:47:54', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(364, 114, '[\"\\u00ff\"]', '2022-12-23 18:50:53', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(365, 114, '[\"\\u00ff\"]', '2022-12-23 18:50:58', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(366, 114, '[\"\\u00ff\"]', '2022-12-23 18:51:07', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(367, 114, '[\"\\u00ff\"]', '2022-12-23 18:52:28', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(368, 114, '[\"\\u00ff\"]', '2022-12-23 18:53:44', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(369, 114, '[\"\\u00ff\"]', '2022-12-23 18:54:15', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(370, 114, '[\"\\u00ff\"]', '2022-12-23 18:54:19', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(371, 114, '[\"\\u00ff\"]', '2022-12-23 18:55:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(372, 114, '[\"\\u00ff\"]', '2022-12-23 18:55:59', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(373, 114, '[\"\\u00ff\"]', '2022-12-23 18:57:21', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(374, 114, '[\"\\u00ff\"]', '2022-12-23 18:57:51', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(375, 114, '[\"\\u00ff\"]', '2022-12-23 18:59:05', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(376, 114, '[\"\\u00ff\"]', '2022-12-23 18:59:18', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(377, 114, '[\"\\u00ff\"]', '2022-12-23 18:59:29', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(378, 114, '[\"\\u00ff\"]', '2022-12-23 18:59:42', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(379, 114, '[\"\\u00ff\"]', '2022-12-23 19:07:26', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(380, 114, '[\"\\u00ff\"]', '2022-12-23 19:08:44', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(381, 114, '[\"\\u00ff\"]', '2022-12-23 19:17:15', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(382, 114, '[\"\\u00ff\"]', '2022-12-23 19:20:22', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(383, 114, '[\"\\u00ff\"]', '2022-12-23 19:21:32', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(384, 114, '[\"\\u00ff\"]', '2022-12-23 19:24:53', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(385, 114, '[\"\\u00ff\"]', '2022-12-23 19:25:17', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(386, 114, '[\"\\u00ff\"]', '2022-12-23 19:49:37', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(387, 114, '[\"\\u00ff\"]', '2022-12-23 19:50:24', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(388, 114, '[\"\\u00ff\"]', '2022-12-23 19:54:02', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(389, 114, '[\"\\u00ff\"]', '2022-12-23 19:54:17', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(390, 114, '[\"\\u00ff\"]', '2022-12-23 19:54:40', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(391, 114, '[\"\\u00ff\"]', '2022-12-23 19:56:02', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(392, 114, '[\"\\u00ff\"]', '2022-12-23 19:56:56', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(393, 114, '[\"\\u00ff\"]', '2022-12-23 19:57:02', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(394, 114, '[\"\\u00ff\"]', '2022-12-23 19:57:13', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(395, 114, '[\"\\u00ff\"]', '2022-12-23 19:58:14', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(396, 114, '[\"\\u00ff\"]', '2022-12-23 19:58:39', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(397, 114, '[\"\\u00ff\"]', '2022-12-23 20:01:30', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(398, 114, '[\"\\u00ff\"]', '2022-12-23 20:05:01', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(399, 114, '[\"\\u00ff\"]', '2022-12-23 20:08:15', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(400, 114, '[\"\\u00ff\"]', '2022-12-23 20:09:38', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(401, 114, '[\"\\u00ff\"]', '2022-12-23 20:09:54', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(402, 114, '[\"\\u00ff\"]', '2022-12-23 20:10:20', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(403, 114, '[\"\\u00ff\"]', '2022-12-23 20:10:29', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(404, 114, '[\"\\u00ff\"]', '2022-12-23 20:10:40', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(405, 114, '[\"\\u00ff\"]', '2022-12-23 20:12:54', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(406, 114, '[\"\\u00ff\"]', '2022-12-23 20:49:45', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(407, 114, '[\"\\u00ff\"]', '2022-12-23 21:01:36', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(408, 114, '[\"\\u00ff\"]', '2022-12-23 21:07:42', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(409, 114, '[\"\\u00ff\"]', '2022-12-23 21:07:46', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(410, 114, '[\"\\u00ff\"]', '2022-12-23 21:07:52', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(411, 114, '[\"\\u00ff\"]', '2022-12-23 21:11:13', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(412, 114, '[\"\\u00ff\"]', '2022-12-23 21:12:40', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(413, 114, '[\"\\u00ff\"]', '2022-12-23 21:12:46', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(414, 114, '[\"\\u00ff\"]', '2022-12-23 21:13:00', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(415, 114, '[\"\\u00ff\"]', '2022-12-23 21:13:25', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(416, 114, '[\"\\u00ff\"]', '2022-12-23 21:13:51', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(417, 114, '[\"\\u00ff\"]', '2022-12-23 21:20:12', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(418, 114, '[\"\\u00ff\"]', '2022-12-23 21:28:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(419, 114, '[\"\\u00ff\"]', '2022-12-23 21:30:15', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(420, 114, '[\"\\u00ff\"]', '2022-12-23 21:30:27', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(421, 114, '[\"\\u00ff\"]', '2022-12-23 21:31:14', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(422, 114, '[\"\\u00ff\"]', '2022-12-23 21:31:27', 0, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(423, 114, '[\"\\u00ff\"]', '2022-12-23 21:31:40', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(425, 114, '[\"\\u00ff\"]', '2022-12-24 08:51:39', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(426, 114, '[\"\\u00ff\"]', '2022-12-24 09:13:21', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(433, 114, '[\"\\u00ff\"]', '2023-01-07 16:50:47', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(434, 114, '[\"\\u00ff\"]', '2023-01-08 08:51:08', 6, '[\"\\u00ff\"]', 'ÿ', NULL, NULL),
(435, 57, '[\"\\u00ff\"]', '2023-01-08 11:15:17', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_63ba97b5e3f6e', '57.43'),
(436, 57, '[\"\\u00ff\"]', '2023-01-08 11:15:19', 6, '[\"\\u00ff\"]', 'ÿ', 'pay_63ba97b76b5cd', '57.43'),
(438, 57, '[\"\\u00ff\"]', '2023-01-09 06:20:57', 1, '[\"\\u00ff\"]', 'ÿ', 'pay_63bba43917443', NULL),
(439, 57, '[\"\\u00ff\"]', '2023-01-09 06:21:29', 99, '[\"\\u00ff\"]', 'ÿ', 'pay_63bba459ecfe3', 'fa0f918ccd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paydelivery`
--

CREATE TABLE `paydelivery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `fieldsforbuyers` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `paydelivery`
--

INSERT INTO `paydelivery` (`id`, `user_id`, `data`, `fieldsforbuyers`) VALUES
(1, 2, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(2, 3, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(14, 15, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(15, 16, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(16, 17, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(17, 18, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(18, 19, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(19, 20, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(20, 21, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(21, 22, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(22, 23, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(23, 24, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(24, 25, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(25, 26, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(26, 27, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(27, 28, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(28, 29, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(29, 30, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(30, 31, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(31, 32, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(32, 33, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(33, 34, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(34, 35, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(35, 36, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(36, 37, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(37, 38, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(38, 39, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(39, 40, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(40, 41, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(41, 42, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(42, 43, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(43, 44, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(44, 45, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(45, 46, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(46, 47, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(47, 48, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(48, 49, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(49, 50, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(50, 53, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(51, 54, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(52, 55, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(53, 56, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(54, 57, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(55, 58, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(56, 59, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(57, 60, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(58, 65, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(59, 66, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(60, 67, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(61, 68, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(62, 69, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(63, 70, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(64, 71, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(65, 72, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(66, 73, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(67, 74, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(68, 75, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(69, 76, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(70, 77, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(71, 78, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(72, 79, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(73, 80, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(74, 81, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(75, 82, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(76, 83, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(77, 84, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(78, 85, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(79, 86, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(80, 87, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(81, 88, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(82, 89, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(83, 90, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(84, 91, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(85, 92, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(86, 93, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(87, 94, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(88, 95, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(89, 96, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(90, 97, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(91, 98, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(92, 99, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(93, 100, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(94, 101, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(95, 102, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(96, 103, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(97, 104, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(98, 105, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(99, 106, '[]', '[]'),
(100, 107, '[]', '[]'),
(101, 108, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(102, 109, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(103, 110, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(104, 111, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(105, 112, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(106, 113, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(107, 114, '[\"\\u00ff\"]', '[\"\\u00ff\"]'),
(108, 115, '[\"\\u00ff\"]', '[\"\\u00ff\"]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paynow`
--

CREATE TABLE `paynow` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `identyfikator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `klucz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `paynow`
--

INSERT INTO `paynow` (`id`, `user_id`, `identyfikator`, `klucz`) VALUES
(1, 2, '4d2800af-c340-40d6-82ee-0b19899dcdb2', '6bb0c5dd-6efb-46fb-aa9e-754dbdbc55b7'),
(2, 3, '', ''),
(14, 15, '', ''),
(15, 16, '', ''),
(16, 17, '', ''),
(17, 18, '', ''),
(18, 19, '', ''),
(19, 20, '', ''),
(20, 21, '', ''),
(21, 22, '', ''),
(22, 23, '', ''),
(23, 24, '', ''),
(24, 25, '', ''),
(25, 26, '', ''),
(26, 27, '', ''),
(27, 28, '', ''),
(28, 29, '', ''),
(29, 30, '', ''),
(30, 31, '', ''),
(31, 32, '', ''),
(32, 33, '', ''),
(33, 34, '', ''),
(34, 35, '', ''),
(35, 36, '', ''),
(36, 37, '', ''),
(37, 38, '', ''),
(38, 39, '', ''),
(39, 40, '', ''),
(40, 41, '', ''),
(41, 42, '', ''),
(42, 43, '', ''),
(43, 44, '65c2f8a5-0aca-4ee1-8f9c-ad6267557b5d', 'ff46d6a6-4b15-47fb-8f4c-a2b4ad4d2349'),
(44, 45, '', ''),
(45, 46, '', ''),
(46, 47, '', ''),
(47, 48, '', ''),
(48, 49, '', ''),
(49, 50, '', ''),
(50, 53, '', ''),
(51, 54, '', ''),
(52, 55, '', ''),
(53, 56, '', ''),
(54, 57, 'd9a365a6-51b1-4c9d-94f3-4991300d93b7', '600e8ebc-b4a8-44b7-9e34-8409b52585a9'),
(55, 58, '', ''),
(56, 59, '', ''),
(57, 60, '', ''),
(58, 65, '', ''),
(59, 66, '', ''),
(60, 67, '', ''),
(61, 68, '', ''),
(62, 69, '', ''),
(63, 70, '', ''),
(64, 71, '', ''),
(65, 72, '', ''),
(66, 73, '', ''),
(67, 74, '', ''),
(68, 75, '', ''),
(69, 76, '', ''),
(70, 77, '', ''),
(71, 78, '', ''),
(72, 79, '', ''),
(73, 80, '', ''),
(74, 81, '', ''),
(75, 82, '', ''),
(76, 83, '', ''),
(77, 84, '', ''),
(78, 85, '', ''),
(79, 86, '', ''),
(80, 87, '', ''),
(81, 88, '', ''),
(82, 89, '', ''),
(83, 90, '', ''),
(84, 91, '', ''),
(85, 92, '', ''),
(86, 93, '', ''),
(87, 94, '', ''),
(88, 95, '', ''),
(89, 96, '', ''),
(90, 97, '', ''),
(91, 98, '', ''),
(92, 99, '', ''),
(93, 100, '', ''),
(94, 101, '', ''),
(95, 102, '', ''),
(96, 103, '', ''),
(97, 104, '', ''),
(98, 105, '', ''),
(99, 106, '', ''),
(100, 107, '', ''),
(101, 108, '', ''),
(102, 109, '', ''),
(103, 110, '', ''),
(104, 111, '6bb0c5dd-6efb-46fb-aa9e-754dbdbc55b7', '4d2800af-c340-40d6-82ee-0b19899dcdb2'),
(105, 112, '', ''),
(106, 113, '', ''),
(107, 114, '', ''),
(108, 115, '', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podstrony`
--

CREATE TABLE `podstrony` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekcje` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `podstrony`
--

INSERT INTO `podstrony` (`id`, `user_id`, `data`, `title`, `sekcje`, `time`) VALUES
(5, 2, 'ÿ', 'ÿ', '[]', '2022-02-04 18:01:32'),
(34, 57, 'ÿ', 'ÿ', '[]', '2022-05-14 18:22:18'),
(35, 57, 'ÿ', 'ÿ', '[]', '2022-05-15 14:14:24'),
(36, 57, 'ÿ', 'ÿ', '[]', '2022-05-15 14:15:03'),
(44, 58, 'ÿ', 'ÿ', '[\"\\u00ff\"]', '2022-06-01 20:22:32'),
(63, 93, 'ÿ', 'ÿ', '[\"\\u00ff\"]', '2022-10-15 21:00:28'),
(71, 100, 'ÿ', 'ÿ', '[]', '2022-10-28 20:46:21'),
(75, 100, 'ÿ', 'ÿ', '[]', '2022-10-28 20:58:44');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stopka1`
--

CREATE TABLE `stopka1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `stopka1`
--

INSERT INTO `stopka1` (`id`, `user_id`, `data`) VALUES
(1, 2, 'ÿ'),
(2, 34, 'ÿ'),
(3, 35, 'ÿ'),
(4, 36, 'ÿ'),
(5, 37, 'ÿ'),
(6, 38, 'ÿ'),
(7, 3, 'ÿ'),
(8, 39, 'ÿ'),
(9, 40, 'ÿ'),
(10, 41, 'ÿ'),
(11, 42, 'ÿ'),
(12, 43, 'ÿ'),
(13, 44, 'ÿ'),
(14, 45, 'ÿ'),
(15, 46, 'ÿ'),
(16, 47, 'ÿ'),
(17, 48, 'ÿ'),
(18, 49, 'ÿ'),
(19, 50, 'ÿ'),
(20, 53, 'ÿ'),
(21, 54, 'ÿ'),
(22, 55, 'ÿ'),
(23, 56, 'ÿ'),
(24, 57, 'ÿ'),
(25, 58, 'ÿ'),
(26, 59, 'ÿ'),
(27, 60, 'ÿ'),
(29, 65, 'ÿ'),
(30, 66, 'ÿ'),
(31, 67, 'ÿ'),
(32, 68, 'ÿ'),
(33, 69, 'ÿ'),
(34, 70, 'ÿ'),
(35, 71, 'ÿ'),
(36, 72, 'ÿ'),
(37, 73, 'ÿ'),
(38, 74, 'ÿ'),
(39, 75, 'ÿ'),
(40, 76, 'ÿ'),
(41, 77, 'ÿ'),
(42, 78, 'ÿ'),
(43, 79, 'ÿ'),
(44, 80, 'ÿ'),
(45, 81, 'ÿ'),
(46, 82, 'ÿ'),
(47, 83, 'ÿ'),
(48, 84, 'ÿ'),
(49, 85, 'ÿ'),
(50, 86, 'ÿ'),
(51, 87, 'ÿ'),
(52, 88, 'ÿ'),
(53, 89, 'ÿ'),
(54, 90, 'ÿ'),
(55, 91, 'ÿ'),
(56, 92, 'ÿ'),
(57, 93, 'ÿ'),
(58, 94, 'ÿ'),
(59, 95, 'ÿ'),
(60, 96, 'ÿ'),
(61, 97, 'ÿ'),
(62, 98, 'ÿ'),
(63, 99, 'ÿ'),
(64, 100, 'ÿ'),
(65, 101, 'ÿ'),
(66, 102, 'ÿ'),
(67, 103, 'ÿ'),
(68, 104, 'ÿ'),
(69, 105, 'ÿ'),
(70, 106, '<div class=\"bg-dark text-muted py-5\"><div class=\"row\"><div class=\"col-sm-4 py-1\"><strong>KONTAKT</strong><br />Jan Kowalski sp. z o.o.<br />ul. Krakowska 12<br />00-000 Warszawa<br />telefon +48 600 000 000<br />e-mail test@email.pl<br />pn-pt 9:00-17:00</div><div class=\"col-sm-4 py-1\"><strong>INFORMACJE</strong><br /><a href=\"#\">Zwroty</a><br /><a href=\"#\">Reklamacje</a><br /><a class=\"link-secondary\" href=\"#\">Regulamin</a><br /><a class=\"link-secondary\" href=\"#\">Polityka Prywatności</a></div><div class=\"col-sm-4 py-1\"><strong>O NAS</strong><br />Zespół 🙂<br />Kim jesteśmy ?</div></div></div>'),
(71, 107, '<div class=\"bg-dark text-muted py-5\"><div class=\"row\"><div class=\"col-sm-4 py-1\"><strong>KONTAKT</strong><br />Jan Kowalski sp. z o.o.<br />ul. Krakowska 12<br />00-000 Warszawa<br />telefon +48 600 000 000<br />e-mail test@email.pl<br />pn-pt 9:00-17:00</div><div class=\"col-sm-4 py-1\"><strong>INFORMACJE</strong><br /><a href=\"#\">Zwroty</a><br /><a href=\"#\">Reklamacje</a><br /><a class=\"link-secondary\" href=\"#\">Regulamin</a><br /><a class=\"link-secondary\" href=\"#\">Polityka Prywatności</a></div><div class=\"col-sm-4 py-1\"><strong>O NAS</strong><br />Zespół 🙂<br />Kim jesteśmy ?</div></div></div>'),
(72, 108, 'ÿ'),
(73, 109, 'ÿ'),
(74, 110, 'ÿ'),
(75, 111, 'ÿ'),
(76, 112, 'ÿ'),
(77, 113, 'ÿ'),
(78, 114, 'ÿ'),
(79, 115, 'ÿ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szablon1`
--

CREATE TABLE `szablon1` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `categoryproduct` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `szablon1`
--

INSERT INTO `szablon1` (`id`, `user_id`, `category`, `categoryproduct`, `data`) VALUES
(53, 2, 3, 0, '{\"ItemTitleColor\":\"text-warning\"}'),
(54, 2, 3, 1, '{\"CollectionBackgroundColor\":\"bg-danger\"}'),
(83, 2, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(87, 30, -2, 0, '{\"ManuColor1\":\"bg-danger\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-warning\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-danger\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(88, 31, -2, 0, '{\"ManuColor1\":\"bg-danger\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-warning\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-danger\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(89, 31, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(90, 32, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(91, 32, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(92, 33, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(93, 33, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(94, 34, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(95, 34, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(96, 35, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\"}'),
(97, 35, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(98, 36, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(99, 36, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(101, 2, 1, 1, '{\"CollectionWariantColor\":\"text-secondary\"}'),
(102, 37, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(103, 37, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(104, 38, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(105, 38, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(106, 39, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(107, 39, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(108, 40, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(109, 40, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(110, 41, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(111, 41, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(112, 42, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(113, 42, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(114, 43, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(117, 43, 2, 0, '{\"CollectionDalej\":\">\"}'),
(122, 44, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(151, 44, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\"}'),
(152, 45, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(153, 45, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(154, 46, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/testtest4.site\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(155, 46, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(156, 47, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-secondary\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(157, 47, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(158, 48, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(159, 48, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(160, 49, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(161, 49, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(162, 50, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(163, 50, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(164, 53, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(165, 53, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(166, 54, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(167, 54, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(168, 55, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-white\",\"BodyPaddingTop\":\"pt-0\",\"BodyMain\":\"min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(169, 55, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(170, 56, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-white\",\"BodyPaddingTop\":\"pt-0\",\"BodyMain\":\"min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(171, 56, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(172, 57, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-white\",\"BodyPaddingTop\":\"pt-0\",\"BodyMain\":\"min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(173, 57, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(174, 58, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(175, 58, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(176, 59, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(177, 59, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(178, 60, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(179, 60, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(180, 57, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-warning\"}'),
(215, 65, 3, 0, '{\"ItemTitleColor\":\"text-warning\"}'),
(216, 65, 3, 1, '{\"CollectionBackgroundColor\":\"bg-danger\"}'),
(217, 65, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(218, 65, 1, 1, '{\"CollectionWariantColor\":\"text-secondary\"}'),
(219, 66, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(220, 66, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}');
INSERT INTO `szablon1` (`id`, `user_id`, `category`, `categoryproduct`, `data`) VALUES
(223, 67, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\",\"Wyszukiwarka\":true}'),
(224, 67, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(225, 67, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(959, 69, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(960, 69, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(961, 70, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(962, 70, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(965, 72, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(966, 72, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(970, 68, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(971, 68, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1015, 71, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1016, 71, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1017, 73, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\"}'),
(1018, 73, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1019, 73, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-warning\"}'),
(1020, 74, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1021, 74, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1022, 75, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1023, 75, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1024, 76, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1025, 76, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1042, 77, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1043, 77, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1044, 77, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1045, 78, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1046, 78, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1057, 79, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1058, 79, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1059, 80, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1060, 80, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1110, 81, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1111, 81, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1112, 81, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1113, 82, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1114, 82, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1157, 83, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1158, 83, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1159, 83, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1160, 84, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1161, 84, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1172, 85, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1173, 85, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1174, 86, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1175, 86, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1176, 87, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1177, 87, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1178, 88, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1179, 88, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1192, 89, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1193, 89, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1194, 90, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1195, 90, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1196, 91, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1197, 91, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1198, 92, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1199, 92, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1200, 93, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1201, 93, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1202, 94, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1203, 94, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1204, 95, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1205, 95, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1206, 96, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1207, 96, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1208, 97, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1209, 97, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1210, 98, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1211, 98, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1212, 99, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1213, 99, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1214, 100, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1215, 100, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1218, 102, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1219, 102, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1220, 101, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}');
INSERT INTO `szablon1` (`id`, `user_id`, `category`, `categoryproduct`, `data`) VALUES
(1221, 101, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1222, 101, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1228, 103, -2, 0, '{\"ManuColor1\":\"bg-dark\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"domyslne\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1229, 103, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1230, 103, -1, 0, '{\"PageNext\":\"yutut\"}'),
(1231, 104, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1232, 104, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1233, 105, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1234, 105, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1235, 106, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1236, 106, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1237, 107, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1238, 107, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1239, 108, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1240, 108, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1248, 109, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1249, 109, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1250, 109, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1251, 110, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1252, 110, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1311, 111, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1312, 111, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1313, 111, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1319, 112, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-dark\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-dark\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"https:\\/\\/api.symetryczny.pl\\/picture2\\/logopng01\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"\",\"BodyFontColorStyle\":\"\"}'),
(1320, 112, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1323, 113, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\"}'),
(1324, 113, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1325, 113, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1328, 114, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\",\"Wyszukiwarka\":true}'),
(1329, 114, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1330, 114, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}'),
(1338, 115, -2, 0, '{\"ManuColor1\":\"bg-info\",\"ManuColor1Style\":\"#1b74e4\",\"NaglowekColor1\":\"link-light\",\"NaglowekColor1Style\":\"\",\"Rozwijane1Color1\":\"text-white-50\",\"Rozwijane1Color1Style\":\"\",\"KategorieColor1\":\"text-white-50\",\"KategorieColor1Style\":\"\",\"PodmenuTloColor1\":\"bg-white\",\"PodmenuTloColor1Style\":\"\",\"KategorieRozwijaneColor1\":\"text-dark\",\"KategorieRozwijaneColor1Style\":\"\",\"PrzyciskMenuTlo\":\"bg-transparent\",\"PrzyciskMenuTloStyle\":\"\",\"Logo1\":\"\",\"PodMenuTlo\":\"bg-body\",\"PodMenuTloStyle\":\"\",\"PodMenuCzcionka\":\"text-dark\",\"PodMenuCzcionkaStyle\":\"\",\"PodMenuLink\":\"link-primary\",\"PodMenuLinkStyle\":\"\",\"PodMenuButton\":\"btn-primary\",\"StronaTlo\":\"bg-light\",\"BodyPaddingTop\":\"\",\"BodyMarginTop\":\"mt-3\",\"BodyMain\":\"container min-vh-100\",\"StronaTloStyle\":\"\",\"Rozwijane1MobileColor1\":\"bg-info\",\"Rozwijane1MobileColor1Style\":\"#1b74e4\",\"BodyFontColorStyle\":\"\",\"CookieTextColor\":\"white\",\"CookieMessage\":\"Strona u\\u017cywa plik\\u00f3w cookie i innych element\\u00f3w s\\u0142u\\u017c\\u0105cych do przetwarzania danych. Celem jest usprawnienie dzia\\u0142ania strony.\",\"CookieDismiss\":\"Zgadzam si\\u0119.\",\"CookieLink\":\"czytaj wi\\u0119cej\",\"CookieHref\":\"https:\\/\\/www.google.com\\/search?q=cookie\",\"ButtonPodMenuText\":\"zaloguj\",\"ButtonRegiterText\":\"rejestracja\",\"InputLoginPlaceholder\":\"login\",\"InputPasswordPlaceholder\":\"has\\u0142o\",\"LogoutPodmenuText\":\"Wyloguj\",\"WalutaKwota\":\"z\\u0142.\",\"WalutaBank\":\"PLN\",\"ErrorWiadomosc\":\"b\\u0142\\u0105d komunikacji z serwerem rest api\",\"LogowanieOkWiadomosc\":\"Cze\\u015b\\u0107, logowanie poprawne\",\"LogowanieErriorWiadomosc\":\"nieudane logowanie\",\"WymaganePolWiadomosc\":\"wymagane pola nie zosta\\u0142y wype\\u0142nione\",\"NieWybranoPaczkomatuWiadomosc\":\"nie wybrano paczkomatu\",\"NieWybranoPlatDostawWiadomosc\":\"nie wybrano metody p\\u0142atno\\u015bci lub metody dostawy\",\"NieZamowienieWiadomosc\":\"nie uda\\u0142o si\\u0119 utworzy\\u0107 zam\\u00f3wienia\",\"NieWariantWiadomosc\":\"nie wybrano wariantu\",\"ZbytWieleKoszykWiadomosc\":\"zbyt wiele przedmiot\\u00f3w w koszyku\",\"Lang\":\"pl\",\"Wyszukiwarka\":true}'),
(1339, 115, 2, 1, '{\"CollectionTitleSize\":4,\"CollectionDescriptionColor\":\"text-dark\",\"CollectionPriceSize\":4,\"CollecionButton1Color\":\"btn-secondary\",\"CollectionTitleColor\":\"text-success\",\"CollectionPriceColor\":\"text-danger\"}'),
(1340, 115, -1, 0, '{\"ItemButton1Color\":\"btn-light\",\"ItemButton2Color\":\"btn-primary\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szablon2`
--

CREATE TABLE `szablon2` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekcje` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sekcje`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `szablon2`
--

INSERT INTO `szablon2` (`id`, `user_id`, `category`, `product`, `data`, `sekcje`) VALUES
(31, 58, 51, 0, 'ÿ', '[\"\\u00ff\"]'),
(32, 58, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(33, 58, 1, 0, 'ÿ', '[]'),
(34, 58, 1, 1, 'ÿ', '[]'),
(35, 58, 2, 1, 'ÿ', '[]'),
(36, 2, 1, 1, 'ÿ', '[]'),
(37, 2, 1, 0, 'ÿ', '[]'),
(38, 2, 210, 1, 'ÿ', '[]'),
(39, 57, 11, 0, 'ÿ', '[]'),
(40, 57, 11, 1, 'ÿ', '[]'),
(41, 57, 12, 0, 'ÿ', '[]'),
(42, 57, 12, 1, 'ÿ', '[]'),
(52, 65, 1, 1, 'ÿ', '[]'),
(53, 65, 1, 0, 'ÿ', '[]'),
(54, 65, 210, 1, 'ÿ', '[]'),
(55, 67, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(56, 67, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(57, 67, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(58, 67, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(263, 70, 2, 0, 'ÿ', '[]'),
(264, 70, 2, 1, 'ÿ', '[]'),
(267, 72, 2, 0, 'ÿ', '[]'),
(268, 72, 2, 1, 'ÿ', '[]'),
(273, 68, 2, 0, 'ÿ', '[]'),
(274, 68, 2, 1, 'ÿ', '[]'),
(305, 67, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(335, 71, 2, 0, 'ÿ', '[]'),
(336, 71, 2, 1, 'ÿ', '[]'),
(337, 73, 11, 0, 'ÿ', '[]'),
(338, 73, 11, 1, 'ÿ', '[]'),
(339, 73, 12, 0, 'ÿ', '[]'),
(340, 73, 12, 1, 'ÿ', '[]'),
(341, 73, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(342, 67, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(343, 67, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(344, 74, 2, 0, 'ÿ', '[]'),
(345, 74, 2, 1, 'ÿ', '[]'),
(346, 75, 2, 0, 'ÿ', '[]'),
(347, 75, 2, 1, 'ÿ', '[]'),
(348, 76, 2, 0, 'ÿ', '[]'),
(349, 76, 2, 1, 'ÿ', '[]'),
(382, 77, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(383, 77, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(384, 77, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(385, 77, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(386, 77, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(387, 77, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(388, 77, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(389, 78, 2, 0, 'ÿ', '[]'),
(390, 78, 2, 1, 'ÿ', '[]'),
(409, 79, 2, 0, 'ÿ', '[]'),
(410, 79, 2, 1, 'ÿ', '[]'),
(411, 80, 2, 0, 'ÿ', '[]'),
(412, 80, 2, 1, 'ÿ', '[]'),
(514, 81, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(515, 81, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(516, 81, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(517, 81, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(518, 81, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(519, 81, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(520, 81, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(521, 82, 2, 0, 'ÿ', '[]'),
(522, 82, 2, 1, 'ÿ', '[]'),
(605, 83, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(606, 83, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(607, 83, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(608, 83, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(609, 83, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(610, 83, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(611, 83, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(612, 84, 2, 0, 'ÿ', '[]'),
(613, 84, 2, 1, 'ÿ', '[]'),
(632, 85, 2, 0, 'ÿ', '[]'),
(633, 85, 2, 1, 'ÿ', '[]'),
(634, 86, 2, 0, 'ÿ', '[]'),
(635, 86, 2, 1, 'ÿ', '[]'),
(636, 87, 2, 0, 'ÿ', '[]'),
(637, 87, 2, 1, 'ÿ', '[]'),
(638, 88, 2, 0, 'ÿ', '[]'),
(639, 88, 2, 1, 'ÿ', '[]'),
(660, 89, 2, 0, 'ÿ', '[]'),
(661, 89, 2, 1, 'ÿ', '[]'),
(662, 90, 2, 0, 'ÿ', '[]'),
(663, 90, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(664, 91, 2, 0, 'ÿ', '[]'),
(665, 91, 2, 1, 'ÿ', '[]'),
(666, 92, 2, 0, 'ÿ', '[]'),
(667, 92, 2, 1, 'ÿ', '[]'),
(668, 93, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(669, 93, 2, 1, 'ÿ', '[]'),
(670, 94, 2, 0, 'ÿ', '[]'),
(671, 94, 2, 1, 'ÿ', '[]'),
(672, 95, 2, 0, 'ÿ', '[]'),
(673, 95, 2, 1, 'ÿ', '[]'),
(674, 96, 2, 0, 'ÿ', '[]'),
(675, 96, 2, 1, 'ÿ', '[]'),
(676, 97, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(677, 97, 2, 1, 'ÿ', '[]'),
(678, 98, 2, 0, 'ÿ', '[]'),
(679, 98, 2, 1, 'ÿ', '[]'),
(680, 99, 2, 0, 'ÿ', '[]'),
(681, 99, 2, 1, 'ÿ', '[]'),
(682, 100, 2, 0, 'ÿ', '[]'),
(683, 100, 2, 1, 'ÿ', '[]'),
(687, 102, 2, 0, 'ÿ', '[]'),
(688, 102, 2, 1, 'ÿ', '[]'),
(689, 101, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(690, 101, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(691, 101, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(692, 101, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(693, 101, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(694, 101, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(695, 101, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(705, 103, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(706, 103, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(707, 103, 210, 0, 'ÿ', '[\"\\u00ff\"]'),
(708, 103, 51, 0, 'ÿ', '[\"\\u00ff\"]'),
(709, 104, 2, 0, 'ÿ', '[]'),
(710, 104, 2, 1, 'ÿ', '[]'),
(711, 105, 2, 0, 'ÿ', '[]'),
(712, 105, 2, 1, 'ÿ', '[]'),
(713, 106, 2, 0, '<div class=\"row row-cols-1 row-cols-md-3 g-4\"><div>PoWtorZsZaBloN</div><div class=\"col\"><div class=\"card\"><div><img class=\"img-fluid\" src=\"[[PiCtUrE]]\" /></div><div class=\"card-body\"><p class=\"card-text\">[[ZMIENNA TYTUL1 LENGTH:0]]</p><a href=\"page1?parametr1=[[iDkAtEgOrIa]]&amp;tresc=[[iDpRzEdMiOt]]\"><button class=\"btn btn-primary\" tabindex=\"0\">zobacz</button></a></div></div></div><div>PoWtorZsZaBloN</div></div><div>[[ZMIENNA PAGELEFT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26lt%3B%3C%2Fbutton%3E]][[ZMIENNA PAGERIGHT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26gt%3B%3C%2Fbutton%3E]]</div>', '[]'),
(714, 106, 2, 1, '<div class=\"card my-3 p-3\"><div class=\"row\"><div class=\"col-sm-6\"><div class=\"mb-4\"><h2>[[ZMIENNA TYTUL1 LENGTH:0]]</h2><div class=\"fs-6\">[[ZMIENNA TRESC1 LENGTH:0]]</div></div><div>{{app-variant-select ,row=1,checkbox=,div1Class=,div1Style=,imgStyle=,imgClass=,imgDiv=%3Cdiv%20class%3D%22box22%22%3EZaMiAnAtEkSt%3C%2Fdiv%3E,nazwaDiv=%3Cspan%20class%3D%22text-secondary%22%3EZaMiAnAtEkSt%3C%2Fspan%3E}}</div><div class=\"my-2\"><div>{{app-changestate ,buttonLewa=%3Cbutton%20id%3D%22button-left%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%2020px%200%200%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-left%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-left%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-left%60).style.backgroundColor%3D%60%23efefef%60%22%3E-%3C%2Fbutton%3E,buttonPrawa=%3Cbutton%20id%3D%22button-right%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%200%200%2020px%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-right%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-right%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-right%60).style.backgroundColor%3D%60%23efefef%60%22%3E%2B%3C%2Fbutton%3E,inputStyle=text-align%3Acenter%3Bheight%3A40px%3Bwidth%3A50px%3Bborder%3A0%3Bfont-size%3A1.2rem%3B,inputClass=no-spin%20input-kupowanie-ilosc}}</div></div><div class=\"my-2\"><div>{{app-kupuje1 ,Tresc1=%3Cbutton%20id%3D%22button-kupowanie%22%20class%3D%22btn%20btn-light%22%20style%3D%22height%3A40px%3Bbackground-color%3A%23efefef%3B%22%20onmouseover%3D%22document.getElementById(%60button-kupowanie%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23efefef%60%22%3Edodaj%20do%20koszyka%3C%2Fbutton%3E}}</div><div></div><div class=\"my-2\"><div>{{app-price1 ,Tresc1=Cena%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div></div><div>{{app-value1 ,Tresc1=Warto%C5%9B%C4%87%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div><div class=\"col-sm-6\"><div>{{app-carousel2 ,brakZdjec=%0A%0A%3Cdiv%20class%3D%22h-100%20d-flex%20align-items-center%20justify-content-center%22%3EBrak%20zdj%C4%99cia%3C%2Fdiv%3E%0A%0A}}</div></div><div class=\"col-sm-12\">[[ZMIENNA WIDEO]]</div></div></div>', '[]'),
(715, 107, 2, 0, '<div class=\"row row-cols-1 row-cols-md-3 g-4\"><div>PoWtorZsZaBloN</div><div class=\"col\"><div class=\"card\"><div><img class=\"img-fluid\" src=\"[[PiCtUrE]]\" /></div><div class=\"card-body\"><p class=\"card-text\">[[ZMIENNA TYTUL1 LENGTH:0]]</p><a href=\"page1?parametr1=[[iDkAtEgOrIa]]&amp;tresc=[[iDpRzEdMiOt]]\"><button class=\"btn btn-primary\" tabindex=\"0\">zobacz</button></a></div></div></div><div>PoWtorZsZaBloN</div></div><div>[[ZMIENNA PAGELEFT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26lt%3B%3C%2Fbutton%3E]][[ZMIENNA PAGERIGHT1 HTML:%3Cbutton%20class%3D%22btn%20btn-primary%22%3E%26gt%3B%3C%2Fbutton%3E]]</div>', '[]'),
(716, 107, 2, 1, '<div class=\"card my-3 p-3\"><div class=\"row\"><div class=\"col-sm-6\"><div class=\"mb-4\"><h2>[[ZMIENNA TYTUL1 LENGTH:0]]</h2><div class=\"fs-6\">[[ZMIENNA TRESC1 LENGTH:0]]</div></div><div>{{app-variant-select ,row=1,checkbox=,div1Class=,div1Style=,imgStyle=,imgClass=,imgDiv=%3Cdiv%20class%3D%22box22%22%3EZaMiAnAtEkSt%3C%2Fdiv%3E,nazwaDiv=%3Cspan%20class%3D%22text-secondary%22%3EZaMiAnAtEkSt%3C%2Fspan%3E}}</div><div class=\"my-2\"><div>{{app-changestate ,buttonLewa=%3Cbutton%20id%3D%22button-left%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%2020px%200%200%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-left%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-left%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-left%60).style.backgroundColor%3D%60%23efefef%60%22%3E-%3C%2Fbutton%3E,buttonPrawa=%3Cbutton%20id%3D%22button-right%22%20style%3D%22height%3A40px%3Bborder%3A0%3Bmargin%3A0%200%200%2020px%3Bpadding%3A0%2020px%200%2020px%3Bbackground-color%3A%23efefef%22%20onmouseover%3D%22document.getElementById(%60button-right%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-right%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-right%60).style.backgroundColor%3D%60%23efefef%60%22%3E%2B%3C%2Fbutton%3E,inputStyle=text-align%3Acenter%3Bheight%3A40px%3Bwidth%3A50px%3Bborder%3A0%3Bfont-size%3A1.2rem%3B,inputClass=no-spin%20input-kupowanie-ilosc}}</div></div><div class=\"my-2\"><div>{{app-kupuje1 ,Tresc1=%3Cbutton%20id%3D%22button-kupowanie%22%20class%3D%22btn%20btn-light%22%20style%3D%22height%3A40px%3Bbackground-color%3A%23efefef%3B%22%20onmouseover%3D%22document.getElementById(%60button-kupowanie%60).style.transition%3D%60all%201s%60%3Bdocument.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23c4c4c4%60%3B%22%20onmouseout%3D%22document.getElementById(%60button-kupowanie%60).style.backgroundColor%3D%60%23efefef%60%22%3Edodaj%20do%20koszyka%3C%2Fbutton%3E}}</div><div></div><div class=\"my-2\"><div>{{app-price1 ,Tresc1=Cena%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div></div><div>{{app-value1 ,Tresc1=Warto%C5%9B%C4%87%20ZaMiAnAtEkSt%20z%C5%82.}}</div></div><div class=\"col-sm-6\"><div>{{app-carousel2 ,brakZdjec=%0A%0A%3Cdiv%20class%3D%22h-100%20d-flex%20align-items-center%20justify-content-center%22%3EBrak%20zdj%C4%99cia%3C%2Fdiv%3E%0A%0A}}</div></div><div class=\"col-sm-12\">[[ZMIENNA WIDEO]]</div></div></div>', '[]'),
(717, 108, 2, 0, 'ÿ', '[]'),
(718, 108, 2, 1, 'ÿ', '[]'),
(730, 109, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(731, 109, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(732, 109, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(733, 109, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(734, 109, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(735, 109, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(736, 109, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(737, 110, 2, 0, 'ÿ', '[]'),
(738, 110, 2, 1, 'ÿ', '[]'),
(855, 111, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(856, 111, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(857, 111, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(858, 111, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(859, 111, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(860, 111, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(861, 111, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(871, 112, 2, 0, 'ÿ', '[]'),
(872, 112, 2, 1, 'ÿ', '[]'),
(875, 113, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(876, 113, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(877, 113, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(878, 113, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(879, 113, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(880, 113, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(881, 113, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(882, 67, 4, 0, 'ÿ', '[]'),
(885, 2, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(886, 2, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(887, 114, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(888, 114, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(889, 114, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(890, 114, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(891, 114, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(892, 114, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(893, 114, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(894, 114, 4, 0, 'ÿ', '[]'),
(895, 114, 7, 0, 'ÿ', '[\"\\u00ff\"]'),
(901, 114, 0, 2, 'ÿ', '[\"\\u00ff\"]'),
(902, 57, 0, 2, 'ÿ', '[]'),
(903, 67, 0, 2, 'ÿ', '[]'),
(917, 115, 11, 0, 'ÿ', '[\"\\u00ff\"]'),
(918, 115, 11, 1, 'ÿ', '[\"\\u00ff\"]'),
(919, 115, 12, 0, 'ÿ', '[\"\\u00ff\"]'),
(920, 115, 12, 1, 'ÿ', '[\"\\u00ff\"]'),
(921, 115, 3, 0, 'ÿ', '[\"\\u00ff\"]'),
(922, 115, 2, 0, 'ÿ', '[\"\\u00ff\"]'),
(923, 115, 2, 1, 'ÿ', '[\"\\u00ff\"]'),
(924, 115, 4, 0, 'ÿ', '[]'),
(925, 115, 0, 2, 'ÿ', '[]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personaldata` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `connecteddomain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `email`, `domain`, `personaldata`, `connecteddomain`, `size`, `page`) VALUES
(1, 'ZarezwewowaneSubdomeny', '', '', '', '*page1*kategorie1*naglowek1*facebookintegration*allegrointegration*upload*shoppingcart*paymentdelivery*paysettings*servicetests*productedit*orders1*htmltests*podstrona*any*allegro*assets*tinymce*accountregister1*wyglad1*logowanie*license*redirect*template*search*', '', NULL, 200000000, 300),
(2, 'admin', '[\"ROLE_ADMIN\"]', '$2y$13$puyPo6yEa4FBay./VcQWNeQK2VrMVQjsh/9wf37bBSDcJbpteQqpu', '', '*admin*symetryczny.pl*', '{\"BuyerName1\":\"\\u0141ukasz\",\"BuyerName2\":\"S\\u0119kowski\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"41c\",\"BuyerMieszkanie\":\"405\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"Gimnazjalna\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"26-200\",\"BuyerMiasto\":\"Ko\\u0144skie\",\"BuyerPhone\":\"+48 604 414 964\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(3, 'test1', '[\"ROLE_USER\"]', '0', '', '*test1*', '{\"BuyerName1\":\"test1\",\"BuyerName2\":\"test1\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"test1\",\"BuyerMiasto\":\"test1\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(14, 'test22sss', '[\"ROLE_USER\"]', '0', '', '*test22*', '{\"BuyerName1\":\"gdgfd\",\"BuyerName2\":\"fgfdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgfd\",\"BuyerMiasto\":\"fdgdfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(15, 'test2', '[\"ROLE_USER\"]', '0', 'test@test.pl', '*test2*', '{\"BuyerName1\":\"erwr\",\"BuyerName2\":\"rwer\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"ewwr\",\"BuyerMiasto\":\"rwrwer\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(16, 'test3', '[\"ROLE_USER\"]', '0', 'dgdsgds@dfdsf.pl', '*test3*', '{\"BuyerName1\":\"gfh\",\"BuyerName2\":\"hfdh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dgsg\",\"BuyerMiasto\":\"gdgsg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(17, 'test4', '[\"ROLE_USER\"]', '0', 'test@test.pl', '*test4*', '{\"BuyerName1\":\"fgdgf\",\"BuyerName2\":\"dfgdfsg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdgds\",\"BuyerMiasto\":\"gdsgdsg\",\"BuyerPhone\":\"gdgds\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(18, 'test5', '[\"ROLE_USER\"]', '0', 'fdsfds@sdfsf.pl', '*test5*', '{\"BuyerName1\":\"dfsf\",\"BuyerName2\":\"fsdfs\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"26-200\",\"BuyerMiasto\":\"dfsfds\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(19, 'test6', '[\"ROLE_USER\"]', '0', 'gdfgdg@fsdf.pl', '*test6*', '{\"BuyerName1\":\"hgfhf\",\"BuyerName2\":\"fdgfgd\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"26-230\",\"BuyerMiasto\":\"gdfgdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(20, 'test7', '[\"ROLE_USER\"]', '0', 'fsfs@fsfgsgf.pl', '*test7*', '{\"BuyerName1\":\"fd\",\"BuyerName2\":\"dfdfsfsdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdsfs\",\"BuyerMiasto\":\"fsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(21, 'test8', '[\"ROLE_USER\"]', '0', 'sdgdsg@sfsdfgs.pl', '*test8*', '{\"BuyerName1\":\"gdgd\",\"BuyerName2\":\"gfdgdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hfhfhg\",\"BuyerMiasto\":\"gdgsg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(22, 'test9', '[\"ROLE_USER\"]', '0', 'hfdhdh2fsdfgs@fsf.pl', '*test9*', '{\"BuyerName1\":\"test9\",\"BuyerName2\":\"hfgh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hgfhgfh\",\"BuyerMiasto\":\"fhfdh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(23, 'test10', '[\"ROLE_USER\"]', '0', 'dgsdg2s@dgfsdg.pl', '*test10*', '{\"BuyerName1\":\"dfsf\",\"BuyerName2\":\"dgsg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dgdsgs\",\"BuyerMiasto\":\"dgsg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(24, 'test11', '[\"ROLE_USER\"]', '0', 'dfsf@fsdfs.pl', '*test11*', '{\"BuyerName1\":\"dfsfdsf\",\"BuyerName2\":\"fddsfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdgdsgds\",\"BuyerMiasto\":\"fdsfsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(25, 'test12', '[\"ROLE_USER\"]', '0', 'fdgdgd@fsf.pl', '*test12*', '{\"BuyerName1\":\"gdgdfg\",\"BuyerName2\":\"gfgfdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgdgdf\",\"BuyerMiasto\":\"gfdgdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(26, 'test13', '[\"ROLE_USER\"]', '0', 'gdgfd@fsfgsd.pl', '*test13*', '{\"BuyerName1\":\"ggdfg\",\"BuyerName2\":\"fgdfgdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdgd\",\"BuyerMiasto\":\"fgdfgdfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(27, 'test14', '[\"ROLE_USER\"]', '0', 'erter@fsfsdf.pl', '*test14*', '{\"BuyerName1\":\"rtet\",\"BuyerName2\":\"rtret\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"etet\",\"BuyerMiasto\":\"rtet\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(28, 'test15', '[\"ROLE_USER\"]', '0', 'gfdgfdgd@wdsfsd.pl', '*test15*', '{\"BuyerName1\":\"dgdg\",\"BuyerName2\":\"dfgfdgdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"ddg\",\"BuyerMiasto\":\"gdgdsg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(29, 'test16', '[\"ROLE_USER\"]', '0', 'fdfdsf@fsfd.pl', '*test16*', '{\"BuyerName1\":\"test16\",\"BuyerName2\":\"test16\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"45454\",\"BuyerMiasto\":\"sdfsfds\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(30, 'test17', '[\"ROLE_USER\"]', '0', 'gdgdg@fsgfs.pl', '*test17*', '{\"BuyerName1\":\"gdgdg\",\"BuyerName2\":\"wfsgf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fggdgf\",\"BuyerMiasto\":\"gdgdg\",\"BuyerPhone\":\"g\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(31, 'test18', '[\"ROLE_USER\"]', '0', 'bcxbxcb@sdfsf.pl', '*test18*', '{\"BuyerName1\":\"vgxb\",\"BuyerName2\":\"cbxcbcx\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"cbxcbxb\",\"BuyerMiasto\":\"cbcxbx\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(32, 'test19', '[\"ROLE_USER\"]', '0', 'hfhf@sdgds.pl', '*test19*', '{\"BuyerName1\":\"hfh\",\"BuyerName2\":\"hfhf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hfdhdh\",\"BuyerMiasto\":\"hfhf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(33, 'test20', '[\"ROLE_USER\"]', '0', 'gjgfj@dgffgsd.p', '*test20*', '{\"BuyerName1\":\"ghhjgf\",\"BuyerName2\":\"ghjgfjgfj\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"jgfjfj\",\"BuyerMiasto\":\"ggfjgfj\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(34, 'test21', '[\"ROLE_USER\"]', '0', 'fhfdhfd!da@fff.pls', '*test21*', '{\"BuyerName1\":\"hfhf\",\"BuyerName2\":\"fghfhh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hfhfdh\",\"BuyerMiasto\":\"fhgdfh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(35, 'test23', '[\"ROLE_USER\"]', '0', 'sdfsfdsfsfsd2@fdsdf.pl', '*test23*', '{\"BuyerName1\":\"dffdsf\",\"BuyerName2\":\"dfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfdsfds\",\"BuyerMiasto\":\"fdfdsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(36, 'test24', '[\"ROLE_USER\"]', '0', 'sdgds2@dfsdf.pl', '*test24*', '{\"BuyerName1\":\"fsdgfd\",\"BuyerName2\":\"gdfgdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fsdfds\",\"BuyerMiasto\":\"dgfsgsdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(37, 'test25', '[\"ROLE_USER\"]', '0', 'sdfsdfsd@dsfsf.pl', '*test25*', '{\"BuyerName1\":\"sdfsfsf\",\"BuyerName2\":\"dfdsfsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"sdfsdf\",\"BuyerMiasto\":\"fdsfds\",\"BuyerPhone\":\"fsdfdsf\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(38, 'test26', '[\"ROLE_USER\"]', '0', 'dfsdfsd@sdsadf.pl', '*test26*', '{\"BuyerName1\":\"fdsf\",\"BuyerName2\":\"dsfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dsfdsf\",\"BuyerMiasto\":\"dfsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(39, 'test27', '[\"ROLE_USER\"]', '0', 'dsfdsf@dfdsf.pl', '*test27*', '{\"BuyerName1\":\"test27\",\"BuyerName2\":\"test27\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"dsfsdf\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsfdsf\",\"BuyerMiasto\":\"dfdsfds\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(40, 'test28', '[\"ROLE_USER\"]', '0', 'dfsdf2sdfs@df.pl', '*test28*', '{\"BuyerName1\":\"grftg\",\"BuyerName2\":\"tetyret\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdfdsf\",\"BuyerMiasto\":\"fdsfsdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(41, 'test30', '[\"ROLE_USER\"]', '0', 'dfdsf@dfdsf.pl', '*test30*', '{\"BuyerName1\":\"dfs\",\"BuyerName2\":\"fdfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfdsf\",\"BuyerMiasto\":\"dfsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(42, 'test31', '[\"ROLE_USER\"]', '0', '34fdg#@dgfg.p', '*test31*', '{\"BuyerName1\":\"test31\",\"BuyerName2\":\"test31\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfhf\",\"BuyerMiasto\":\"hfghfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(43, 'test32', '[\"ROLE_USER\"]', '0', 'dsfsdfdsf@sfdsf.pl', '*test32*', '{\"BuyerName1\":\"test32\",\"BuyerName2\":\"fdsfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"sdfsd\",\"BuyerMieszkanie\":\"sfsdfsd\",\"BuyerKraj\":\"ssdfsdf\",\"BuyerUlica\":\"sfsdf\",\"BuyerDodatekadres\":\"sfsdfds\",\"BuyerKodpocztowy\":\"26-200\",\"BuyerMiasto\":\"sfdsfds\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/2\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(44, 'test33', '[\"ROLE_USER\"]', '0', 'fgdgfd@sfsdf.pl', '*test33*', '{\"BuyerName1\":\"efdfggd\",\"BuyerName2\":\"ggdgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdgfdgdf\",\"BuyerMiasto\":\"gfdfgdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(45, 'test34', '[\"ROLE_USER\"]', '0', 'fsfsf@sffs.pl', '*test34*', '{\"BuyerName1\":\"fsdf\",\"BuyerName2\":\"sdfdsfs\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fsdf\",\"BuyerMiasto\":\"sfsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(46, 'test35', '[\"ROLE_USER\"]', '0', 'sfsafas@fsfsdf.pl', '*test35*', '{\"BuyerName1\":\"fdsf\",\"BuyerName2\":\"sfsa\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"safsaf\",\"BuyerMiasto\":\"sfsafsa\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(47, 'test36', '[\"ROLE_USER\"]', '0', 'fdgdg@fsdf.pl', '*test36*dodatny.pl*', '{\"BuyerName1\":\"test36\",\"BuyerName2\":\"test36\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"26-200\",\"BuyerMiasto\":\"gfdgfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(48, 'test37', '[\"ROLE_USER\"]', '$2y$13$du1YTfDF4vSA/ORL2VDf.OwyxkT.f6ujGVZwlCU20AvtZh.Feuru2', 'fdsfsd@dsfsdf.pl', '*test37*', '{\"BuyerName1\":\"test37\",\"BuyerName2\":\"test37\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsfsf\",\"BuyerMiasto\":\"fdsfds\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(49, 'test38', '[\"ROLE_USER\"]', '$2y$13$gKz8BG2CwtDA53MV53QC4.TX0R2b/9jDA6CmGWjyc1CifwfHGjGX.', 'fsfs@sfsdf.pl', '*test38*', '{\"BuyerName1\":\"fdsf\",\"BuyerName2\":\"sdfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsf\",\"BuyerMiasto\":\"fdsfdsfsdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(50, 'test39', '[\"ROLE_USER\"]', '$2y$13$/.dcfSVEDWKZyQvxTIrGmOChfrPIS7Vjd1QBWtihrVWuaiErM2w/O', 'fdgd#dsgfdsg@dfds.fpl', '*test39*', '{\"BuyerName1\":\"fdg\",\"BuyerName2\":\"dfgfdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fddfsfsf\",\"BuyerMiasto\":\"gfdgdfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(53, 'test40', '[\"ROLE_USER\"]', '$2y$13$7LTinURrCS4.A9hLgi5ml.RuBXHw0.If1LITgMajheN4J7d7DL1A.', 'dsgs!fsfsaf.@fdsfsdf.pl', '*test40*', '{\"BuyerName1\":\"fbgdg\",\"BuyerName2\":\"gdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dgsg\",\"BuyerMiasto\":\"gdgdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(54, 'test41', '[\"ROLE_USER\"]', '$2y$13$B8jOgJ.Y8P6UJdbJ07CtK.SNC/0FgkQmjLLd.s/.DFv/7HNKnadsW', 'dsfdsfds@sfdsf.pl', '*test41*', '{\"BuyerName1\":\"fdsfd\",\"BuyerName2\":\"sfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfdsfdsf\",\"BuyerMiasto\":\"dsfdsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(55, 'test42', '[\"ROLE_USER\"]', '$2y$13$BWbYfdg81NfMMtfWDLxhZ.RRqaxf4pKUIIohab1tfuxtnynlTNB6O', 'fhdhd@dsfsf.pl', '*kancelariaprawna*kancelariaprawna.symetryczny.pl*', '{\"BuyerName1\":\"ggdfgh\",\"BuyerName2\":\"fhfdh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdhdfh\",\"BuyerMiasto\":\"dfhdh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(56, 'test43', '[\"ROLE_USER\"]', '$2y$13$0pD2ZQ9DS063Jh6w6Arf.e4ep8HzwZ/zXf.cKOW75YhsaoIA.6//a', 'dfdsf@sdfsdf.pl', '*dieta*dieta.symetryczny.pl*', '{\"BuyerName1\":\"gdfdfg\",\"BuyerName2\":\"dfgdsgsd\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"q\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsdf\",\"BuyerMiasto\":\"dfdsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(57, 'test44', '[\"ROLE_USER\"]', '$2y$13$b1ezqIaw3yXg/WdwMkEqCeb93ueFFieRCOBXijD1b7BLB2iQxD4q6', 'ryerye@fdfsf.pl', '*klocki*klocki.symetryczny.pl*', '{\"BuyerName1\":\"tytry\",\"BuyerName2\":\"yrtytr\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"ryeyre\",\"BuyerMiasto\":\"yryery\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(58, 'test45', '[\"ROLE_USER\"]', '$2y$13$HgRjDmqDTEkWYcFd2cIhD.mKhxmV8paumNDo5XxsiixDuC0eJRZRK', 'dgsdgsdg@sfsfsd.pl', '*test45*', '{\"BuyerName1\":\"ffg\",\"BuyerName2\":\"dsgfdgdsg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dsgsdg\",\"BuyerMiasto\":\"dgsdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(59, 'test46', '[\"ROLE_USER\"]', '$2y$13$RE4CEXH2BnT36o3OrNMHDOJHUPPiCJxkB0AFnfCvG/ilQxHqmjHfK', 'xcbxcbx@fdsfsf.pl', '*test46*', '{\"BuyerName1\":\"bbg\",\"BuyerName2\":\"cbcvbcvb\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"cxbcxbxb\",\"BuyerMiasto\":\"bbxcb\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(60, 'test47', '[\"ROLE_USER\"]', '$2y$13$gmR7CGtJ9Z5KChVJ7ktsHuGk8tVClpm9jRlxCost17dUx2tAPmDyi', 'ry@dfsdf.pl', '*test47*', '{\"BuyerName1\":\"grg\",\"BuyerName2\":\"etrete\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"rtreytre\",\"BuyerMiasto\":\"rreytre\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(65, 'test48', '[\"ROLE_USER\"]', '$2y$13$2PGrnPODvbvdHJXeAfj1wuWz696CxgpLDncSspr6lLRUogYGeB8x.', 'vnvnv@sfsdf.pl', '*test48*', '{\"BuyerName1\":\"bghbcg\",\"BuyerName2\":\"bncvnb\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"sadasd\",\"BuyerMiasto\":\"vnvcnvn\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(66, 'template1', '[\"ROLE_USER\"]', '$2y$13$eMJzUlt.w0rRHPTneAAiq.Gx9elheqJTAW7vHpFe6zZ.mfdWO5hda', 'hdfhffdh@sdfsdf.pl', '*template1*', '{\"BuyerName1\":\"fgdfg\",\"BuyerName2\":\"gfdgg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdgdfghdfh\",\"BuyerMiasto\":\"fdgdfgh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(67, 'template2', '[\"ROLE_USER\"]', '$2y$13$DFNX4phaNBCiizmw00phPuPQV4yNu6rXbXN/PQkLJQ28GTmSZTYNO', 'hdfhffdh@sdfsdf.pl', '*template2*template2.symetryczny.pl*', '{\"BuyerName1\":\"fgdfg\",\"BuyerName2\":\"gfdgg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdgdfghdfh\",\"BuyerMiasto\":\"fdgdfgh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 999999999999, 32),
(68, 'test49', '[\"ROLE_USER\"]', '$2y$13$mBymY6h9smAKXZb.po1.Ie86Rnh1q9mlOTKEmZX01GlyhFzM9viaa', 'fgdfgdf@sadfsdf.pl', '*test49*', '{\"BuyerName1\":\"test49\",\"BuyerName2\":\"test49\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdgdfg\",\"BuyerMiasto\":\"fgdfgfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(69, 'test50', '[\"ROLE_USER\"]', '$2y$13$Hz3LDd28w2Knv88zh8Q/V.nBD839BNOV/V7NJo0nKFevFD57AMYKW', 'fdsfsdf@sfdsf.pl', '*test50*', '{\"BuyerName1\":\"dgd\",\"BuyerName2\":\"gdfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfgdfgfd\",\"BuyerMiasto\":\"fdgfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(70, 'test51', '[\"ROLE_USER\"]', '$2y$13$uFB2b3BYNGkW3lSjkFY4FeUFeOdWFeA8H7TVq54p/QuBE.XXDRxlK', 'fgdfgdf@zdfsdf.pl', '*test51*', '{\"BuyerName1\":\"gfdfg\",\"BuyerName2\":\"dfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdfgdg\",\"BuyerMiasto\":\"gfgdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(71, 'test52', '[\"ROLE_USER\"]', '$2y$13$VKtkbmmyTSxZam1hrXe0V.b6z4WZbhUuof20TFJoJolCHqTik/B0y', 'xcvxcvx@sadsdf.pl', '*test52*', '{\"BuyerName1\":\"cxxcv\",\"BuyerName2\":\"vxvxcv\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdfdg\",\"BuyerMiasto\":\"xvxcvx\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(72, 'test53', '[\"ROLE_USER\"]', '$2y$13$/VkLgMMIy4ltWrsZXg8aeOnoDDXrTIHDz7PD1fPHMRohVo30TtzFy', 'ghfhf@dsgfdg.pl', '*test53*', '{\"BuyerName1\":\"gfdg\",\"BuyerName2\":\"fghfghfd\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fhfgh\",\"BuyerMiasto\":\"hgfh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(73, 'test54', '[\"ROLE_USER\"]', '$2y$13$I2/NElcGM29E3ohh2a0/Se5n6k2yRfa2pq/sH8AKMUzdpLpmoQYZa', 'fsfs@sfsf.pl', '*test54*', '{\"BuyerName1\":\"fsfsef\",\"BuyerName2\":\"vdfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dsfdf\",\"BuyerMiasto\":\"cdsfs\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(74, 'test55', '[\"ROLE_USER\"]', '$2y$13$/HlfGzgNGH1ylTclVTm0PeTeHcynYss6xWPlY3u8YsJN4qLjsDKwa', 'gjgfjgf@fsdgf.pl', '*test55*', '{\"BuyerName1\":\"hgjghj\",\"BuyerName2\":\"jgjgj\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfjgfj\",\"BuyerMiasto\":\"jgfj\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(75, 'test56', '[\"ROLE_USER\"]', '$2y$13$ehKq63aMM0SAvhI.rNC8OeaInYudcS5DBJyD1KePF1bovWWflEvza', 'gjgfjgf@fsdgf.pl', '*test56*', '{\"BuyerName1\":\"hgjghj\",\"BuyerName2\":\"jgjgj\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfjgfj\",\"BuyerMiasto\":\"jgfj\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(76, 'test57', '[\"ROLE_USER\"]', '$2y$13$lGLfVno7A3h.OSXV45sBc.NC1Ft0yLfuTbhCKtxlj4NaktvERnhUW', 'dfgdfgfd@zfsdf.pl', '*test57*', '{\"BuyerName1\":\"test57\",\"BuyerName2\":\"dfghdfgh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfgfdg\",\"BuyerMiasto\":\"gfdgdfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(77, 'test58', '[\"ROLE_USER\"]', '$2y$13$PtS0gV40GMU9YBd3IoqsxOMqO8yy1tWdoMm6AP.TkZvJo9y1QqSU6', 'dfhdfh@sfsdgfs.pl', '*test58*', '{\"BuyerName1\":\"hfgh\",\"BuyerName2\":\"hdfhdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdhdhdf\",\"BuyerMiasto\":\"hdfhfdh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(78, 'test59', '[\"ROLE_USER\"]', '$2y$13$1Hd8amLujoEECA4ISW9fDOhsyzr5QKhP1bUvFeC1PGUU.XxP8uhm6', 'dgffdgd2@fxdgf.opl', '*test59*', '{\"BuyerName1\":\"gfrf\",\"BuyerName2\":\"dfgdfgh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfh\",\"BuyerMiasto\":\"fgdgddg\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/77\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(79, 'test60', '[\"ROLE_USER\"]', '$2y$13$.lLVgxfsnOCaju1QwtTIzernykxgX.821vBqzl2oB6UbN61OJm1UC', 'gdsgsgds@sdfsdgfs.pl', '*test60*', '{\"BuyerName1\":\"dgsgdsg\",\"BuyerName2\":\"dsgsfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgdgfdg\",\"BuyerMiasto\":\"dgdsg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(80, 'test61', '[\"ROLE_USER\"]', '$2y$13$KdAl2fgf2WP.qATFn1SMiOsPzSeZqjR246/k7oFygWSXd.aTNrBFq', 'gfdgdfg@fdsf.pl', '*test61*', '{\"BuyerName1\":\"gg\",\"BuyerName2\":\"fdgdfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgfdgd\",\"BuyerMiasto\":\"gfgd\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(81, 'test62', '[\"ROLE_USER\"]', '$2y$13$FaB.VtkZWW7IQZTrQCTXTOCAk/.8s/i5WOmxDt3kNPj/W0Sit5HRq', 'dsfsdfs@dfdsf.pl', '*test62*', '{\"BuyerName1\":\"dfdsfd\",\"BuyerName2\":\"fsdfsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdsfgsdf\",\"BuyerMiasto\":\"dfdsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(82, 'test63', '[\"ROLE_USER\"]', '$2y$13$63PKNxrbbVQCr2sKE49L5.LGGIB.T63ucGagU7GjsPpU3LbYlhDRa', 'fsdfs!@sdfdsf.pl', '*test63*', '{\"BuyerName1\":\"dfdsf\",\"BuyerName2\":\"sdfsdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdf\",\"BuyerMiasto\":\"fddsfd\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(83, 'test64', '[\"ROLE_USER\"]', '$2y$13$jxDv2doTArR6p4DnpaAei.dEOErnm8LKG357sUdlepTn1nxsPj.OS', 'dfhfdhdf@sfsd.pl', '*test64*', '{\"BuyerName1\":\"gbhf\",\"BuyerName2\":\"hghf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hdfhdfhd\",\"BuyerMiasto\":\"ghdfghfdh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(84, 'test65', '[\"ROLE_USER\"]', '$2y$13$XeyTO.nR.JELU6LTD2p6heZ.lpDa99DwdVuJETQ2T4/5wSkUjC7Fm', 'dsfsdf2@sdfsdf.pl', '*test65*', '{\"BuyerName1\":\"fsdfds\",\"BuyerName2\":\"fdsfds\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gffdgdfg\",\"BuyerMiasto\":\"sdfsdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/83\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(85, 'test66', '[\"ROLE_USER\"]', '$2y$13$WxAmBFAKHbKm2KSjC9nbxOKijsfdcu9y5ank4yWvlFwnFJ8bZlQ/a', 'ghdfhdfh@asfdasf.pl', '*test66*', '{\"BuyerName1\":\"gfh\",\"BuyerName2\":\"gfhjgfhf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgh\",\"BuyerMiasto\":\"gfdghdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/83\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(86, 'test67', '[\"ROLE_USER\"]', '$2y$13$9lyf3EF6.QqPiGvA.pf8qevNaojowAjlgqSEoYJ3eDf9pqekwMMDa', 'fdgdfgdg@sdsadf.pl', '*test67*', '{\"BuyerName1\":\"gg\",\"BuyerName2\":\"dfgdfgdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgdgd\",\"BuyerMiasto\":\"gfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(87, 'test68', '[\"ROLE_USER\"]', '$2y$13$y.0QJInElhC/FAwutO3bMOp7wvss1L4e3Q3ORv2xmGc9lPNqDiOy6', 'fdgdfgdg@sdsadf.pl', '*test68*', '{\"BuyerName1\":\"gg\",\"BuyerName2\":\"dfgdfgdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgdgd\",\"BuyerMiasto\":\"gfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(88, 'test69', '[\"ROLE_USER\"]', '$2y$13$F/gGa9sFIVlGeR1BPQYlDOjVjqd4cLio0rgIoESXvvDsadrVkwby.', 'fdgdfgdg@sdsadf.pl', '*test69*', '{\"BuyerName1\":\"gg\",\"BuyerName2\":\"dfgdfgdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fgdgd\",\"BuyerMiasto\":\"gfdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(89, 'test70', '[\"ROLE_USER\"]', '$2y$13$8i/PhdFWLSOuBMEM7XutwuFywkP09BJiSrKZnPsjTbZdwLR9MRbqu', 'dfgdfg@sdfsf.pl', '*test70*', '{\"BuyerName1\":\"fgdgfd\",\"BuyerName2\":\"gfdgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgdfg\",\"BuyerMiasto\":\"fgdfg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(90, 'test71', '[\"ROLE_USER\"]', '$2y$13$R8xcTzTJM2EU/k5BSd5ZBeSwkxg.ssObT8/YZkbLiDBraTMIWBhn6', 'dfhfdhdf@fsdgf.pl', '*test71*', '{\"BuyerName1\":\"hgfhgfhgfhgf\",\"BuyerName2\":\"hgfhgfh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdfgdfg\",\"BuyerMiasto\":\"fdhdfh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(91, 'test72', '[\"ROLE_USER\"]', '$2y$13$zEI2gbDiAHX1aEfryba.mO9jk8VWYB9.nZ9bszwlQtiMsSisgiFx.', 'hgfhgfh@dfdsf.pl', '*test72*', '{\"BuyerName1\":\"ghfghf\",\"BuyerName2\":\"fhfgh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfhfhfg\",\"BuyerMiasto\":\"fhdh\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/90\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(92, 'test73', '[\"ROLE_USER\"]', '$2y$13$N5le6cqqZEdOsjPpd/LBwu8Mv3xdmm7o5lXr/FjoyJGLFbo8CMJ6e', 'sdgsdgs@sfdsfs.pl', '*test73*', '{\"BuyerName1\":\"bfd\",\"BuyerName2\":\"dggdsg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdsfsdgf\",\"BuyerMiasto\":\"dgsdgsd\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(93, 'test74', '[\"ROLE_USER\"]', '$2y$13$UbQk0rtI3sPiyuapCq0PXudR4HfjF/gq6RO.ZgWGMGre8EnrCO6C2', 'ggdfgg@sdfsdf.pl', '*test74*', '{\"BuyerName1\":\"fgfd\",\"BuyerName2\":\"gdfgfdg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dgsdgsd\",\"BuyerMiasto\":\"gdfgdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(94, 'test75', '[\"ROLE_USER\"]', '$2y$13$xV3YXdUS1wxQ110upqPbK.r/o.pdJ.POWHNdlczEUHWQRp9b6ySIq', 'sdfsdf@safsdf.pl', '*test75*', '{\"BuyerName1\":\"sfsdf\",\"BuyerName2\":\"sdfsdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"dfssdf\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"sdfsdf\",\"BuyerMiasto\":\"dsfsdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(95, 'test76', '[\"ROLE_USER\"]', '$2y$13$xoMH8mWzvEAnoHFHjzkV8uMJFtALSTknF/ff2Ksq2lMjiFVmsjFpO', 'sdfsd2@asdfsa.pl', '*test76*', '{\"BuyerName1\":\"fddsf\",\"BuyerName2\":\"fsdfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsgds\",\"BuyerMiasto\":\"dsfsdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/94\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(96, 'test77', '[\"ROLE_USER\"]', '$2y$13$cWXH1IgYaEtE9Jqb5cUjC.oZYuyAusItrpJ9AfMlY3tCZZcCb6b36', 'fsdfsdf@fsdf.pl', '*test77*', '{\"BuyerName1\":\"ds\",\"BuyerName2\":\"sdfdsff\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gdsdgg\",\"BuyerMiasto\":\"sdfsd\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/95\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(97, 'test78', '[\"ROLE_USER\"]', '$2y$13$/VUK9XFvO8qk76pXDwdvDeZF7M.H43zGPXF58e.9l8BlrTCiBhYbG', 'dsfdsfs@sdfdsf.pl', '*test78*', '{\"BuyerName1\":\"sdfdsf\",\"BuyerName2\":\"dfdsfs\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dsfsdf\",\"BuyerMiasto\":\"dsfdfsdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/96\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(98, 'test79', '[\"ROLE_USER\"]', '$2y$13$OqHI9/C0vZwkhmiir3.Wb.rttJwYg6RzlGekZnCpxWJNpl7Xr8a/e', 'cxbxcb@!sfsf.pl', '*test79*', '{\"BuyerName1\":\"bvcbv\",\"BuyerName2\":\"cbcvbvc\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdfds\",\"BuyerMiasto\":\"cbxcb\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(99, 'tes80', '[\"ROLE_USER\"]', '$2y$13$2oh5x.CIADHkmENhJfJEXO2WyBWfFTn40GhKKMjh55.7g2e1SwTm.', 'bxcbxc@fsdf.pl', '*test80*', '{\"BuyerName1\":\"vxvb\",\"BuyerName2\":\"xbvxcb\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdfdsfs\",\"BuyerMiasto\":\"bxcbx\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(100, 'test81', '[\"ROLE_USER\"]', '$2y$13$P0ZmgkUhXDuqwaB8bsCfBu0weOVd1oC85rr0nIFIjVsWGcUDniww6', 'fdhfdhh@dfsf,ok.pol', '*test81*', '{\"BuyerName1\":\"hfdh\",\"BuyerName2\":\"dfhdfh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfhdfhdf\",\"BuyerMiasto\":\"fhdfhfdh\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 7996, 8),
(101, 'test82', '[\"ROLE_USER\"]', '$2y$13$KoU7GY8cV1DZuydKfl8wN.NFHNWXqXfvWgfAe/6gqMX1ryC2MTbiK', 'dsfdsfs@dfsdf.pl', '*test82*', '{\"BuyerName1\":\"dfdsf\",\"BuyerName2\":\"dfdsfsd\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fdsdfds\",\"BuyerMiasto\":\"dsfdsf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 9186, 4),
(102, 'test83', '[\"ROLE_USER\"]', '$2y$13$HZkOOGl1C4Z6Vl9Mic7uBeeYtJVtLsZuLJlo1gF7p.KX9vnFX9OIu', 'bxcbx@fsf.pl', '*test83*', '{\"BuyerName1\":\"vcvcx\",\"BuyerName2\":\"bvxbxbc\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgf\",\"BuyerMiasto\":\"cxbcxb\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 200000000, 300),
(103, 'test84', '[\"ROLE_USER\"]', '$2y$13$XqroNQevLepVt12mvCSIhehjmuLL58k7FLUP0w2wvjBjW.Q9T5vdK', 'fdsfsdf@fsdf.pl', '*test84*', '{\"BuyerName1\":\"dfdsfs\",\"BuyerName2\":\"fsdfds\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"sdfdsf\",\"BuyerMiasto\":\"fdfsf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/2\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(104, 'test85', '[\"ROLE_USER\"]', '$2y$13$9Wpc3JcVn7VDWz01dHr9aOrWfkyqru.R1o/CMAUlxaH2KFWrW6zFa', 'dgsgs@asfsaf.pl', '*test85*', '{\"BuyerName1\":\"fdsfdsf\",\"BuyerName2\":\"dsfdss\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsfdsf\",\"BuyerMiasto\":\"dsgsdg\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(105, 'test86', '[\"ROLE_USER\"]', '$2y$13$4NHbemYb/Wh3vSPfUrfv0OLX9ad9DQeqXg/KIPwMIcVLxscXelU3m', 'gfhfgh@dfsgf.pl', '*test86*', '{\"BuyerName1\":\"gfg\",\"BuyerName2\":\"fhfdhfd\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"hgfh\",\"BuyerMiasto\":\"fhgfh\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/104\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(106, 'test87', '[\"ROLE_USER\"]', '$2y$13$FGYXXGNxGrdtMnAsVFawhOHkK1N1ceN/WNxAax82UP8uYsshRus5S', 'dgsdgsdg@dsgfsdg.pl', '*test87*', '{\"BuyerName1\":\"dfgf\",\"BuyerName2\":\"dfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgdfsg\",\"BuyerMiasto\":\"gffsdg\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/105\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(107, 'test88', '[\"ROLE_USER\"]', '$2y$13$NSM0GFqmiTEFUG/Lx3dmnO5BMflj88WkOJKgKEBm4kGX6LvcEKPQ6', 'dgsdgsdg@dsgfsdg.pl', '*test88*', '{\"BuyerName1\":\"dfgf\",\"BuyerName2\":\"dfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgdfsg\",\"BuyerMiasto\":\"gffsdg\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/105\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(108, 'test90', '[\"ROLE_USER\"]', '$2y$13$yz.DusTAajPm/7JoRf9DFeeYjBy/hGX8xxrWJGGqXlRZzrCJA4rR.', 'dgsdgsdg@dsgfsdg.pl', '*test90*', '{\"BuyerName1\":\"dfgf\",\"BuyerName2\":\"dfgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdgdfsg\",\"BuyerMiasto\":\"gffsdg\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/105\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(109, 'test91', '[\"ROLE_USER\"]', '$2y$13$REUkFoXY8Rhf8NRSXun4quP5HvlcYqIpbJizUBGxVpFbrPuJDwVwa', 'hfdhdfh@fsd.p', '*test91*', '{\"BuyerName1\":\"hgfhg\",\"BuyerName2\":\"hgfhfgh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfhdhd\",\"BuyerMiasto\":\"fhfdh\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/108\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(110, 'test92', '[\"ROLE_USER\"]', '$2y$13$NTblsifuUm5peWa1u.5Cxul3QxFz6AjP3pgbuLT1lGJSvVQZqlNji', 'dfs@fdsf.pl', '*test92*', '{\"BuyerName1\":\"fsdfsd\",\"BuyerName2\":\"fdsfdsf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfsdf\",\"BuyerMiasto\":\"dfsdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/109\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(111, 'test93', '[\"ROLE_USER\"]', '$2y$13$hNOefg7pgeB8Z1akBPkKIuoe1Bo.qTTIpQkqE7BuFog0puP4Uenra', 'dfhfdhg@dfsdfsf.pl', '*test93*', '{\"BuyerName1\":\"gfhfhfh\",\"BuyerName2\":\"gfhgfh\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fhdhdf\",\"BuyerMiasto\":\"fhdfh\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/110\",\"checkboxFirmaSelect\":0}', NULL, 8820, 6),
(112, 'test94', '[\"ROLE_USER\"]', '$2y$13$vJri604H6jYgUgeRmVJGTelRB83SGdS2vCGIRa0dAWLye610lupKq', 'dsfsf@afsdf.pl', '*test94*', '{\"BuyerName1\":\"fsf\",\"BuyerName2\":\"fdssdf\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"fsdfdsf\",\"BuyerMiasto\":\"ddsfsdf\",\"BuyerPhone\":\"\",\"user\":\"\\/api\\/users\\/111\",\"checkboxFirmaSelect\":0}', NULL, 100000000, 100),
(113, 'test95', '[\"ROLE_USER\"]', '$2y$13$OG9q4NuAPp/cSkQnfHOAluhncV8UPBVT6jOzizvNJ3jSFRjcu7vv.', 'zcsafsaf@sadasd.pl', '*test95*generuje.pl*', '{\"BuyerName1\":\"fdsfds\",\"BuyerName2\":\"safa\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dsadfd\",\"BuyerMiasto\":\"dsafsaf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 30000000, 10),
(114, 'test96', '[\"ROLE_USER\"]', '$2y$13$xht9pGN4JGD6dR6jsy5qMuVuyFHcZmOB3SEYb8KC1MyMVYz5GGaj.', 'gfdgd@fsdf.pl', '*test96*', '{\"BuyerName1\":\"gdrg\",\"BuyerName2\":\"dgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"gfdfgdf\",\"BuyerMiasto\":\"gfdgd\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 30000000, 100),
(115, 'test97', '[\"ROLE_USER\"]', '$2y$13$SwoXHLHPAA/zOyob52QWv.udLA4MKwAF3lsY4a/8kjfXs.YnLGscO', 'dfgdfg@fsdaf.pl', '*test97*', '{\"BuyerName1\":\"gfdgd\",\"BuyerName2\":\"fdgdfg\",\"BuyerName3\":\"\",\"BuyerNip\":\"\",\"BuyerDom\":\"\",\"BuyerMieszkanie\":\"\",\"BuyerKraj\":\"Polska\",\"BuyerUlica\":\"\",\"BuyerDodatekadres\":\"\",\"BuyerKodpocztowy\":\"dfgdfg\",\"BuyerMiasto\":\"dfgdf\",\"BuyerPhone\":\"\",\"checkboxFirmaSelect\":0}', NULL, 30000000, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `allegro1`
--
ALTER TABLE `allegro1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_59AE6A17A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `cashbill`
--
ALTER TABLE `cashbill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6916BA7CA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `cat1`
--
ALTER TABLE `cat1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5B4F9A2EA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `category1`
--
ALTER TABLE `category1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6FB95188A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `catt1`
--
ALTER TABLE `catt1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D25F16A2A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `domain1`
--
ALTER TABLE `domain1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_14A99F21A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `facebook1`
--
ALTER TABLE `facebook1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_23BD7907A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `file1`
--
ALTER TABLE `file1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9EE760E5A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_71D60CD0A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `hotpay`
--
ALTER TABLE `hotpay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_AB9400EDA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `menu1`
--
ALTER TABLE `menu1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EAA72873A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `naglowek1`
--
ALTER TABLE `naglowek1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2B8F90D3A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `oauth2_access_token`
--
ALTER TABLE `oauth2_access_token`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_454D9673C7440455` (`client`);

--
-- Indeksy dla tabeli `oauth2_authorization_code`
--
ALTER TABLE `oauth2_authorization_code`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_509FEF5FC7440455` (`client`);

--
-- Indeksy dla tabeli `oauth2_client`
--
ALTER TABLE `oauth2_client`
  ADD PRIMARY KEY (`identifier`);

--
-- Indeksy dla tabeli `oauth2_refresh_token`
--
ALTER TABLE `oauth2_refresh_token`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_4DD90732B6A2DD68` (`access_token`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E52FFDEEA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `paydelivery`
--
ALTER TABLE `paydelivery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A523CAA6A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `paynow`
--
ALTER TABLE `paynow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_66C86854A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `podstrony`
--
ALTER TABLE `podstrony`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B1665F41A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `stopka1`
--
ALTER TABLE `stopka1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C9B86402A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `szablon1`
--
ALTER TABLE `szablon1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B764BC18A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `szablon2`
--
ALTER TABLE `szablon2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2E6DEDA2A76ED395` (`user_id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `allegro1`
--
ALTER TABLE `allegro1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `cashbill`
--
ALTER TABLE `cashbill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `cat1`
--
ALTER TABLE `cat1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT dla tabeli `category1`
--
ALTER TABLE `category1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT dla tabeli `catt1`
--
ALTER TABLE `catt1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT dla tabeli `domain1`
--
ALTER TABLE `domain1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT dla tabeli `facebook1`
--
ALTER TABLE `facebook1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT dla tabeli `file1`
--
ALTER TABLE `file1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT dla tabeli `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT dla tabeli `hotpay`
--
ALTER TABLE `hotpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `menu1`
--
ALTER TABLE `menu1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT dla tabeli `naglowek1`
--
ALTER TABLE `naglowek1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT dla tabeli `paydelivery`
--
ALTER TABLE `paydelivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `paynow`
--
ALTER TABLE `paynow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT dla tabeli `podstrony`
--
ALTER TABLE `podstrony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT dla tabeli `stopka1`
--
ALTER TABLE `stopka1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT dla tabeli `szablon1`
--
ALTER TABLE `szablon1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1341;

--
-- AUTO_INCREMENT dla tabeli `szablon2`
--
ALTER TABLE `szablon2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=926;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `allegro1`
--
ALTER TABLE `allegro1`
  ADD CONSTRAINT `FK_59AE6A17A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `cashbill`
--
ALTER TABLE `cashbill`
  ADD CONSTRAINT `FK_6916BA7CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `cat1`
--
ALTER TABLE `cat1`
  ADD CONSTRAINT `FK_5B4F9A2EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `category1`
--
ALTER TABLE `category1`
  ADD CONSTRAINT `FK_6FB95188A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `catt1`
--
ALTER TABLE `catt1`
  ADD CONSTRAINT `catt1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `domain1`
--
ALTER TABLE `domain1`
  ADD CONSTRAINT `domain1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `facebook1`
--
ALTER TABLE `facebook1`
  ADD CONSTRAINT `FK_23BD7907A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `file1`
--
ALTER TABLE `file1`
  ADD CONSTRAINT `FK_9EE760E5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `FK_71D60CD0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `hotpay`
--
ALTER TABLE `hotpay`
  ADD CONSTRAINT `FK_AB9400EDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `menu1`
--
ALTER TABLE `menu1`
  ADD CONSTRAINT `menu1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `naglowek1`
--
ALTER TABLE `naglowek1`
  ADD CONSTRAINT `FK_2B8F90D3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `oauth2_access_token`
--
ALTER TABLE `oauth2_access_token`
  ADD CONSTRAINT `FK_454D9673C7440455` FOREIGN KEY (`client`) REFERENCES `oauth2_client` (`identifier`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `oauth2_authorization_code`
--
ALTER TABLE `oauth2_authorization_code`
  ADD CONSTRAINT `FK_509FEF5FC7440455` FOREIGN KEY (`client`) REFERENCES `oauth2_client` (`identifier`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `oauth2_refresh_token`
--
ALTER TABLE `oauth2_refresh_token`
  ADD CONSTRAINT `FK_4DD90732B6A2DD68` FOREIGN KEY (`access_token`) REFERENCES `oauth2_access_token` (`identifier`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_E52FFDEEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `paydelivery`
--
ALTER TABLE `paydelivery`
  ADD CONSTRAINT `FK_A523CAA6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `paynow`
--
ALTER TABLE `paynow`
  ADD CONSTRAINT `FK_66C86854A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `podstrony`
--
ALTER TABLE `podstrony`
  ADD CONSTRAINT `FK_B1665F41A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `stopka1`
--
ALTER TABLE `stopka1`
  ADD CONSTRAINT `FK_C9B86402A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `szablon1`
--
ALTER TABLE `szablon1`
  ADD CONSTRAINT `FK_B764BC18A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ograniczenia dla tabeli `szablon2`
--
ALTER TABLE `szablon2`
  ADD CONSTRAINT `FK_2E6DEDA2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
