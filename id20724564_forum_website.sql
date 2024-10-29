-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2024 at 04:38 AM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20724564_forum_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `created_at`) VALUES
(2, 'aj123', '$2y$10$OYruM1gZ1vQXEP1Snv9zBel8Ud3iKBALe9QJrw6tCw7YxPbNFDo6S', '2023-07-16 21:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `b_id` int(4) NOT NULL,
  `b_title` varchar(100) NOT NULL,
  `b_des` text NOT NULL,
  `b_key` varchar(200) NOT NULL,
  `b_img` text NOT NULL,
  `b_created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`b_id`, `b_title`, `b_des`, `b_key`, `b_img`, `b_created_at`) VALUES
(2, 'Best Guitars of 2023 | Guitar Kaksha', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae non voluptatum, nemo alias quia asperiores laborum dicta, odio harum ea, impedit inventore reprehenderit obcaecati ullam tempore quis unde commodi debitis dolorem omnis aspernatur nesciunt? Nobis officia est ratione consequuntur quas amet enim, blanditiis explicabo doloribus iste, accusamus optio nam reprehenderit! Libero vero veritatis eveniet, exercitationem consectetur omnis, impedit asperiores odio rerum fuga alias voluptate. Voluptas repellat qui voluptate doloremque! Ullam, mollitia, ipsa sapiente vitae neque quibusdam itaque recusandae inventore maiores officiis enim saepe officia cumque voluptatum at minima? At minima molestiae illum doloribus quae fugit sunt ea modi molestias ducimus?', ' Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae non voluptatum', '64b3a3ce6d778.jpg', '2023-07-16'),
(3, 'How to play Guitar - 5 Easy Steps | Guitar Kaksha', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aperiam, incidunt autem quae perspiciatis voluptatem at beatae tempora, eum ratione consequuntur, iusto deleniti alias nobis aliquam possimus quos officia aut dolore culpa recusandae? Aliquam laborum possimus fugit doloremque accusamus reprehenderit repellendus alias fugiat veritatis tempore eum dolore, est ea iste non officia, recusandae consequuntur molestias qui error odit saepe a voluptas cumque.<br> Voluptate incidunt aut, ex nam soluta, minima recusandae quo dolorem eveniet qui cum nemo at harum deleniti nobis dignissimos iste, sit odit perspiciatis asperiores modi beatae? Explicabo corrupti aliquam accusantium voluptates distinctio illo reprehenderit reiciendis? Vitae ullam doloribus aliquid facilis esse, quidem quod dolore praesentium nisi consequatur excepturi illo incidunt fugit ratione iure corrupti modi suscipit quo eaque necessitatibus aliquam temporibus? Eius illum eaque magni nihil expedita. Omnis ut libero delectus. Libero dolore sint veritatis aliquid, at maxime debitis amet perspiciatis est in enim? Ullam nemo deleniti asperiores recusandae repellendus amet necessitatibus, quia eveniet facilis quod tempore quaerat odio. Libero eum, reprehenderit temporibus ullam sapiente animi totam optio minus. Minima quas voluptatibus fugiat adipisci! Dolores placeat architecto ipsa, nam molestiae optio maxime cupiditate?<br> In distinctio exercitationem at, sit natus ullam fuga provident culpa dolore dolorum architecto ducimus. Esse odit sequi eveniet aperiam, error ratione atque vitae dolores labore ex ut alias quod exercitationem rerum facere ipsum, odio expedita harum non, dignissimos repellendus quasi soluta qui? Obcaecati sequi iste ex quos amet dolore velit impedit nesciunt delectus harum odio quisquam laborum placeat deserunt reprehenderit autem ipsam dolorem, natus ullam tempora praesentium! Molestiae nulla necessitatibus dolor iste ratione asperiores hic voluptatum nesciunt perspiciatis in dolorum, id quos, enim sint ipsum pariatur tempore blanditiis. Consequatur commodi distinctio cumque atque consectetur hic sapiente quibusdam modi facere, accusantium dolores quidem laudantium doloribus sunt. Soluta sed tempore iusto explicabo aliquam animi repellendus perferendis commodi odit repudiandae fuga nisi delectus, eaque mollitia saepe nobis eius enim quibusdam, dolores quo quas minus. Mollitia libero ratione praesentium! Vero culpa doloribus eaque minus voluptate, in eligendi beatae reprehenderit pariatur dolores, error mollitia ratione incidunt harum sint nisi corporis reiciendis tempore, recusandae porro sed repellendus distinctio enim! Voluptatibus consectetur similique nostrum accusantium molestiae illum neque sequi temporibus maxime tempora ullam dicta, debitis totam quod necessitatibus velit. Omnis, in. Debitis maiores enim facilis totam consectetur natus ducimus accusantium adipisci rem, quaerat blanditiis sequi cupiditate explicabo quibusdam eius molestias atque magnam? Dolorem fuga, recusandae quos assumenda est sequi a mollitia eius magnam dolores nihil odit quibusdam porro voluptate fugit, perspiciatis iure facilis, vel itaque voluptatum accusamus facere aspernatur obcaecati? Voluptatem suscipit asperiores et quasi corrupti mollitia quis doloremque vitae animi ipsum aperiam totam laudantium inventore quia, dignissimos recusandae non voluptate sapiente ad omnis laboriosam atque, ex nesciunt! Pariatur minus<br><br> architecto ex repudiandae, maiores perspiciatis neque obcaecati saepe ipsum nihil fuga quae recusandae expedita. Modi similique dolore dolorem, nemo mollitia ipsam consequatur veritatis autem soluta, ad eum dolorum fugit hic, totam beatae? In qui sunt quis assumenda expedita quibusdam necessitatibus? Repellat, porro architecto? Harum eligendi velit in modi aliquam.<br> Iste cumque earum, commodi veritatis iusto asperiores eos officia, vel quasi velit soluta iure, ab ipsum reiciendis. Dicta molestiae tempore, non consequatur reprehenderit ab magni, saepe pariatur voluptates numquam atque est architecto quibusdam eum perspiciatis? Optio reprehenderit natus nam delectus adipisci eos. Incidunt omnis, ipsum assumenda, maxime rerum sapiente, eligendi culpa labore nesciunt ratione tenetur numquam quasi? Dolorum ipsum fugiat ipsam, laboriosam quas at.<br><br> Id facere quaerat corporis, ratione eligendi nihil alias? Est, sed? Dignissimos dolores consectetur aperiam ex tempora autem quo incidunt cupiditate dolore. Odit quis aperiam accusantium soluta, cumque commodi nemo iusto excepturi numquam officiis delectus doloribus recusandae exercitationem minima? Nulla placeat magnam explicabo nisi nostrum qui ex at fugiat, fugit esse voluptatibus ullam, saepe eum. Molestias ut ullam facilis quae, iste maxime magnam, corrupti labore assumenda accusantium temporibus itaque, sed deserunt tenetur ipsam tempora voluptatem earum delectus dolores sequi quas. Veniam dolorem corporis quae nihil reiciendis suscipit cum commodi perspiciatis, magni adipisci autem ad quisquam quia pariatur doloribus temporibus. Nobis nihil rerum quos possimus reiciendis fugit itaque inventore! Esse, laborum alias deleniti hic vel ullam accusamus, a nobis magnam adipisci odio non eaque ducimus tempore dicta deserunt, ipsa quidem delectus temporibus. Dolorum ratione alias incidunt repellat maxime neque soluta, dicta quo in. Quibusdam illo fuga asperiores consectetur consequatur soluta inventore cumque nesciunt. Repellendus, rerum voluptas sapiente, vel corrupti assumenda laboriosam maxime blanditiis veniam iste, aliquam odit ratione illum voluptate ipsa aperiam facilis magnam corporis impedit eum? Praesentium tempore iusto at perspiciatis illum repellendus voluptatem accusantium? Architecto assumenda blanditiis earum placeat ipsam. Sapiente quidem facere facilis itaque et praesentium, suscipit eius quia ipsam necessitatibus distinctio vero quos in illo ab eos earum enim sed explicabo fugit aperiam? Numquam debitis suscipit, rerum quos accusamus est consequatur aliquid quas assumenda magnam a vero magni expedita iste veritatis explicabo deleniti nostrum? Hic molestias, impedit voluptas, sint cum quas error ut reiciendis dolorum cumque totam! Doloremque quisquam natus velit quos, quam quis suscipit itaque architecto accusantium voluptates tempora repudiandae ad perferendis, saepe repellat reprehenderit! Sunt eos qui alias nihil optio, maxime aspernatur sint eveniet deleniti cum est explicabo nam ad veniam ipsam enim quae, aperiam modi dolorem soluta voluptatem eaque?<br> Repellendus dolore ipsum expedita ducimus reiciendis nesciunt iure consequuntur? Similique sunt rerum dignissimos incidunt atque eveniet adipisci a nam odit accusantium labore, facilis accusamus fugiat nulla nobis expedita. Non perspiciatis voluptas, tenetur aut illo aspernatur necessitatibus eos quo, quis debitis, quam neque laboriosam. Voluptatibus architecto laudantium iure illum at minima consequatur iste natus eveniet esse amet qui vero ab necessitatibus molestiae dolorum, recusandae optio eligendi perferendis saepe minus. Eveniet eum cumque earum, aut iusto officiis tempora esse id beatae sint ut voluptate molestias soluta perspiciatis voluptas? Dignissimos soluta eum reiciendis fugiat, omnis dolore tenetur earum expedita molestiae deserunt cumque harum eligendi molestias eaque architecto? Aspernatur, sint quasi in rerum totam blanditiis voluptates saepe quia ad eaque numquam pariatur, repellendus eos? Repellat pariatur cupiditate commodi dolor iste tenetur aliquam laboriosam omnis veniam. Corporis, illo, eum illum aliquam at fugit laudantium sed omnis delectus nesciunt sequi vero.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aperiam, incidunt', '64b3a90ca11e0.png', '2023-07-16'),
(4, 'Online Guitar Class | Guitar Kaksha', '\r\n            Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aperiam, incidunt autem quae perspiciatis voluptatem at beatae tempora, eum ratione consequuntur, iusto deleniti alias nobis aliquam possimus quos officia aut dolore culpa recusandae? Aliquam laborum possimus fugit doloremque accusamus reprehenderit repellendus alias fugiat veritatis tempore eum dolore, est ea iste non officia, recusandae consequuntur molestias qui error odit saepe a voluptas cumque. Voluptate incidunt aut, ex nam soluta, minima recusandae quo dolorem eveniet qui cum nemo at harum deleniti nobis dignissimos iste, sit odit perspiciatis asperiores modi beatae? Explicabo corrupti aliquam accusantium voluptates distinctio illo reprehenderit reiciendis? Vitae ullam doloribus aliquid facilis esse, quidem quod dolore praesentium nisi consequatur excepturi illo incidunt fugit ratione iure corrupti modi suscipit quo eaque necessitatibus aliquam temporibus? Eius illum eaque magni nihil expedita. Omnis ut libero delectus. Libero dolore sint veritatis aliquid, at maxime debitis amet perspiciatis est in enim? Ullam nemo deleniti asperiores recusandae repellendus amet necessitatibus, quia eveniet facilis quod tempore quaerat odio. Libero eum, reprehenderit temporibus ullam sapiente animi totam optio minus. Minima quas voluptatibus fugiat adipisci! Dolores placeat architecto ipsa, nam molestiae optio maxime cupiditate? In distinctio exercitationem at, sit natus ullam fuga provident culpa dolore dolorum architecto ducimus. Esse odit sequi eveniet aperiam, error ratione atque vitae dolores labore ex ut alias quod exercitationem rerum facere ipsum, odio expedita harum non, dignissimos repellendus quasi soluta qui? Obcaecati sequi iste ex quos amet dolore velit impedit nesciunt delectus harum odio quisquam laborum placeat deserunt reprehenderit autem ipsam dolorem, natus ullam tempora praesentium! Molestiae nulla necessitatibus dolor iste ratione asperiores hic voluptatum nesciunt perspiciatis in dolorum, id quos, enim sint ipsum pariatur tempore blanditiis. Consequatur commodi distinctio cumque atque consectetur hic sapiente quibusdam modi facere, accusantium dolores quidem laudantium doloribus sunt. Soluta sed tempore iusto explicabo aliquam animi repellendus perferendis commodi odit repudiandae fuga nisi delectus, eaque mollitia saepe nobis eius enim quibusdam, dolores quo quas minus. Mollitia libero ratione praesentium! Vero culpa doloribus eaque minus voluptate, in eligendi beatae reprehenderit pariatur dolores, error mollitia ratione incidunt harum sint nisi corporis reiciendis tempore, recusandae porro sed repellendus distinctio enim! Voluptatibus consectetur similique nostrum accusantium molestiae illum neque sequi temporibus maxime tempora ullam dicta, debitis totam quod necessitatibus velit. Omnis, in. Debitis maiores enim facilis totam consectetur natus ducimus accusantium adipisci rem, quaerat blanditiis sequi cupiditate explicabo quibusdam eius molestias atque magnam? Dolorem fuga, recusandae quos assumenda est sequi a mollitia eius magnam dolores nihil odit quibusdam porro voluptate fugit, perspiciatis iure facilis, vel itaque voluptatum accusamus facere aspernatur obcaecati? Voluptatem suscipit asperiores et quasi corrupti mollitia quis doloremque vitae animi ipsum aperiam totam laudantium inventore quia, dignissimos recusandae non voluptate sapiente ad omnis laboriosam atque, ex nesciunt! Pariatur minus architecto ex repudiandae, maiores perspiciatis neque obcaecati saepe ipsum nihil fuga quae recusandae expedita. Modi similique dolore dolorem, nemo mollitia ipsam consequatur veritatis autem soluta, ad eum dolorum fugit hic, totam beatae? In qui sunt quis assumenda expedita quibusdam necessitatibus? Repellat, porro architecto? Harum eligendi velit in modi aliquam. Iste cumque earum, commodi veritatis iusto asperiores eos officia, vel quasi velit soluta iure, ab ipsum reiciendis. Dicta molestiae tempore, non consequatur reprehenderit ab magni, saepe pariatur voluptates numquam atque est architecto quibusdam eum perspiciatis? Optio reprehenderit natus nam delectus adipisci eos. Incidunt omnis, ipsum assumenda, maxime rerum sapiente, eligendi culpa labore nesciunt ratione tenetur numquam quasi? Dolorum ipsum fugiat ipsam, laboriosam quas at. Id facere quaerat corporis, ratione eligendi nihil alias? Est, sed? Dignissimos dolores consectetur aperiam ex tempora autem quo incidunt cupiditate dolore. Odit quis aperiam accusantium soluta, cumque commodi nemo iusto excepturi numquam officiis delectus doloribus recusandae exercitationem minima? Nulla placeat magnam explicabo nisi nostrum qui ex at fugiat, fugit esse voluptatibus ullam, saepe eum. Molestias ut ullam facilis quae, iste maxime magnam, corrupti labore assumenda accusantium temporibus itaque, sed deserunt tenetur ipsam tempora voluptatem earum delectus dolores sequi quas. Veniam dolorem corporis quae nihil reiciendis suscipit cum commodi perspiciatis, magni adipisci autem ad quisquam quia pariatur doloribus temporibus. Nobis nihil rerum quos possimus reiciendis fugit itaque inventore! Esse, laborum alias deleniti hic vel ullam accusamus, a nobis magnam adipisci odio non eaque ducimus tempore dicta deserunt, ipsa quidem delectus temporibus. Dolorum ratione alias incidunt repellat maxime neque soluta, dicta quo in. Quibusdam illo fuga asperiores consectetur consequatur soluta inventore cumque nesciunt. Repellendus, rerum voluptas sapiente, vel corrupti assumenda laboriosam maxime blanditiis veniam iste, aliquam odit ratione illum voluptate ipsa aperiam facilis magnam corporis impedit eum? Praesentium tempore iusto at perspiciatis illum repellendus voluptatem accusantium? Architecto assumenda blanditiis earum placeat ipsam. Sapiente quidem facere facilis itaque et praesentium, suscipit eius quia ipsam necessitatibus distinctio vero quos in illo ab eos earum enim sed explicabo fugit aperiam? Numquam debitis suscipit, rerum quos accusamus est consequatur aliquid quas assumenda magnam a vero magni expedita iste veritatis explicabo deleniti nostrum? Hic molestias, impedit voluptas, sint cum quas error ut reiciendis dolorum cumque totam! Doloremque quisquam natus velit quos, quam quis suscipit itaque architecto accusantium voluptates tempora repudiandae ad perferendis, saepe repellat reprehenderit! Sunt eos qui alias nihil optio, maxime aspernatur sint eveniet deleniti cum est explicabo nam ad veniam ipsam enim quae, aperiam modi dolorem soluta voluptatem eaque? Repellendus dolore ipsum expedita ducimus reiciendis nesciunt iure consequuntur? Similique sunt rerum dignissimos incidunt atque eveniet adipisci a nam odit accusantium labore, facilis accusamus fugiat nulla nobis expedita. Non perspiciatis voluptas, tenetur aut illo aspernatur necessitatibus eos quo, quis debitis, quam neque laboriosam. Voluptatibus architecto laudantium iure illum at minima consequatur iste natus eveniet esse amet qui vero ab necessitatibus molestiae dolorum, recusandae optio eligendi perferendis saepe minus. Eveniet eum cumque earum, aut iusto officiis tempora esse id beatae sint ut voluptate molestias soluta perspiciatis voluptas? Dignissimos soluta eum reiciendis fugiat, omnis dolore tenetur earum expedita molestiae deserunt cumque harum eligendi molestias eaque architecto? Aspernatur, sint quasi in rerum totam blanditiis voluptates saepe quia ad eaque numquam pariatur, repellendus eos? Repellat pariatur cupiditate commodi dolor iste tenetur aliquam laboriosam omnis veniam. Corporis, illo, eum illum aliquam at fugit laudantium sed omnis delectus nesciunt sequi vero.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aperiam, incidunt ', '64b3a94283bfa.png', '2023-07-16'),
(5, 'How to play Voilen - 5 Easy Steps | Guitar Kaksha', '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas, dolores dicta tempora, doloribus similique officiis, officia ipsum eum iusto magni repudiandae eaque sed qui ipsa obcaecati natus labore! Ducimus quos, est voluptatum mollitia eos dolores tempora dignissimos deleniti corporis, hic quam sint eum distinctio saepe et nobis numquam dicta maxime animi? A repellendus, doloremque iste temporibus officia quas. Ratione unde sit earum, consequuntur esse magni libero error doloribus, dolorum totam ad! Fuga, quae quo. Ipsa aliquid incidunt amet, placeat nobis pariatur odit fuga eaque repellat. Accusamus qui doloribus eveniet, enim dolore quaerat non inventore cum dolorem veniam totam officiis ducimus impedit iure natus. Sequi nam, nostrum perferendis et sapiente provident, reiciendis harum quaerat dolorem nisi expedita animi voluptas. Cupiditate labore fugit enim unde iusto, neque voluptas expedita maxime sit temporibus, magnam doloribus? Eos iusto quia, vitae necessitatibus laboriosam consectetur iure voluptatem itaque, sint vero fugiat distinctio a sit numquam? Fuga, odio. Accusamus, ex sapiente dolorum repudiandae veniam perferendis ipsam molestias fuga inventore eveniet, explicabo facere cupiditate mollitia et a adipisci cumque voluptate, dicta aliquam distinctio! Obcaecati corporis est dicta aspernatur. Fuga debitis maiores porro, deserunt deleniti similique nostrum, pariatur hic aperiam nam, tempora accusantium expedita aspernatur? Praesentium a aut alias minus dolores dolorem tempore maiores excepturi tenetur quas suscipit quasi nulla distinctio, molestiae, saepe aliquid eaque dolore fugiat molestias culpa illo. Quod magni iure magnam! Beatae inventore quidem corrupti dolorum, perferendis dolor optio vero asperiores atque facere repudiandae est impedit minus voluptates perspiciatis mollitia rem, minima enim vitae suscipit! Distinctio est deleniti, non deserunt libero modi voluptatem quasi. Numquam inventore officia beatae corrupti tempora, harum sed recusandae provident totam dolore aliquid accusantium soluta ipsum veritatis odit a laudantium quidem laboriosam! Officia nemo dolor expedita. Fugit maxime blanditiis quod officia sunt pariatur qui, voluptatibus quo doloribus illo. Deserunt laudantium, quae praesentium, reprehenderit doloremque placeat est neque asperiores at rerum nulla odio saepe. In molestias doloribus harum quia? Blanditiis molestias culpa officiis similique. Deleniti iste ex facilis mollitia aliquid possimus, magnam nobis ipsum a ut qui alias adipisci ducimus odio excepturi, debitis nulla, sed eius deserunt. Placeat, temporibus officia? At deleniti fuga illo in, ducimus, ipsam, repellendus temporibus voluptatibus minus maiores fugit odit aspernatur. Quae soluta, reprehenderit, necessitatibus, eaque fuga voluptatibus hic corporis repellendus numquam sint esse repudiandae odit a quis porro in. Neque recusandae architecto veritatis sint veniam praesentium officiis exercitationem perspiciatis ea aliquid dolor delectus facere quam nobis iusto ipsam, repellendus natus itaque eligendi porro qui dolores reiciendis labore! Ipsam sequi maxime, doloribus quae illum, atque pariatur rem excepturi ducimus temporibus molestias reiciendis natus saepe quos exercitationem impedit architecto rerum cumque? Eum enim ullam voluptates mollitia dicta amet at vitae voluptate, dolorum dolores rem quisquam eius officiis quia similique sed nisi ut voluptatibus culpa recusandae molestiae. Adipisci, unde est ex non vel esse obcaecati repellat dolores cum voluptates corporis, porro modi iusto aperiam ea impedit saepe minima facere dolorum similique odio quae ut? Consequuntur unde eaque earum dolorem quidem omnis rerum cupiditate voluptas debitis consectetur molestias voluptate aut fuga, ut excepturi ea, quis inventore ex fugit quasi quos laborum. Delectus assumenda incidunt fugiat veritatis tempore iure vel itaque debitis! Cupiditate, nisi mollitia qui incidunt iste nulla quo magni quam ullam asperiores molestiae consequuntur animi laboriosam iusto hic nemo, laudantium eveniet temporibus? Cum totam rerum velit alias consequatur perferendis voluptate eligendi, repudiandae labore obcaecati fugiat sit aliquid modi dignissimos autem quod explicabo reiciendis illum dicta tempore magnam aspernatur. Ducimus consectetur quidem culpa provident fugit sed, sequi eum odio reiciendis consequuntur. Aperiam, enim perferendis! Nihil, expedita sint autem mollitia reprehenderit dolores explicabo nostrum neque modi. Quis nihil qui id deleniti quasi, perferendis earum aliquam natus cumque pariatur? Nesciunt illum quaerat odit distinctio temporibus, ipsa, numquam magni optio, qui quisquam atque adipisci? Distinctio iure, debitis sapiente quia temporibus reprehenderit ad sunt! Voluptates veritatis, magni rerum accusamus impedit facilis assumenda sunt atque aliquid recusandae quos. Consequatur, quidem? Dolorem temporibus adipisci possimus, corrupti vitae enim hic error asperiores distinctio. Expedita aliquam fugit quae error sed vitae iure quas reiciendis reprehenderit minima illo neque laudantium culpa sunt quisquam incidunt modi, eos voluptas consequatur iste ut. Reiciendis facilis obcaecati illo impedit. Perferendis, nihil quae. Tempore totam culpa adipisci iusto id, quae provident pariatur? Ipsam voluptatum nulla qui quae repudiandae, delectus quam sint enim facere non! Inventore veritatis ipsum illo reprehenderit sit esse commodi odit voluptate deserunt vel, quo laudantium ipsa excepturi sint architecto eaque numquam autem aperiam quod maiores nihil deleniti quam optio perspiciatis. Unde possimus itaque consectetur aliquid esse nihil, et assumenda, est, dolores eum officia modi provident ad! Harum consequuntur corporis fugiat suscipit exercitationem animi tempore libero mollitia doloribus? Odio minima laborum officia ipsa magni saepe assumenda, molestiae repellendus nesciunt harum quo molestias cupiditate! Culpa cumque repellendus obcaecati maiores? Iusto qui blanditiis ducimus, sed nesciunt minus sunt odio inventore non perferendis ut maxime! Minus, perferendis.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis aperiam, incidunt', '64b3a96dbbbcf.png', '2023-07-16'),
(6, 'Can you learn to play guitar in just 1 month? | Guitar Kaksha', '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Amet quod ex, inventore est ipsam debitis. Sint ducimus laborum voluptates distinctio nostrum nemo ipsum cum illo dolores adipisci. Ducimus quis amet repellendus labore repellat vero soluta incidunt, rerum quae cum deserunt debitis eligendi recusandae accusamus quod itaque assumenda numquam nam quisquam aperiam non pariatur nesciunt. Aut esse nihil eum tempora quasi nam veritatis odit ipsam voluptatum magni quae exercitationem porro voluptates ab facilis odio dolore fugit qui in, ipsa minus delectus perferendis optio. Blanditiis odit provident cumque quisquam doloremque non explicabo! Architecto libero reiciendis necessitatibus, esse illum nostrum sed, soluta numquam non et porro quae aperiam iure nobis quis. Libero corrupti numquam porro animi eaque rerum ad beatae qui harum quod adipisci, voluptates non aliquam eos consequatur architecto quas ullam doloribus nam eius. Beatae deserunt ab maiores asperiores dignissimos culpa necessitatibus consectetur magni veritatis voluptates dolorem libero corporis nulla vero, natus hic earum ipsa aperiam, architecto repudiandae illo officiis. Esse id ipsam, similique atque sapiente quo quibusdam officiis distinctio molestias, natus itaque sequi iusto architecto fugit excepturi aspernatur nulla inventore. Sit earum assumenda quibusdam vero temporibus laboriosam ipsa maiores omnis alias? Magnam nihil vitae rerum ipsam ratione quidem praesentium ea ipsa porro dolore veniam aliquam sapiente alias quis ducimus, mollitia perferendis. Quae ratione tempora maxime enim officia cupiditate sapiente veritatis nemo vero, libero assumenda fugiat, optio eius! Reprehenderit itaque magni quos amet nulla cumque magnam voluptates aut explicabo maxime? Quidem vero saepe, harum qui dolores temporibus dolore hic perspiciatis doloribus aut quisquam architecto dolor at rerum consectetur illum! Ducimus, cum qui aut porro eaque dicta possimus voluptate delectus iste ipsa sit quod ratione, minus dignissimos consectetur illo rem neque omnis odio consequatur quisquam, quaerat dolor? Aliquam quos distinctio quasi et nesciunt, reiciendis autem fugit voluptatibus praesentium, quod, reprehenderit ducimus. Culpa eaque officia, earum, cupiditate maxime est nihil provident dignissimos quia, ratione iusto qui similique numquam voluptas magni fugiat dolor magnam cumque nesciunt libero! Id officiis aperiam ullam nemo tempore, architecto autem quaerat perferendis iste numquam, illum nulla delectus ut saepe pariatur molestias iure molestiae quae facere laborum! Eos sit alias aspernatur dolorum illum, assumenda quaerat delectus totam labore distinctio odit quam quae ea ratione eum, exercitationem sed incidunt modi cupiditate corrupti. Et, ipsa ea quam, deserunt deleniti quod eum consequuntur, quae reprehenderit iure soluta veritatis. Eos debitis nisi voluptatem dolorem facere quibusdam magni. Harum autem dolorum asperiores, aliquid, ipsum nesciunt culpa officia at aperiam necessitatibus blanditiis praesentium? Unde nisi exercitationem numquam neque dolorum quasi? Architecto minus expedita, saepe, amet magni placeat doloremque iure doloribus at, enim ad eius! Qui ea voluptatibus hic similique quos, dicta ex, debitis consequuntur neque nam consequatur officiis ut maxime et repellat, doloremque sint temporibus quo ipsum! Soluta qui culpa illum commodi quaerat voluptas libero sequi reiciendis repellendus, dolores natus consequatur odio non asperiores vitae iusto est nemo a tenetur impedit? Nihil illum ullam, dolor accusantium numquam cumque ut consequatur vel veniam magnam assumenda? Quasi debitis beatae modi. Dolor incidunt a cumque ducimus ipsum! Sequi minus, possimus voluptate dolor enim earum, odio ea rerum veritatis deleniti rem beatae deserunt harum voluptatum vel libero impedit consequatur nesciunt. Quae qui ad sunt totam tempora doloribus at velit. Voluptatem adipisci, neque quasi velit nihil voluptas, perspiciatis vero, debitis odit possimus tempora laudantium. Eius architecto pariatur itaque consectetur quia est doloribus eum consequatur, repellendus voluptates iusto necessitatibus! Temporibus tempora reiciendis nesciunt sit voluptates vero rerum necessitatibus accusantium, quo quod enim, cum, soluta quasi nisi facere unde ex? Animi sed voluptatum, pariatur doloribus mollitia corporis illo placeat quia ratione tempore aperiam. Exercitationem asperiores ducimus dolor fugit, quis nemo molestiae, quaerat ullam quisquam doloribus ab magni amet laudantium dolorem explicabo itaque nihil quae ipsam sit. Optio, itaque ipsam dolore labore libero ad reprehenderit sapiente quaerat alias ipsum debitis, iste dolorum nobis cupiditate quod explicabo nihil similique? Nam veniam architecto sunt maxime, sapiente veritatis, quod atque deserunt qui ab odit quidem consectetur molestias molestiae nostrum error, perferendis consequatur cum ea nobis perspiciatis quam autem eaque recusandae. Perspiciatis eligendi dolores architecto sapiente aut animi quod, officia nisi distinctio molestiae illum veniam accusamus ipsum! Quas ut exercitationem quasi inventore, vel vitae tempora repellat non, cupiditate sed harum debitis sapiente explicabo culpa molestias, delectus incidunt dignissimos vero. Harum autem tempora ab id, perferendis totam minima porro repudiandae ipsam ipsa laborum, quia commodi, in praesentium. Voluptatum a, necessitatibus veritatis inventore doloremque aliquid quas amet repellat distinctio, magni ad, maxime asperiores laborum nam ex dolor cupiditate vero. Quas ea accusantium architecto libero sapiente cupiditate error ipsum id possimus qui alias omnis quod reprehenderit eos, modi consectetur nobis officiis cum ipsa aspernatur, sint vitae quidem? Quod, officiis cupiditate! Dolorem ullam, magnam ipsa repellat dicta aspernatur a numquam reprehenderit maiores. Eos repudiandae quisquam atque consequatur mollitia, placeat, voluptatum explicabo modi minima aliquam cum ab excepturi, expedita molestias! Asperiores accusamus at voluptas quaerat, molestiae obcaecati vero tenetur. At reiciendis laborum quae cumque mollitia quaerat adipisci voluptatum tenetur ex similique nesciunt, qui sit nam asperiores laboriosam voluptatibus quibusdam. Alias consequuntur est architecto. Enim ipsa, delectus, qui dicta, possimus est ipsam ut unde numquam suscipit dolorum soluta. Cumque ab, quidem voluptas ipsam repellat omnis mollitia tenetur, laborum porro modi odit praesentium neque iure est sapiente voluptate. Sequi aliquam rerum illum temporibus, dolore fugiat fuga! In fugit culpa obcaecati assumenda rem veritatis ad aut. Beatae nemo distinctio in aut necessitatibus, recusandae, optio placeat numquam sed cupiditate fugiat, magni assumenda voluptatibus. Iste quod veritatis consequuntur sapiente omnis? Harum aspernatur illum veritatis earum doloribus! Incidunt nemo ipsa omnis totam neque, corporis illum iure sint quia. Repellendus animi consequuntur ea officia? Deleniti, asperiores! Quasi voluptates sunt fugiat eveniet odit eius, ipsam animi earum quibusdam aliquam similique repellat libero repudiandae? Expedita enim eius dolorem obcaecati, vitae, consequuntur officia in nobis quo, facilis repellendus pariatur iusto eligendi animi mollitia. Optio asperiores aperiam a iste, cum laboriosam consequuntur excepturi error placeat delectus numquam harum qui hic assumenda voluptate quam quae rem labore libero reprehenderit nobis id quidem autem! Quis maxime unde alias eius suscipit cumque vel obcaecati illum, recusandae temporibus dolorum!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Amet quod ex, inventore est ipsam debitis.', '64b3ad4f1b44f.png', '2023-07-16'),
(8, 'demo', 'demo', 'demo', '64b52678775c9.png', '2023-07-17'),
(9, 'Demo 2', 'Demo 2 des', 'Demo 2 key', '64b52fe561368.jpg', '2023-07-17'),
(10, 'Shhehs', 'Yshsyshhshsss', 'Hshshshhshshsshhwhhwhqh', '64b5793224fc8.jpg', '2023-07-17'),
(11, 'demo 4', 'demo 4', 'demo 4', '64b588bb36abe.png', '2023-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(4) NOT NULL,
  `category_title` varchar(50) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `category_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_title`, `category_description`, `category_time`) VALUES
(1, 'Python', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development', '2023-06-14 03:57:01'),
(2, 'C++', 'C++ is a cross-platform language that can be used to create high-performance applications.C++ was developed by Bjarne Stroustrup, as an extension to the C language.C++ gives programmers a high level of control over system resources and memory.', '2023-06-23 11:59:30'),
(3, 'Java', 'Java is a widely-used programming language for coding web applications. It has been a popular choice among developers for over two decades, with millions of Java applications in use today. Java is a multi-platform, object-oriented.', '2023-06-23 12:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(4) NOT NULL,
  `comment_thread_id` int(4) NOT NULL,
  `comment_user_id` int(4) NOT NULL,
  `comment_description` varchar(255) NOT NULL,
  `comment_timestamp` datetime DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`, `time`) VALUES
(1, 'admin', '$2y$10$m4TZBteYc.HqAP6WJJUN3eJlfDOvUgZmcol91MXI32SiThIf/PVlW', '2023-06-13 19:22:30'),
(2, 'abc', '$2y$10$LVT2tVWGUrUs1Qy3EtzN0.HZOYhaGmFbF3OSA0FOVw82MY9f1.JRu', '2023-06-14 04:34:39'),
(3, 'xyz', '$2y$10$Z8eQMJeooF6do8pb/CkgmOXSROm0pNGccdDDPi8puOyY59L.WTq8K', '2023-06-23 12:06:45'),
(4, 'user', '$2y$10$q7D5.WP.9I2sEVKer1PWVeWgo..AQ9AWHWQruueoK4.51sOV7ACLq', '2023-06-24 13:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(4) NOT NULL,
  `thread_title` varchar(100) NOT NULL,
  `thread_description` varchar(255) NOT NULL,
  `thread_user_id` int(4) NOT NULL,
  `thread_cat_id` int(4) NOT NULL,
  `thread_timestamp` datetime NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_description`, `thread_user_id`, `thread_cat_id`, `thread_timestamp`) VALUES
(1, 'My code is not running please check', 'This is just a demo issue. Thankyou! ', 1, 1, '2023-06-14 04:24:41'),
(3, 'What is the difference btw list and tuples? ', 'This is just a demo issue. Thank you! ', 2, 1, '2023-06-14 04:40:33'),
(6, 'What are the different data types in python?', 'This is just a demo issue. Thank you!', 2, 1, '2023-06-23 12:05:42'),
(7, 'What are the different python libraries?', 'This is just a demo issue. Thankyou', 3, 1, '2023-06-23 12:07:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `comment_thread_id` (`comment_thread_id`),
  ADD KEY `comment_user_id` (`comment_user_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`),
  ADD KEY `thread_user_id` (`thread_user_id`),
  ADD KEY `thread_cat_id` (`thread_cat_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_description`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`comment_thread_id`) REFERENCES `threads` (`thread_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`comment_user_id`) REFERENCES `login` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_ibfk_1` FOREIGN KEY (`thread_user_id`) REFERENCES `login` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `threads_ibfk_2` FOREIGN KEY (`thread_cat_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
