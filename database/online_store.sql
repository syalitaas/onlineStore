-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 12:32 PM
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
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `quantity`, `price`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 3, '2023-05-16 00:26:19', '2023-05-16 00:26:19'),
(2, 1, 12, 2, 2, '2023-05-16 19:26:02', '2023-05-16 19:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 2),
(18, '2014_10_12_100000_create_password_resets_table', 2),
(19, '2019_08_19_000000_create_failed_jobs_table', 2),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(21, '2023_03_29_214134_create_products_table', 2),
(22, '2023_05_08_010711_create_items_table', 3),
(23, '2023_05_11_132527_alter_users_table', 4),
(24, '2023_05_05_054656_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 5, '2023-05-16 00:26:19', '2023-05-16 00:26:19'),
(2, 12, 5, '2023-05-16 19:26:02', '2023-05-16 19:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Skintific MSH Niacinamide Moisturizer Gel', 'MSH Niacinamide Brightening Moisture Gel with a texture as light as air, absorbs quickly and controls oil within 24 hours. Formulated with SKINTIFIC\'s exclusive Novel MSH Niacinamide combined with two of the lightest and most effective lightening ingredients, Alpha Arbutin and Tranexamic Acid, capable of significantly brightening within 14 days. MSH Niacinamide is clinically proven to be 10 times more effective than regular niacinamide in reducing hyperpigmentation, reducing redness and improving skin elasticity. Enriched with Centella Asiatica and 5X Ceramide, it does not cause irritation and provides a calming effect on the skin while repairing and maintaining the skin barrier.', '1.png', 11, '2023-05-11 07:00:57', '2023-05-11 07:00:57'),
(2, 'Somethinc Copy Paste Breathable Mesh Cushion SPF 33 PA++', 'We Go Together like COPY & PASTE ♥\r\n\r\nTake Your Complexion to The Next Level.\r\n\r\nIntroduce you to the #1st Local HYBRID Mesh Cushion in Indonesia!\r\n\r\nSpecially Created for Indonesian Skin Tone & Humidity of Tropical Weather.\r\n\r\nWith Breathable Technology, Non-Comedogenic Certified (psst...It Won\'t Clog Your Pores!), Long Lasting, & lots of skincare benefits, DAMNN...Our friendship will last forever!', '2.png', 12, '2023-05-11 07:02:25', '2023-05-11 07:02:25'),
(3, 'BNB Peach Makes Perfect Lip Tint', 'A light gel-textured peach-scented lip tint that coats lips with 6 natural goodness ingredients for fresh and moisturised lips.', '3.png', 4, '2023-05-11 07:03:48', '2023-05-11 07:03:48'),
(4, 'Avoskin Your Skin Bae Alpha Arbutin 3% + Grapeseed Serum', 'One of the best sellers of Avoskin serum from Your Skin Bae series, which combines the active ingredient Alpha Arbutin 3% and natural Grapeseed extract to brighten the skin, disguise black acne scars (PIH), and disguise the appearance of pores. Alpha Arbutin is an effective brightening agent for the skin. While Grapeseed contains antioxidants to keep skin cells healthy and well cared for.', '4.png', 9, '2023-05-11 07:06:06', '2023-05-11 07:06:06'),
(5, 'Maybelline Super Stay® Active Wear Full Coverage Foundation', 'Maybelline Super Stay® Active Wear Full Coverage Foundation delivers up to 30-hour wear that feels light as air and does not transfer.', '5.png', 12, '2023-05-11 07:07:24', '2023-05-11 07:07:24'),
(6, 'AZARINE Bodyguard Moisturiser Sunscreen Serum Sweet Treats Baby Young & Free', 'Body serum containing SPF 50 to treat and protect the skin from exposure to UV rays and pollution. Formulated with 5 multi-functional main active ingredients to brighten, moisturize, tighten, soothe & treat skin barrier. This serum absorbs very easily and leaves no white cast. This body serum also contains a fine fragrance with long-lasting calm & feminine notes.', '6.png', 4, '2023-05-11 07:08:59', '2023-05-11 07:08:59'),
(7, 'Luxcrime Blur & Cover Two Way Cake', 'Luxcrime Blur & Cover Two Way cake instantly mattifies a range of skin tones. It’s formulated to transform the look of your skin with soft-focus powder to smooth away and cover imperfections perfectly. This innovative two way cake is enriched with ultra-soft, silky texture powders with velvet matte finish. It leaves your complexion looking flawless, matte all day long and evens complexion with the added benefit of UV protection and Vitamin E.', '7.png', 8, '2023-05-11 07:09:55', '2023-05-11 07:09:55'),
(8, 'PINKFLASH Waterproof Easy Eyeliner', '\"🔥PINKFLASH#OhMyLine Mistake-free liquid eyeliner is coming! New and efficient upgrade, creating a mistake-free eyeliner.\r\n[Upgrade tip] The tip has become thinner, and the line thickness and ink amount can be better controlled. Easy to create error-free eyeliner.\r\n[Long Wear upgrade] New quick-drying formula dries in 10 seconds. Smudge-proof, transfer-resistant, and won\'t fade all day long.\r\n[Waterproof upgrade] The waterproof formula is efficiently upgraded. It doesn\'t matter if you cry or sweat, the color won\'t fade.\r\n[Color upgrade] Not only 1 black color, but also added brown color. From everyday brown to thick black cat eyes. You can choose.', '8.png', 2, '2023-05-11 07:11:00', '2023-05-11 07:11:00'),
(9, 'Avoskin Your Skin Bae Toner Ultimate Marine Collagen 5%+ Hyacross + Galactomyces 100ml', 'Avoskin Your Skin Bae Toner which combines active ingredients Ultimate Hyaluron Marine Collagen 5% + Hyacross 2% + Galactomyces is specially formulated to provide optimal hydration effect on the skin and help stimulate collagen in the skin. Skin that is kept moist will be able to absorb the next skincare product more optimally. Your Skin Bae Series products contain a blend of active ingredients and natural ingredients, can be used for all skin types and are safe to use for ages starting from 15 years.', '9.png', 10, '2023-05-11 07:12:12', '2023-05-11 07:20:26'),
(10, 'SOMETHINC HOLYSHIELD! SUNSCREEN SHAKE MIST SPF 50+ PA++++', 'Sunscreen Shake Mist with SPF 50+ PA++++ utilizes FILM FORMER technology which forms a lock layer so that the skin is protected optimally from UVA & UVB rays and is multifunctional as a makeup spray setting. Easy to re-apply without using makeup, NO WHITECAST, & gives a Healthy Glow Finish look!', '10.png', 6, '2023-05-11 07:13:12', '2023-05-11 07:21:56'),
(11, 'MAKE OVER Stick Matte Lip Crayon Make Over 105 Skye', 'Make Over Color Stick Matte Crayon is a lip color in the form of a practical crayon pencil that can be rotated automatically so it doesn\'t need to be sharpened. With a smooth matte formula content, this lip crayon gives a smooth and transferproof extra matte finish. In addition, the slim and precise tip makes it easier to spread to the tip of the lips. The high pigment color content gives intense color to the lips in one swipe and can last all day long. Formulated with light breathable formula technology, the lip crayon can blend with the lips and feels as light as not using lipstick.', '11.png', 6, '2023-05-11 07:17:30', '2023-05-11 07:22:53'),
(12, 'PUCELLE Eau De Luxe Cologne Lucent 100ml', 'PUCELLE Eau De Luxe Cologne - LUCENT is the fragrance of modern femininity with a blend of Floral Freesia and Jasmine notes that give the impression: bright, elegant and chic at the same time.', '12.png', 2, '2023-05-11 07:18:32', '2023-05-11 07:23:45'),
(13, 'LOVE Beauty AND Planet Argan Oil & Lavender Body Lotion Soothe and Serene', 'Enriched with Golden Argan Oil and scented with French Lavender, the Soothe and Serene body lotion moisturises, softens and soothes the skin. This body lotion is packaged in 100% recycled bottles, vegan-certified, cruelty free, free of dyes, silicones and parabens.', '13.png', 5, '2023-05-11 07:24:43', '2023-05-11 07:24:43'),
(14, 'Make Over Ultra Cover Liquid Matt Foundation', 'Make Over Ultra Cover Liquid Matt Foundation is a liquid foundation with a high coverage that gives a semi-matte/satin finish.', '14.png', 10, '2023-05-11 07:26:01', '2023-05-11 07:26:01'),
(15, 'Evangeline Eau De Parfum Selection Black Vanilla 100mL', 'Black Vanilla - For those of you who want to be different, Evangeline Black Vanilla is here for you, with its mild-and-sweet aroma, it\'s sure to make you even sweeter! #EverydayEvangeline', '15.png', 2, '2023-05-11 07:27:08', '2023-05-11 07:27:08'),
(16, 'The Originote Hyalucera Moisturizer Gel', 'Moisturizer formulated with 2 types of Hyaluron, Ceramide and Chlorelina which can help treat skin barrier, and maintain skin youthfulness. Locking hydration in the skin so that it makes the skin feel tight and skin firmness is maintained, helps prevent signs of premature aging by keeping the skin moist.', '16.png', 3, '2023-05-11 07:27:56', '2023-05-11 07:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'client',
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `balance`) VALUES
(4, 'Syalita', 'syalitaalt17@gmail.com', NULL, '$2y$10$iqv8r84rlrk.fM4cOKCjtuWJtWCOUoX/FXQ9l0zW2Begz4OcbolVa', NULL, '2023-05-11 09:29:05', '2023-05-11 09:29:05', 'admin', 5000),
(5, 'Syalita2', 'ssyalitaa@gmail.com', NULL, '$2y$10$vRJPt67Emli9A.L3Wb4YP.lmTOYrxS/pIm83jEH2EnDnMiUv9UPBS', NULL, '2023-05-11 10:10:49', '2023-05-16 19:26:02', 'client', 4984);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_order_id_foreign` (`order_id`),
  ADD KEY `items_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
