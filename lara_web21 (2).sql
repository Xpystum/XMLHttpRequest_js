-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 07:57 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_web21`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Ivan'),
(2, 'Ilya');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Юмор'),
(2, 'Обучение'),
(3, 'Херня');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '358f36c9-e832-426d-b1e1-ff89c2d94e95', 'database', 'default', '{\"uuid\":\"358f36c9-e832-426d-b1e1-ff89c2d94e95\",\"displayName\":\"App\\\\Jobs\\\\Test\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Test\",\"command\":\"O:13:\\\"App\\\\Jobs\\\\Test\\\":0:{}\"}}', 'Illuminate\\Queue\\ManuallyFailedException in C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php:195\nStack trace:\n#0 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\InteractsWithQueue.php(54): Illuminate\\Queue\\Jobs\\Job->fail(NULL)\n#1 C:\\web\\xampp\\htdocs\\back-web21\\app\\Jobs\\Test.php(45): App\\Jobs\\Test->fail()\n#2 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\Test->handle()\n#3 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Test))\n#9 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#10 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Test), false)\n#12 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Test))\n#13 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#14 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\Test))\n#16 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#28 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#30 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(1063): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 C:\\web\\xampp\\htdocs\\back-web21\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 {main}', '2023-09-12 13:32:23'),
(2, '321956c2-7ede-43a1-bfc0-d6153c34f26c', 'database', 'default', '{\"uuid\":\"321956c2-7ede-43a1-bfc0-d6153c34f26c\",\"displayName\":\"App\\\\Jobs\\\\Test\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Test\",\"command\":\"O:13:\\\"App\\\\Jobs\\\\Test\\\":0:{}\"}}', 'Error: Class \"App\\Models\\Post1\" not found in C:\\web\\xampp\\htdocs\\back-web21\\app\\Jobs\\Test.php:39\nStack trace:\n#0 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\Test->handle()\n#1 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Test))\n#7 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#8 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Test), false)\n#10 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Test))\n#11 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#12 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\Test))\n#14 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#26 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(1063): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\web\\xampp\\htdocs\\back-web21\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2023-09-12 13:50:46'),
(3, 'd3dbb653-0ea1-43ae-adbd-019b4aab98a0', 'database', 'default', '{\"uuid\":\"d3dbb653-0ea1-43ae-adbd-019b4aab98a0\",\"displayName\":\"App\\\\Jobs\\\\Test\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\Test\",\"command\":\"O:13:\\\"App\\\\Jobs\\\\Test\\\":0:{}\"}}', 'PDOException: SQLSTATE[22007]: Invalid datetime format: 1366 Incorrect integer value: \'ntrcn\' for column `lara_web21`.`posts`.`author_id` at row 1 in C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:545\nStack trace:\n#0 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(545): PDOStatement->execute()\n#1 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(753): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(\'insert into `po...\', Array)\n#2 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `po...\', Array, Object(Closure))\n#3 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(546): Illuminate\\Database\\Connection->run(\'insert into `po...\', Array, Object(Closure))\n#4 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(498): Illuminate\\Database\\Connection->statement(\'insert into `po...\', Array)\n#5 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `po...\', Array)\n#6 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3322): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(Illuminate\\Database\\Query\\Builder), \'insert into `po...\', Array, \'id\')\n#7 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1869): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#8 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1330): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#9 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1295): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(Illuminate\\Database\\Eloquent\\Builder), Array)\n#10 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1138): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(Illuminate\\Database\\Eloquent\\Builder))\n#11 C:\\web\\xampp\\htdocs\\back-web21\\app\\Jobs\\Test.php(45): Illuminate\\Database\\Eloquent\\Model->save()\n#12 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\Test->handle()\n#13 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#14 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#15 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#16 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#17 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#18 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Test))\n#19 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#20 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#21 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Test), false)\n#22 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Test))\n#23 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#24 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\Test))\n#26 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#27 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#28 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#32 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#33 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#34 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#35 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#36 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#37 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#38 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#40 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(1063): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\web\\xampp\\htdocs\\back-web21\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[22007]: Invalid datetime format: 1366 Incorrect integer value: \'ntrcn\' for column `lara_web21`.`posts`.`author_id` at row 1 (SQL: insert into `posts` (`text`, `title`, `author_id`) values (контент добавлен через очередь, Очередь работает, ntrcn)) in C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:760\nStack trace:\n#0 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(720): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `po...\', Array, Object(Closure))\n#1 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(546): Illuminate\\Database\\Connection->run(\'insert into `po...\', Array, Object(Closure))\n#2 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(498): Illuminate\\Database\\Connection->statement(\'insert into `po...\', Array)\n#3 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\Processor.php(32): Illuminate\\Database\\Connection->insert(\'insert into `po...\', Array)\n#4 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3322): Illuminate\\Database\\Query\\Processors\\Processor->processInsertGetId(Object(Illuminate\\Database\\Query\\Builder), \'insert into `po...\', Array, \'id\')\n#5 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1869): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#6 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1330): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#7 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1295): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(Illuminate\\Database\\Eloquent\\Builder), Array)\n#8 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1138): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(Illuminate\\Database\\Eloquent\\Builder))\n#9 C:\\web\\xampp\\htdocs\\back-web21\\app\\Jobs\\Test.php(45): Illuminate\\Database\\Eloquent\\Model->save()\n#10 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\Test->handle()\n#11 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#13 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#14 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#15 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#16 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\Test))\n#17 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#18 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#19 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\Test), false)\n#20 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\Test))\n#21 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\Test))\n#22 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#23 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\Test))\n#24 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#25 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#27 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(148): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(131): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#30 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#33 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#34 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(661): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#35 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(183): Illuminate\\Container\\Container->call(Array)\n#36 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#37 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(153): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(1063): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\web\\xampp\\htdocs\\back-web21\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\web\\xampp\\htdocs\\back-web21\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 {main}', '2023-09-12 13:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_05_152531_create_order_table', 2),
(6, '2023_09_05_153332_edit_order_table', 3),
(8, '2023_09_05_154223_create_order1_table', 4),
(11, '2023_09_05_160242_edit_order_col_table', 5),
(12, '2023_09_05_174248_create_order2_table', 5),
(13, '2023_09_12_154645_create_jobs_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_product` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adress_delivery` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `product`, `price_product`, `created_at`, `updated_at`, `adress_delivery`) VALUES
(13, 'eveniet', 4202.22998046875, '2023-09-05 14:32:06', '2023-09-05 14:32:06', 'Est corporis sapiente non aliquam non exercitationem sed cupiditate ea sint qui ut eos error.'),
(14, 'voluptate', 17837.109375, '2023-09-05 14:32:06', '2023-09-05 14:32:06', 'Aut perferendis eos dolore ducimus commodi explicabo modi sunt sunt sequi consequatur.'),
(15, 'architecto', 1.100000023841858, '2023-09-05 14:32:06', '2023-09-05 14:32:06', 'Qui corporis voluptates id numquam similique libero omnis reprehenderit eligendi.'),
(16, 'perspiciatis', 2187.340087890625, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Quas et non omnis ut corporis impedit sint tempore tempore sunt voluptatem qui repudiandae qui est nihil perspiciatis sequi et ea.'),
(17, 'dolorum', 2.619999885559082, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Placeat nam velit saepe fuga et adipisci sunt ipsa sed dolorem qui laudantium alias sequi.'),
(18, 'harum', 351596.3125, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Facere est qui voluptatem magnam id.'),
(19, 'voluptatem', 695324.1875, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Sed at repellendus qui a perferendis laudantium et totam ut dolorem error nihil et voluptate.'),
(20, 'non', 558999.25, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Nam sed accusamus quos et autem molestiae doloremque sunt occaecati.'),
(21, 'et', 57.2400016784668, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'In unde sit voluptate adipisci quas voluptatem et rerum quasi ut occaecati laborum.'),
(22, 'eos', 249095.359375, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Earum delectus atque accusamus porro maiores consectetur omnis debitis.'),
(23, 'natus', 3088052, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Consectetur voluptatibus voluptatem perferendis id temporibus culpa dolorum consequuntur quae non debitis deleniti sunt.'),
(24, 'aut', 1.9700000286102295, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Libero dolore quibusdam eum ut eum dolores quis.'),
(25, 'ipsa', 10.100000381469727, '2023-09-05 14:32:46', '2023-09-05 14:32:46', 'Molestiae voluptatem animi dolores explicabo voluptate.');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE `order2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) NOT NULL DEFAULT 18,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `text`, `title`, `author_id`) VALUES
(2017, 'контент добавлен через очередь', 'Очередь работает', 2),
(2018, 'контент добавлен через очередь', 'Ваня косепор', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `post_id`, `category_id`) VALUES
(1, 14, 2),
(2, 14, 3),
(3, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ivan', '1@mail.ru', NULL, '$2y$10$ZDlOgaXVn7yJSAlrMRw85uE8MdFn1O.T5/HONBsieFG9dgkzWFI3q', NULL, NULL, NULL),
(22, 'Harmony Koss', 'rebeca43@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '702oaXYeDh', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(23, 'Brayan Reilly', 'mckayla99@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WA8hKl8sZZ', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(24, 'Pearlie Thiel', 'schneider.jamarcus@example.org', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZPfkOCeXoY', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(25, 'Jace Morissette', 'issac30@example.com', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QDtzZwsGRk', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(26, 'Gennaro Bode', 'nels50@example.com', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UGKOpikJAO', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(27, 'Dr. Adam Hills', 'harris.kelley@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H0rhGoNNyI', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(28, 'Mr. Lorenz Fahey', 'kelli09@example.com', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KUkiIllKBE', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(29, 'Ellie Sipes', 'jaron.breitenberg@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z1npTSeZxI', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(30, 'Ms. Alana Wiza', 'millie67@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0P1vgpxLcQ', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(31, 'Georgette Wolff', 'mitchell.verona@example.net', '2023-09-05 13:57:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bBTNmmDqWH', '2023-09-05 13:57:15', '2023-09-05 13:57:15'),
(32, 'Dr. Lamar Ondricka', 'stanton.kendall@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p9vZGfXnmB', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(33, 'Jamison Cremin', 'walter.briana@example.org', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RWPYely3ZK', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(34, 'Steve Gutmann', 'maymie.welch@example.org', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mrELF8wFnw', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(35, 'Dee Emard Jr.', 'shyanne.nikolaus@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1agvLmvLCW', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(36, 'Prof. Heidi Larson', 'hsatterfield@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'amYfGkeN4G', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(37, 'Prof. Araceli Barrows', 'brown.muhammad@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PjRWf6bofK', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(38, 'Lesly Hane', 'fparker@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bKCm9jaPV3', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(39, 'Mr. Francesco Heathcote', 'hlittel@example.net', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rMOCAHwkSG', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(40, 'Ms. Thea Veum III', 'toy.mathilde@example.org', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Z54hi9Tgqf', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(41, 'Trisha Feil', 'pierre.orn@example.com', '2023-09-05 14:29:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0EYZZhH467', '2023-09-05 14:29:25', '2023-09-05 14:29:25'),
(42, 'Carol Daugherty', 'virgil.marvin@example.com', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0DO2wySQsY', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(43, 'Genevieve Osinski', 'zschmeler@example.net', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bf4uFHp2ZQ', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(44, 'Prof. Jalon Lehner', 'art.ryan@example.com', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LjhXNHt9JU', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(45, 'Patience Nienow', 'jweissnat@example.net', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OGapyRpPaT', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(46, 'Madelynn Grady', 'jett88@example.org', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9cxFzYRTUf', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(47, 'Timmothy Heaney', 'graham.crystal@example.com', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '18FmEux2IB', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(48, 'Mrs. Destinee Goldner', 'leslie68@example.org', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '12uBNkuGSW', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(49, 'Ms. Laurie Fadel Sr.', 'art78@example.net', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aFCfXgCv8b', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(50, 'Dr. Toney Funk MD', 'xwiza@example.org', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eEhgOFUdYv', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(51, 'Prof. Stanford Kuhn Jr.', 'lmarks@example.net', '2023-09-05 14:31:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4HA16i863A', '2023-09-05 14:31:00', '2023-09-05 14:31:00'),
(52, 'Dr. Dudley Bernhard PhD', 'kailey.botsford@example.com', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xw6ml3o2lt', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(53, 'Junior Mills', 'jacinto.douglas@example.org', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '01PRPCxH2Q', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(54, 'Laila Schroeder', 'velva33@example.org', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'frBUpbA94J', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(55, 'Wilmer Reynolds', 'elaina.ullrich@example.com', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wkJLbLAtEY', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(56, 'Prof. Kattie Kuhlman DVM', 'blanche.kris@example.com', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sBPnIfRkPJ', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(57, 'Mr. Carlo Bradtke', 'apadberg@example.net', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ki6YdhkwoT', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(58, 'Mr. Jensen Brakus', 'brobel@example.com', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ggm8eRysSP', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(59, 'Armani Johnston', 'ogoldner@example.net', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yxgUAzsGYm', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(60, 'Lorenzo Kuhic', 'lharris@example.net', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uBonr7ekwe', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(61, 'Suzanne Herzog', 'awitting@example.com', '2023-09-05 14:32:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1HGBpZCm15', '2023-09-05 14:32:06', '2023-09-05 14:32:06'),
(62, 'Mrs. Adriana Christiansen', 'sister46@example.net', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lzNhvhiDNk', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(63, 'Prof. Torey Volkman', 'prosacco.nathanael@example.net', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bj4uNt8pKt', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(64, 'Dandre Connelly', 'ymcclure@example.net', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ztQ5Rz3n9e', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(65, 'Wilber Davis', 'eunice.stehr@example.com', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6szMSrFH4C', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(66, 'Dr. Morgan Funk DDS', 'pschmitt@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ci8AxfqRuV', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(67, 'Audie Weber', 'berniece26@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8ma6BMN564', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(68, 'Hiram Cassin DDS', 'mjacobson@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u69IoKh46c', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(69, 'Mrs. Rachael Macejkovic II', 'rozella50@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HNnOLIPcu8', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(70, 'Penelope Feeney', 'nmcclure@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IriIPyhbD0', '2023-09-05 14:32:46', '2023-09-05 14:32:46'),
(71, 'Roma Lowe', 'evan.dickinson@example.org', '2023-09-05 14:32:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FnRyc9x5aY', '2023-09-05 14:32:46', '2023-09-05 14:32:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order2`
--
ALTER TABLE `order2`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order2`
--
ALTER TABLE `order2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
