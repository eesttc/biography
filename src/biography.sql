-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 11, 2025 lúc 08:17 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `biography`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `achievements`
--

CREATE TABLE `achievements` (
  `achievement_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `achievements`
--

INSERT INTO `achievements` (`achievement_id`, `title`, `description`) VALUES
(1, 'Nobel Prize in Physics 1903', 'The 1903 Nobel Prize in Physics was awarded to three scientists: Marie Curie, her husband Pierre Curie, and Henri Becquerel. They were honored for their pioneering research on radioactivity, a phenomenon that Becquerel had discovered in 1896.\r\n\r\nHenri Becquerel discovered that certain uranium salts emitted radiation without needing sunlight. This finding opened new avenues for research on radioactivity. The Curies continued the research by identifying two new elements, polonium and radium. They conducted detailed experiments to measure the radioactivity of these elements.'),
(2, 'Nobel Prize in Chemistry 1911', 'The 1911 Nobel Prize in Chemistry was awarded to Marie Curie for her research on radioactive elements, particularly for the isolation of radium and polonium. She became the first woman to receive the Nobel Prize in Chemistry.\r\n\r\nMarie Curie developed methods to extract radium from uranium ore, which required sophisticated chemical techniques and high precision. She conducted hundreds of experiments to achieve the necessary purity of this element.\r\n\r\nShe also discovered the element polonium during her research, enriching the understanding of radioactive elements.'),
(3, 'Davy Medal 1903', 'The Davy Medal is awarded for outstanding contributions to the field of chemistry. In 1903, Marie and Pierre Curie were recognized for their pioneering research on radioactivity, particularly their work related to the discovery and identification of radioactive elements such as radium and polonium.\r\n\r\nThey conducted important experiments to determine the properties of radioactive elements, opening new understandings of atomic structure and how these elements interact. The Davy Medal also acknowledged the close collaboration between the Curies in their research, showcasing their teamwork and dedication to science.\r\n\r\nMarie Curie\'s receipt of the Davy Medal alongside her husband was a significant advancement, affirming the role of women in science, a field where women were often restricted at that time.'),
(4, 'Matteucci Medal 1904', 'The Matteucci Medal is awarded for outstanding achievements in the fields of physics and chemistry. The Curies received this honor for their pioneering work on radioactivity, which included groundbreaking discoveries about radioactive elements.\r\n\r\nThe Curies conducted extensive research that led to the discovery of radium and polonium, expanding the understanding of radioactive materials. They developed new methods for isolating radioactive elements, which required advanced chemical techniques and meticulous experimentation.'),
(5, 'Acton Prize 1907', 'The Acton Prize is given for outstanding achievements in the natural sciences. Marie Curie\'s receipt of this prize underscored her pioneering work in radioactivity, which had already garnered significant international attention.\r\n\r\nCurie\'s groundbreaking discoveries included the identification and isolation of the radioactive elements radium and polonium. Her research significantly advanced the understanding of atomic structure and radioactivity. Her work laid the groundwork for future applications of radioactivity in medicine, particularly in cancer treatment.'),
(6, 'Elliott Cresson Medal 1909', 'The Elliott Cresson Medal is awarded for notable achievements in science and technology. Curie\'s receipt of this medal reflected her pioneering research in radioactivity and her status as a leading scientist of her time.\r\n\r\n Curie\'s groundbreaking work included the discovery and isolation of radioactive elements, notably radium and polonium, which revolutionized the understanding of atomic properties and radioactivity. Her findings laid the foundation for future applications in fields such as medicine, particularly in cancer treatment through radiation therapy.'),
(7, 'Franklin Medal of the American Philosophical Society 1921', 'The Franklin Medal is awarded for achievements in science and technology that have made a significant impact on society. Curie\'s receipt of this medal acknowledged her pioneering research in radioactivity and her role as a leading scientific figure.\r\n\r\nCurie\'s groundbreaking work involved the discovery and isolation of radioactive elements, particularly radium and polonium. Her research fundamentally changed the understanding of atomic structure and radioactivity. Her discoveries laid the groundwork for the use of radiation in medicine, particularly in the treatment of cancer.'),
(8, 'Entities Named After Marie Curie', 'The curie (symbol Ci), a unit of radioactivity, is named in honour of her and Pierre Curie (although the commission which agreed on the name never clearly stated whether the standard was named after Pierre, Marie, or both).\r\n\r\nThe element with atomic number 96 was named curium (symbol Cm).\r\n\r\nThree radioactive minerals are also named after the Curies: curite, sklodowskite, and cuprosklodowskite.\r\n\r\nThe Marie Skłodowska-Curie Actions fellowship program of the European Union for young scientists wishing to work in a foreign country.\r\n\r\nIn 2007 a Paris metro station (in Ivry) was renamed after the two Curies.\r\n\r\nThe Marie-Curie station, a planned underground Réseau express métropolitain (REM) station in the borough of Saint-Laurent in Montreal is named in her honour. A nearby road, Avenue Marie Curie, is also named in her honour.\r\n\r\nThe Polish research nuclear reactor Maria.\r\n\r\nThe 7000 Curie asteroid.\r\n\r\nMarie Curie charity, in the United Kingdom.\r\n\r\nThe IEEE Marie Sklodowska-Curie Award, an international award presented for outstanding contributions to the field of nuclear and plasma sciences and engineering, was established by the Institute of Electrical and Electronics Engineers in 2008.\r\n\r\nThe Marie Curie Medal, an annual science award established in 1996 and conferred by the Polish Chemical Society.\r\n\r\nThe Marie Curie–Sklodowska Medal and Prize, an annual award conferred by the London-based Institute of Physics for distinguished contributions to physics education.\r\n\r\nMaria Curie-Skłodowska University in Lublin, Poland.\r\n\r\nPierre and Marie Curie University in Paris.\r\n\r\nMaria Skłodowska-Curie National Research Institute of Oncology in Poland.\r\n\r\nÉcole élémentaire Marie-Curie in London, Ontario, Canada; Curie Metropolitan High School in Chicago, United States; Marie Curie High School in Ho Chi Minh City, Vietnam; Lycée français Marie Curie de Zurich, Switzerland; see Lycée Marie Curie for a list of other schools named after her.\r\n\r\nRue Madame Curie in Beirut, Lebanon.\r\n\r\nBeetle species - Psammodes sklodowskae Kamiński & Gearner.'),
(9, 'Numerous biographies are devoted to her', 'Ève Curie (Marie Curie\'s daughter), Madame Curie, 1938.\r\n\r\nFrançoise Giroud, Marie Curie: A Life, 1987.\r\n\r\nSusan Quinn, Marie Curie: A Life, 1996.\r\n\r\nBarbara Goldsmith, Obsessive Genius: The Inner World of Marie Curie, 2005.\r\n\r\nLauren Redniss, Radioactive: Marie and Pierre Curie, a Tale of Love and Fallout, 2011, adapted into the 2019 British film.\r\n\r\nSobel, Dava (24 October 2024). The Elements of Marie Curie: How the Glow of Radium Lit a Path for Women in Science. Fourth Estate. ISBN 978-0-00-853691-6.'),
(10, 'Marie Curie has been the subject of a number of films', '1943: Madame Curie, a U.S. Oscar-nominated film by Mervyn LeRoy starring Greer Garson.\r\n\r\n1997: Les Palmes de M. Schutz, a French film adapted from a play of the same title, and directed by Claude Pinoteau. Marie Curie is played by Isabelle Huppert.\r\n\r\n2014: Marie Curie, une femme sur le front, a French-Belgian film, directed by Alain Brunard  and starring Dominique Reymond.\r\n\r\n2016: Marie Curie: The Courage of Knowledge, a European co-production by Marie Noëlle starring Karolina Gruszka.\r\n\r\n2016: Super Science Friends, an American Internet animated series created by Brett Jubinville with Hedy Gregor as Marie Curie.\r\n\r\n2019: Radioactive, a British film by Marjane Satrapi starring Rosamund Pike.'),
(11, 'Others', 'Curie is the subject of the 2013 play False Assumptions by Lawrence Aronovitch, in which the ghosts of three other women scientists observe events in her life. Curie has also been portrayed by Susan Marie Frontczak in her play, Manya: The Living History of Marie Curie, a one-woman show which by 2014 had been performed in 30 U.S. states and nine countries. Lauren Gunderson\'s 2019 play The Half-Life of Marie Curie portrays Curie during the summer after her 1911 Nobel Prize victory, when she was grappling with depression and facing public scorn over the revelation of her affair with Paul Langevin.\r\n\r\nThe life of the scientist was also the subject of a 2018 Korean musical, titled Marie Curie. The show was since translated in English (as Marie Curie a New Musical) and has been performed several times across Asia and Europe, receiving its official Off West End premiere in London\'s Charing Cross Theatre in summer 2024.\r\n\r\nCurie has appeared on more than 600 postage stamps in many countries across the world.\r\n\r\nBetween 1989 and 1996, she was depicted on a 20,000-złoty banknote designed by Andrzej Heidrich. In 2011, a commemorative 20-złoty banknote depicting Curie was issued by the National Bank of Poland on the 100th anniversary of the scientist receiving the Nobel Prize in Chemistry.\r\n\r\nIn 1994, the Bank of France issued a 500-franc banknote depicting Marie and Pierre Curie. Since 2024, Curie has been depicted on French 50 euro cent coins to commemorate her importance in French history.\r\n\r\nIn 2025, the European Central Bank announced that Curie had been selected to appear on the obverse of twenty euro banknotes in a future redesign, were the theme \"European culture\" to be selected over \"Rivers and birds\".\r\n\r\nMarie Curie was immortalized in at least one color Autochrome Lumière photograph during her lifetime. It was saved in Musée Curie in Paris.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('super_admin','editor','viewer') DEFAULT 'editor',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biography`
--

CREATE TABLE `biography` (
  `biography_id` int(11) NOT NULL,
  `stage` text NOT NULL,
  `content` text NOT NULL,
  `img1_link` text NOT NULL,
  `img1_alt` text NOT NULL,
  `img1_description` text NOT NULL,
  `img2_link` text NOT NULL,
  `img2_alt` text NOT NULL,
  `img2_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `biography`
--

INSERT INTO `biography` (`biography_id`, `stage`, `content`, `img1_link`, `img1_alt`, `img1_description`, `img2_link`, `img2_alt`, `img2_description`) VALUES
(1, 'Early years', 'Maria Skłodowska was born in Warsaw, in Congress Poland in the Russian Empire, on 7 November 1867, the fifth and youngest child of well-known teachers Bronisława, née Boguska, and Władysław Skłodowski. The elder siblings of Maria (nicknamed Mania) were Zofia (born 1862, nicknamed Zosia), Józef (born 1863, nicknamed Józio), Bronisława (born 1865, nicknamed Bronia) and Helena (born 1866, nicknamed Hela).\r\n\r\nOn both the paternal and maternal sides, the family had lost their property and fortunes through patriotic involvements in Polish national uprisings aimed at restoring Poland\'s independence (the most recent had been the January Uprising of 1863–1865). This condemned the subsequent generation, including Maria and her elder siblings, to a difficult struggle to get ahead in life. Maria\'s paternal grandfather, Józef Skłodowski had been principal of the Lublin primary school attended by Bolesław Prus, who became a leading figure in Polish literature.\r\n\r\nWładysław Skłodowski taught mathematics and physics, subjects that Maria was to pursue, and was also director of two Warsaw gymnasia (secondary schools) for boys. After Russian authorities eliminated laboratory instruction from the Polish schools, he brought much of the laboratory equipment home and instructed his children in its use. He was eventually fired by his Russian supervisors for pro-Polish sentiments and forced to take lower-paying posts; the family also lost money on a bad investment and eventually chose to supplement their income by lodging boys in the house. Maria\'s mother Bronisława operated a prestigious Warsaw boarding school for girls; she resigned from the position after Maria was born. She died of tuberculosis in May 1878, when Maria was ten years old. Less than three years earlier, Maria\'s oldest sibling, Zofia, had died of typhus contracted from a boarder. Maria\'s father was an atheist, her mother a devout Catholic.[18] The deaths of Maria\'s mother and sister caused her to give up Catholicism and become agnostic.\r\n\r\nWhen she was ten years old, Maria began attending J. Sikorska\'s boarding school; next she attended a gymnasium (secondary school) for girls, from which she graduated on 12 June 1883 with a gold medal. After a collapse, possibly due to depression, she spent the following year in the countryside with relatives of her father, and the next year with her father in Warsaw, where she did some tutoring. Unable to enrol in a regular institution of higher education because she was a woman, she and her sister Bronisława became involved with the clandestine Flying University (sometimes translated as \"Floating University\"), a Polish patriotic institution of higher learning that admitted women students.\r\n\r\nMaria made an agreement with her sister, Bronisława, that she would give her financial assistance during Bronisława\'s medical studies in Paris, in exchange for similar assistance two years later. In connection with this, Maria took a position first as a home tutor in Warsaw, then for two years as a governess in Szczuki with a landed family, the Żorawskis, who were relatives of her father. While working for the latter family, she fell in love with their son, Kazimierz Żorawski, a future eminent mathematician. His parents rejected the idea of his marrying the penniless relative, and Kazimierz was unable to oppose them. Maria\'s loss of the relationship with Żorawski was tragic for both. He soon earned a doctorate and pursued an academic career as a mathematician, becoming a professor and rector of Kraków University. Still, as an old man and a mathematics professor at the Warsaw Polytechnic, he would sit contemplatively before the statue of Maria Skłodowska that had been erected in 1935 before the Radium Institute, which she had founded in 1932.\r\n\r\nAt the beginning of 1890, Bronisława—who a few months earlier had married Kazimierz Dłuski, a Polish physician and social and political activist—invited Maria to join them in Paris. Maria declined because she could not afford the university tuition; it would take her a year and a half longer to gather the necessary funds. She was helped by her father, who was able to secure a more lucrative position again. All that time she continued to educate herself, reading books, exchanging letters, and being tutored herself. In early 1889 she returned home to her father in Warsaw. She continued working as a governess and remained there until late 1891. She tutored, studied at the Flying University, and began her practical scientific training (1890–1891) in a chemistry laboratory at the Museum of Industry and Agriculture at Krakowskie Przedmieście 66, near Warsaw\'s Old Town. The laboratory was run by her cousin Józef Boguski, who had been an assistant in Saint Petersburg to the Russian chemist Dmitri Mendeleyev.', '/biography/public/assets/images/biographyp1.jpg', 'biographyp1', 'Maria (left) and sister Bronisława', '', '', ''),
(2, 'Life in Paris', 'In late 1891, she left Poland for France. In Paris, Maria (or Marie, as she would be known in France) briefly found shelter with her sister and brother-in-law before renting a garret closer to the university, in the Latin Quarter, and proceeding with her studies of physics, chemistry, and mathematics at the University of Paris, where she enrolled in late 1891. She subsisted on her meagre resources, keeping herself warm during cold winters by wearing all the clothes she had. She focused so hard on her studies that she sometimes forgot to eat. Skłodowska studied during the day and tutored evenings, barely earning her keep. In 1893, she was awarded a degree in physics and began work in an industrial laboratory of Gabriel Lippmann. Meanwhile, she continued studying at the University of Paris and with the aid of a fellowship she was able to earn a second degree in 1894.\r\n\r\nSkłodowska had begun her scientific career in Paris with an investigation of the magnetic properties of various steels, commissioned by the Society for the Encouragement of National Industry. That same year, Pierre Curie entered her life: it was their mutual interest in natural sciences that drew them together. Pierre Curie was an instructor at The City of Paris Industrial Physics and Chemistry Higher Educational Institution (ESPCI Paris). They were introduced by Polish physicist Józef Wierusz-Kowalski, who had learned that she was looking for a larger laboratory space, something that Wierusz-Kowalski thought Pierre could access. Though Curie did not have a large laboratory, he was able to find some space for Skłodowska where she was able to begin work.\r\n\r\nTheir mutual passion for science brought them increasingly closer, and they began to develop feelings for one another. Eventually, Pierre proposed marriage, but at first Skłodowska did not accept as she was still planning to go back to her native country. Curie, however, declared that he was ready to move with her to Poland, even if it meant being reduced to teaching French. Meanwhile, for the 1894 summer break, Skłodowska returned to Warsaw, where she visited her family. She was still labouring under the illusion that she would be able to work in her chosen field in Poland, but she was denied a place at Kraków University because of sexism in academia. A letter from Pierre convinced her to return to Paris to pursue a PhD. At Skłodowska\'s insistence, Curie had written up his research on magnetism and received his own doctorate in March 1895; he was also promoted to professor at the School. A contemporary quip would call Skłodowska \"Pierre\'s biggest discovery\".\r\n\r\nOn 26 July 1895, they were married in Sceaux; neither wanted a religious service. Marie\'s dark blue outfit, worn instead of a bridal gown, would serve her for many years as a laboratory outfit. They shared two pastimes: long bicycle trips and journeys abroad, which brought them even closer. In Pierre, Marie had found a new love, a partner, and a scientific collaborator on whom she could depend.', '', '', '', '', '', ''),
(3, 'New elements', 'In 1895, Wilhelm Röntgen discovered the existence of X-rays, though the mechanism behind their production was not yet understood. In 1896, Henri Becquerel discovered that uranium salts emitted rays that resembled X-rays in their penetrating power. He demonstrated that this radiation, unlike phosphorescence, did not depend on an external source of energy but seemed to arise spontaneously from uranium itself. Influenced by these two important discoveries, Curie decided to look into uranium rays as a possible field of research for a thesis.\r\n\r\nShe used an innovative technique to investigate samples. Fifteen years earlier, her husband and his brother had developed a version of the electrometer, a sensitive device for measuring electric charge. Using her husband\'s electrometer, she discovered that uranium rays caused the air around a sample to conduct electricity. Using this technique, her first result was the finding that the activity of the uranium compounds depended only on the quantity of uranium present. She hypothesized that the radiation was not the outcome of some interaction of molecules but must come from the atom itself. This hypothesis was an important step in disproving the assumption that atoms were indivisible. \r\n\r\nIn 1897, her daughter Irène was born. To support her family, Curie began teaching at the École normale supérieure. The Curies did not have a dedicated laboratory; most of their research was carried out in a converted shed next to ESPCI. The shed, formerly a medical school dissecting room, was poorly ventilated and not even waterproof. They were unaware of the deleterious effects of radiation exposure attendant on their continued unprotected work with radioactive substances. ESPCI did not sponsor her research, but she received subsidies from metallurgical and mining companies and from various organisations and governments.\r\n\r\nCurie\'s systematic studies included two uranium minerals, pitchblende and torbernite (also known as chalcolite). Her electrometer showed that pitchblende was four times as active as uranium itself, and chalcolite twice as active. She concluded that, if her earlier results relating the quantity of uranium to its activity were correct, then these two minerals must contain small quantities of another substance that was far more active than uranium. She began a systematic search for additional substances that emit radiation, and by 1898 she discovered that the element thorium was also radioactive. Pierre Curie was increasingly intrigued by her work. By mid-1898 he was so invested in it that he decided to drop his work on crystals and to join her.\r\n\r\nThe research idea writes Reid was her own; no one helped her formulate it, and although she took it to her husband for his opinion she clearly established her ownership of it. She later recorded the fact twice in her biography of her husband to ensure there was no chance whatever of any ambiguity. It is likely that already at this early stage of her career she realized that... many scientists would find it difficult to believe that a woman could be capable of the original work in which she was involved.\r\n\r\nShe was acutely aware of the importance of promptly publishing her discoveries and thus establishing her priority. Had not Becquerel, two years earlier, presented his discovery to the Académie des Sciences the day after he made it, credit for the discovery of radioactivity (and even a Nobel Prize), would instead have gone to Silvanus Thompson. Curie chose the same rapid means of publication. Since she was not a member of the Académie, her paper, giving a brief and simple account of her work, was presented for her to the Académie on 12 April 1898 by her former professor, Gabriel Lippmann. Even so, just as Thompson had been beaten by Becquerel, so Curie was beaten in the race to tell of her discovery that thorium gives off rays in the same way as uranium; two months earlier, Gerhard Carl Schmidt had published his own finding in Berlin. At that time, no one else in the world of physics had noticed what Curie recorded in a sentence of her paper, describing how much greater were the activities of pitchblende and chalcolite than that of uranium itself: \"The fact is very remarkable, and leads to the belief that these minerals may contain an element which is much more active than uranium.\" She later would recall how she felt \"a passionate desire to verify this hypothesis as rapidly as possible\". On 14 April 1898, the Curies optimistically weighed out a 100-gram sample of pitchblende and ground it with a pestle and mortar. They did not realise at the time that what they were searching for was present in such minute quantities that they would eventually have to process tonnes of the ore.\r\n\r\nIn July 1898, Curie and her husband published a joint paper announcing the existence of an element they named \'polonium\', in honour of her native Poland, which would for another twenty years remain partitioned among three empires (Russia, Austria, and Prussia). On 26 December 1898, the Curies announced the existence of a second element, which they named \'radium\', from the Latin word for \'ray\'. In the course of their research, they also coined the word \'radioactivity\'.\r\n\r\nTo prove their discoveries beyond any doubt, the Curies sought to isolate polonium and radium in pure form. Pitchblende is a complex mineral; the chemical separation of its constituents was an arduous task. The discovery of polonium had been relatively easy; chemically it resembles the element bismuth, and polonium was the only bismuth-like substance in the ore. Radium, however, was more elusive; it is closely related chemically to barium, and pitchblende contains both elements. By 1898 the Curies had obtained traces of radium, but appreciable quantities, uncontaminated with barium, were still beyond reach. The Curies undertook the arduous task of separating out radium salt by differential crystallisation. From a tonne of pitchblende, one-tenth of a gram of radium chloride was separated in 1902. In 1910, she isolated pure radium metal. She never succeeded in isolating polonium, which has a half-life of only 138 days.\r\n\r\nBetween 1898 and 1902, the Curies published, jointly or separately, a total of 32 scientific papers, including one that announced that, when exposed to radium, diseased, tumour-forming cells were destroyed faster than healthy cells.\r\n\r\nIn 1900, Curie became the first woman faculty member at the École normale supérieure de jeunes filles and her husband joined the faculty of the University of Paris. In 1902 she visited Poland on the occasion of her father\'s death.\r\n\r\nIn June 1903, supervised by Gabriel Lippmann, Curie was awarded her doctorate from the University of Paris. That month the couple were invited to the Royal Institution in London to give a speech on radioactivity; being a woman, she was prevented from speaking, and Pierre Curie alone was allowed to. Meanwhile, a new industry began developing, based on radium. The Curies did not patent their discovery and benefited little from this increasingly profitable business.', '', '', '', '', '', ''),
(4, 'Nobel Prizes', 'In December 1903 the Royal Swedish Academy of Sciences awarded Pierre Curie, Marie Curie, and Henri Becquerel the Nobel Prize in Physics, \"in recognition of the extraordinary services they have rendered by their joint researches on the radiation phenomena discovered by Professor Henri Becquerel.\" At first the committee had intended to honour only Pierre Curie and Henri Becquerel, but a committee member and advocate for women scientists, Swedish mathematician Magnus Gösta Mittag-Leffler, alerted Pierre to the situation, and after his complaint, Marie\'s name was added to the nomination. Marie Curie was the first woman to be awarded a Nobel Prize.\r\n\r\nCurie and her husband declined to go to Stockholm to receive the prize in person; they were too busy with their work, and Pierre Curie, who disliked public ceremonies, was feeling increasingly ill. As Nobel laureates were required to deliver a lecture, the Curies finally undertook the trip in 1905. The award money allowed the Curies to hire their first laboratory assistant. Following the award of the Nobel Prize, and galvanised by an offer from the University of Geneva, which offered Pierre Curie a position, the University of Paris gave him a professorship and the chair of physics, although the Curies still did not have a proper laboratory. Upon Pierre Curie\'s complaint, the University of Paris relented and agreed to furnish a new laboratory, but it would not be ready until 1906.\r\n\r\nIn December 1904, Curie gave birth to their second daughter, Ève. She hired Polish governesses to teach her daughters her native language, and sent or took them on visits to Poland.\r\n\r\nOn 19 April 1906, Pierre Curie died in a road accident. Walking across the Rue Dauphine in heavy rain, he was struck by a horse-drawn vehicle and fell under its wheels, which fractured his skull and killed him instantly. Curie was devastated by her husband\'s death. On 13 May 1906 the physics department of the University of Paris decided to retain the chair that had been created for her late husband and offer it to Marie. She accepted it, hoping to create a world-class laboratory as a tribute to her husband Pierre. She was the first woman to become a professor at the University of Paris.\r\n\r\nCurie\'s quest to create a new laboratory did not end with the University of Paris, however. In her later years, she headed the Radium Institute (Institut du radium, now Curie Institute, Institut Curie), a radioactivity laboratory created for her by the Pasteur Institute and the University of Paris. The initiative for creating the Radium Institute had come in 1909 from Pierre Paul Émile Roux, director of the Pasteur Institute, who had been disappointed that the University of Paris was not giving Curie a proper laboratory and had suggested that she move to the Pasteur Institute. Only then, with the threat of Curie leaving, did the University of Paris relent, and eventually the Curie Pavilion became a joint initiative of the University of Paris and the Pasteur Institute.\r\n\r\nIn 1910 Curie succeeded in isolating radium; she also defined an international standard for radioactive emissions that was eventually named for her and Pierre: the curie. Nevertheless, in 1911 the French Academy of Sciences failed, by one or two votes, to elect her to membership in the academy. Elected instead was Édouard Branly, an inventor who had helped Guglielmo Marconi develop the wireless telegraph. It was only over half a century later, in 1962, that a doctoral student of Curie\'s, Marguerite Perey, became the first woman elected to membership in the academy.\r\n\r\nDespite Curie\'s fame as a scientist working for France, the public\'s attitude tended toward xenophobia—the same that had led to the Dreyfus affair—which also fuelled false speculation that Curie was Jewish. During the French Academy of Sciences elections, she was vilified by the right-wing press as a foreigner and atheist. Her daughter later remarked on the French press\'s hypocrisy in portraying Curie as an unworthy foreigner when she was nominated for a French honour, but portraying her as a French heroine when she received foreign honours such as her Nobel Prizes.\r\n\r\nIn 1911, it was revealed that Curie was involved in a year-long affair with physicist Paul Langevin, a former student of Pierre Curie\'s, a married man who was estranged from his wife. This resulted in a press scandal that was exploited by her academic opponents. Curie (then in her mid-40s) was five years older than Langevin and was misrepresented in the tabloids as a foreign Jewish home-wrecker. When the scandal broke, she was away at a conference in Belgium; on her return, she found an angry mob in front of her house and had to seek refuge, with her daughters, in the home of her friend Camille Marbo.\r\n\r\nInternational recognition for her work had been growing to new heights, and the Royal Swedish Academy of Sciences, overcoming opposition prompted by the Langevin scandal, honoured her a second time, with the 1911 Nobel Prize in Chemistry. This award was \"in recognition of her services to the advancement of chemistry by the discovery of the elements radium and polonium, by the isolation of radium and the study of the nature and compounds of this remarkable element\". Because of the negative publicity due to her affair with Langevin, the chair of the Nobel committee, Svante Arrhenius, attempted to prevent her attendance at the official ceremony for her Nobel Prize in Chemistry, citing her questionable moral standing. Curie replied that she would be present at the ceremony, because \"the prize has been given to her for her discovery of polonium and radium\" and that \"there is no relation between her scientific work and the facts of her private life\".\r\n\r\nShe was the first person to win or share two Nobel Prizes, and remains alone with Linus Pauling as Nobel laureates in two fields each. A delegation of celebrated Polish men of learning, headed by novelist Henryk Sienkiewicz, encouraged her to return to Poland and continue her research in her native country. Curie\'s second Nobel Prize enabled her to persuade the French government to support the Radium Institute, built in 1914, where research was conducted in chemistry, physics, and medicine. A month after accepting her 1911 Nobel Prize, she was hospitalised with depression and a kidney ailment. For most of 1912, she avoided public life but did spend time in England with her friend and fellow physicist Hertha Ayrton. She returned to her laboratory only in December, after a break of about 14 months.\r\n\r\nIn 1912 the Warsaw Scientific Society offered her the directorship of a new laboratory in Warsaw but she declined, focusing on the developing Radium Institute to be completed in August 1914, and on a new street named Rue Pierre-Curie (today rue Pierre-et-Marie-Curie). She was appointed director of the Curie Laboratory in the Radium Institute of the University of Paris, founded in 1914. She visited Poland in 1913 and was welcomed in Warsaw but the visit was mostly ignored by the Russian authorities. The institute\'s development was interrupted by the First World War, as most researchers were drafted into the French Army; it fully resumed its activities after the war, in 1919.', '/biography/public/assets/images/biographyp3.jpg', 'biop3', '1903 Nobel Prize diploma', '/biography/public/assets/images/biographyp4.jpg', 'bio4', '1911 Nobel Prize diploma'),
(5, 'World War I', 'During World War I, Curie recognised that wounded soldiers were best served if operated upon as soon as possible. She saw a need for field radiological centres near the front lines to assist battlefield surgeons, including to obviate amputations when in fact limbs could be saved. After a quick study of radiology, anatomy, and automotive mechanics, she procured X-ray equipment, vehicles, and auxiliary generators, and she developed mobile radiography units, which came to be popularly known as petites Curies (\"Little Curies\"). She became the director of the Red Cross Radiology Service and set up France\'s first military radiology centre, operational by late 1914. Assisted at first by a military doctor and her 17-year-old daughter Irène, Curie directed the installation of 20 mobile radiological vehicles and another 200 radiological units at field hospitals in the first year of the war. Later, she began training other women as aides.\r\n\r\nIn 1915, Curie produced hollow needles containing \"radium emanation\", a colourless, radioactive gas given off by radium, later identified as radon, to be used for sterilising infected tissue. She provided the radium from her own one-gram supply. It is estimated that over a million wounded soldiers were treated with her X-ray units. Busy with this work, she carried out very little scientific research during that period. In spite of all her humanitarian contributions to the French war effort, Curie never received any formal recognition of it from the French government.\r\n\r\nAlso, promptly after the war started, she attempted to donate her gold Nobel Prize medals to the war effort but the French National Bank refused to accept them. She did buy war bonds, using her Nobel Prize money. She said:\r\n\r\nI am going to give up the little gold I possess. I shall add to this the scientific medals, which are quite useless to me. There is something else: by sheer laziness I had allowed the money for my second Nobel Prize to remain in Stockholm in Swedish crowns. This is the chief part of what we possess. I should like to bring it back here and invest it in war loans. The state needs it. Only, I have no illusions: this money will probably be lost.\r\n\r\nShe was also an active member in committees of Poles in France dedicated to the Polish cause. After the war, she summarised her wartime experiences in a book, Radiology in War (1919).', '', '', '', '', '', ''),
(6, 'Postwar years', 'In 1920, for the 25th anniversary of the discovery of radium, the French government established a stipend for her; its previous recipient was Louis Pasteur, who had died in 1895. In 1921, Curie toured the United States to raise funds for research on radium. Marie Mattingly Meloney, after interviewing Curie, created a Marie Curie Radium Fund and helped publicise her trip.\r\n\r\nIn 1921 U.S. President Warren G. Harding received Curie at the White House to present her with the 1 gram of radium collected in the United States. Before the meeting, recognising her growing fame abroad, and embarrassed by the fact that she had no French official distinctions to wear in public, the French government had offered her a Legion of Honour award, but she refused it. In 1922 she became a fellow of the French Academy of Medicine. She also travelled to other countries, appearing publicly and giving lectures in Belgium, Brazil, Spain, and Czechoslovakia.\r\n\r\nLed by Curie, the Institute produced four more Nobel Prize winners, including her daughter Irène Joliot-Curie and her son-in-law, Frédéric Joliot-Curie. Eventually, it became one of the world\'s four major radioactivity-research laboratories, the others being the Cavendish Laboratory, with Ernest Rutherford; the Institute for Radium Research, Vienna, with Stefan Meyer; and the Kaiser Wilhelm Institute for Chemistry, with Otto Hahn and Lise Meitner.\r\n\r\nIn August 1922, Curie became a member of the League of Nations\' newly created International Committee on Intellectual Cooperation. She sat on the committee until 1934 and contributed to League of Nations\' scientific coordination with other prominent researchers such as Albert Einstein, Hendrik Lorentz, and Henri Bergson. In 1923 she wrote a biography of her late husband, titled Pierre Curie. In 1925 she visited Poland to participate in a ceremony laying the foundations for Warsaw\'s Radium Institute. Her second American tour, in 1929, succeeded in equipping the Warsaw Radium Institute with radium; the Institute opened in 1932, with her sister Bronisława its director. These distractions from her scientific labours, and the attendant publicity, caused her much discomfort but provided resources for her work. In 1930, she was elected to the International Atomic Weights Committee, on which she served until her death. In 1931, Curie was awarded the Cameron Prize for Therapeutics of the University of Edinburgh.', '', '', '', '', '', ''),
(7, 'Death', 'Curie visited Poland for the last time in early 1934. A few months later, on 4 July 1934, she died aged 66 at the Sancellemoz sanatorium in Passy, Haute-Savoie, from aplastic anaemia believed to have been contracted from her long-term exposure to radiation, causing damage to her bone marrow.\r\n\r\nThe damaging effects of ionising radiation were not known at the time of her work, which had been carried out without the safety measures later developed. She had carried test tubes containing radioactive isotopes in her pocket, and she stored them in her desk drawer, remarking on the faint light that the substances gave off in the dark. Curie was also exposed to X-rays from unshielded equipment while serving as a radiologist in field hospitals during the First World War.[53] When Curie\'s body was exhumed in 1995, the French Office de Protection contre les Rayonnements Ionisants (OPRI) \"concluded that she could not have been exposed to lethal levels of radium while she was alive\". They pointed out that radium poses a risk only if it is ingested, and speculated that her illness was more likely to have been due to her use of radiography during the First World War.\r\n\r\nShe was interred at the cemetery in Sceaux, alongside her husband Pierre. Sixty years later, in 1995, in honour of their achievements, the remains of both were transferred to the Paris Panthéon. Their remains were sealed in a lead lining because of the radioactivity. She became the second woman to be interred at the Panthéon (after Sophie Berthelot) and the first woman to be honoured with interment in the Panthéon on her own merits.\r\n\r\nBecause of their levels of radioactive contamination, her papers from the 1890s are considered too dangerous to handle. Even her cookbooks are highly radioactive. Her papers are kept in lead-lined boxes, and those who wish to consult them must wear protective clothing. In her last year, she worked on a book, Radioactivity, which was published posthumously in 1935.', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `image_id` int(11) NOT NULL,
  `person_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `biography` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `achievement` text NOT NULL,
  `research` text NOT NULL,
  `selectedWork` text NOT NULL,
  `ref` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `person`
--

INSERT INTO `person` (`person_id`, `biography`, `created_at`, `updated_at`, `achievement`, `research`, `selectedWork`, `ref`) VALUES
(2, 'Maria Salomea Skłodowska-Curie, known as Marie Curie was born on 7 November 1867, in Warsaw, Kingdom of Poland, part of the Russian Empire. She was a Polish and naturalised-French physicist and chemist who conducted pioneering research on radioactivity. Marie was the first woman to win a Nobel Prize, the first person to win a Nobel Prize twice, and the only person to win a Nobel Prize in two scientific fields.', '2025-09-06 13:36:42', '2025-09-06 13:36:42', '- Nobel Prize in Physics (1903, with her husband Pierre Curie and Henri Becquerel).\r\n- Davy Medal (1903, with Pierre).\r\n- Matteucci Medal (1904, with Pierre).\r\n- Actonian Prize (1907).\r\n- Elliott Cresson Medal (1909).\r\n- Legion of Honour (1909, rejected).\r\n- Nobel Prize in Chemistry (1911).\r\n- Civil Order of Alfonso XII (1919).\r\n- Franklin Medal of the American Philosophical Society (1921).\r\n- Order of the White Eagle (2018, posthumously).', 'Radioactivity:\r\nMarie Curie coined the term \"radioactivity\" and, with her husband Pierre, researched its properties extensively.\r\n\r\nPolonium and Radium:\r\nWorking with pitchblende, the Curies discovered two new, radioactive elements in 1898.\r\n\r\nIsolation of Pure Radium:\r\nHer Nobel Prize in Chemistry recognized her achievement of isolating pure radium and studying its compounds.', 'Educator and Nationalist: \r\nSecret Teacher:\r\nCurie was an ardent Polish nationalist who secretly taught Polish language and reading to children of peasants and factory workers in her home country.\r\nCultural Preservation:\r\nThis was a dangerous, clandestine operation, as the Russian government of the time suppressed Polish culture.\r\n\r\nWartime Humanitarian: \r\nDirector of Radiological Service:\r\nDuring World War I, she was instrumental in developing and deploying mobile X-ray units called \"Petites Curies\" to the front lines.\r\nDirect Involvement:\r\nShe worked at the front with her daughter Irène, personally X-raying wounded soldiers to locate bullets and shrapnel and training radiologists to operate the units.\r\n\r\nScientific Pioneer and Advocate:\r\nProfessor and Lecturer:\r\nCurie was a groundbreaking professor at the University of Paris, the first woman to hold the position. \r\nFounder of Research Centers:\r\nShe established the Radium Institute in Paris, a leading center for the study of radioactivity. \r\nAdvocate for Medical Applications:\r\nCurie championed the medical use of her discoveries, recognizing the potential of X-rays and later radiotherapy to treat cancer. \r\n\r\nInternational Figure:\r\nGlobal Collaborator:\r\nShe was a member of the Conseil du Physique Solvay and the Committee of Intellectual Co-operation of the League of Nations. \r\nPublic Figure and Fundraiser:\r\nShe traveled to the United States to raise funds for the Radium Institute and to procure radium for research, a testament to her global recognition and influence. ', 'https://www.google.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ref`
--

CREATE TABLE `ref` (
  `reference_id` int(11) NOT NULL,
  `highlight` text NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ref`
--

INSERT INTO `ref` (`reference_id`, `highlight`, `link`, `description`) VALUES
(1, 'google', 'https://www.google.com/', 'search info'),
(2, 'facebook', 'https://www.fb.com', 'social media');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `research`
--

CREATE TABLE `research` (
  `research_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `research`
--

INSERT INTO `research` (`research_id`, `title`, `description`) VALUES
(1, 'The Discovery of Polonium and Radium', 'PIERRE, her husband, WAS SO INTRIGUED by Marie\'s work that he joined forces with her. Her research had revealed that two uranium ores, pitchblende and chalcolite, were much more radioactive than pure uranium itself.\r\n\r\nShe concluded that the highly radioactive nature of these ores might be due to one or more additional, as yet undiscovered, radioactive elements. Pierre put aside his research on crystals to help expedite Marie\'s discovery of the possible new elements. They worked as a team, each taking on specific scientific tasks.\r\n\r\n“Neither of us could foresee that in beginning this work we were to enter the path of a new science which we should follow for all our future.”\r\n\r\nIt was far from easy to track down the new radioactive elements. Pitchblende is a highly complex mineral, made of combinations of up to 30 different elements. To isolate the unknown substances, of which only tiny amounts were present, the Curies were the first to use a new method of chemical analysis. They employed various standard (but sometimes demanding) chemical procedures to separate the different substances in pitchblende. For example, a particular element might dissolve in an acid, which they could pour off, leaving other elements behind in a sludge at the bottom of the pot. After the materials were separated into different types of compounds, the Curies used radiation measurements to trace the minute amount of unknown, radioactive element among the fractions that resulted.\r\nMaking repeated separations of the various substances in the pitchblende, Marie and Pierre used the Curie electrometer to identify the most radioactive fractions. They thus discovered that two fractions, one containing mostly bismuth and the other containing mostly barium, were strongly radioactive. In July 1898 the Curies published their conclusion: the bismuth fraction contained a new element. Chemically it acted almost exactly like bismuth, but since it was radioactive, it had to be something new. They named it \"polonium\" in honor of the country of Marie\'s birth. A second publication, in December 1898, explained their discovery in the barium fraction of another new element, which they named \"radium\" from the Latin word for ray. The Curies were close to reaching one of the highest goals that a scientist of the time could hope to achieve--placing new elements in the Periodic Table. While the chemical properties of the two new elements were completely dissimilar, they both had strong radioactivity.\r\n\r\nTO CONVINCE THE SCIENTIFIC COMMUNITY of the existence of polonium and radium, and to complete the identification and establish the nature of the new elements, Marie set out to isolate them from the bismuth and barium with which they were mixed. Since the Municipal School storeroom would be inadequate to the task, the Curies moved their lab to an abandoned shed across the school courtyard. The shed, formerly a medical school dissecting room, was poorly outfitted and ventilated. It was not weathertight. She succeeded in separating the radium from the barium only with tremendous difficulty -- which would become central in the romantic legend of her life. She had to treat very large quantities of pitchblende, a ton of which the Curies received as a donation from the Austrian government. (The Austrians hoped she would find a use for a mineral their mines yielded as a waste byproduct.)\r\n\r\nLuckily some help was available for the tedious labor of treating the pitchblende. They were able to collaborate with the Central Chemical Products Company, the firm that marketed Pierre\'s scientific instruments. Their colleague André Debierne cleverly adapted their standard lab techniques into larger-scale industrial processes. These processes isolated from the pitchblende materials with high concentrations of radium and polonium, which the Curies studied in detail in what she called the “miserable old shed.” In exchange for supplying chemical products and paying staff wages, the Central Chemical Products Company took a share of the radium salts extracted on its premises. The firm would later make a handsome profit by marketing these radium salts for medical and other uses.\r\n\r\nDespite the industrial assistance the Curies received, it took Marie over three years to isolate one tenth of a gram of pure radium chloride. For reasons that would not be fully understood until the concept of radioactive decay was developed, Marie never succeeded in isolating polonium, which has a half-life of only 138 days.'),
(2, 'Breakthroughs in research on radioactivity', 'The theory of radioactivity proposed by her opened new avenues in the study of atoms and the applications of radioactivity in physics and medicine.\r\n\r\nRadioactivity is the process by which an unstable atom emits radiation in the form of particles or electromagnetic waves. This occurs when an atom has too much energy or mass, leading to its decay to become more stable.\r\n\r\nMarie Curie classified radiation into three main types:\r\n\r\nAlpha Radiation (α): Consists of helium nuclei (2 protons and 2 neutrons) emitted from the atom. Alpha radiation has low penetrating power.\r\nBeta Radiation (β): Comprises electrons or positrons emitted when a neutron in the atom transforms into a proton or vice versa. Beta radiation has greater penetrating power than alpha radiation.\r\nGamma Radiation (γ): Is high-energy electromagnetic waves that carry no mass. Gamma radiation has the highest penetrating power among alpha and beta radiation.\r\n\r\nCurie studied the process of radioactive decay, in which radioactive atoms spontaneously break down into new atoms, often resulting in the formation of other radioactive products. This process occurs through decay chains, leading to the formation of new elements.\r\nShe developed methods for measuring radiation, including the use of devices like Geiger counters, which help determine the radiation levels of various elements.'),
(3, 'Establishment of the Radium Institute', 'Marie Curie founded the Radium Institute (Institut du Radium) in 1914 in Paris, with the aim of concentrating research on radioactivity and its applications in medicine. The Radium Institute was established to create an environment for in-depth research on radioactivity, aiming to explore and apply radioactive elements in the treatment of diseases, particularly cancer. Marie Curie assembled a team of leading scientists and doctors, including many of her students, to conduct research and experiments.\r\n\r\nThe Radium Institute became a leading research center for radiation and significantly contributed to the advancement of modern medicine. Many cancer treatment methods today trace their origins back to initial research conducted at the institute. In addition to research, the Radium Institute played an educational role, training generations of scientists and doctors in the fields of radioactivity and medicine.'),
(4, 'Succeeded in isolating radium', 'In 1910 Curie succeeded in isolating radium; she also defined an international standard for radioactive emissions that was eventually named for her and Pierre: the curie.\r\nShe intentionally refrained from patenting the radium-isolation process so that the scientific community could do research unhindered.'),
(5, 'Contributions of Marie Curie in World War I', 'Marie Curie played a significant role during World War I, particularly in the fields of medicine and relief efforts. Marie Curie developed mobile X-ray units, known as \"Little Curies,\" to assist in diagnosing and treating wounded soldiers. These vehicles were equipped with X-ray machines and could be transported to the front lines, allowing doctors to quickly locate bullets or shrapnel in the bodies of injured soldiers. She organized training sessions for medical personnel so they could operate X-ray machines and perform diagnostic procedures. This contribution enhanced the medical care available to injured soldiers.\r\n\r\nIn addition to her medical work, Marie Curie participated in various war support activities, including fundraising for the military and providing resources.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `selectedwork`
--

CREATE TABLE `selectedwork` (
  `selectedWork_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `selectedwork`
--

INSERT INTO `selectedwork` (`selectedWork_id`, `title`, `description`) VALUES
(1, 'Researcher at the University of Paris', 'Marie Curie held several notable positions throughout her career. After completing her studies, Curie worked as a researcher in the laboratory of physicist Henri Becquerel.'),
(2, 'Professor at the University of Paris', 'In 1906, she became the first woman to hold a professorship at the University of Paris, where she taught physics and conducted research.'),
(3, 'Director of the Curie Institute', 'Marie Curie founded the Curie Institute (Institut Curie) in 1920 in Paris, serving as its director and focusing on cancer research and treatment.'),
(4, 'Member of Various Scientific Societies', 'Curie was a member of multiple prestigious scientific organizations, including the French Academy of Sciences and the Polish Academy of Sciences.'),
(5, 'Co-director of the Radium Institute', 'She co-directed the Radium Institute in Paris, which was dedicated to research on radioactivity and its applications in medicine.'),
(6, 'Consultant for Medical Applications of Radium', 'Curie also worked as a consultant in hospitals, helping to develop medical applications for radium in cancer treatment.\r\nThese roles highlight her significant contributions to science and her pioneering status as a woman in a traditionally male-dominated field.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visits`
--

CREATE TABLE `visits` (
  `visit_id` int(11) NOT NULL,
  `visit_time` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `visits`
--

INSERT INTO `visits` (`visit_id`, `visit_time`, `ip_address`, `page_url`, `user_agent`) VALUES
(1, '2025-09-04 08:50:38', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(2, '2025-09-04 08:54:20', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(3, '2025-09-04 10:01:05', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(4, '2025-09-04 10:02:05', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(5, '2025-09-04 10:03:10', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(6, '2025-09-04 10:03:54', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(7, '2025-09-04 10:04:17', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(8, '2025-09-04 10:04:25', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(9, '2025-09-04 10:04:34', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(10, '2025-09-04 10:04:46', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(11, '2025-09-04 10:05:11', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(12, '2025-09-04 10:05:34', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(13, '2025-09-04 10:05:42', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(14, '2025-09-04 10:05:53', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(15, '2025-09-04 10:06:02', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(16, '2025-09-04 10:06:07', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(17, '2025-09-04 10:06:19', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(18, '2025-09-04 10:06:20', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(19, '2025-09-04 10:06:28', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(20, '2025-09-04 10:06:36', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(21, '2025-09-04 10:06:43', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(22, '2025-09-04 10:06:49', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(23, '2025-09-04 10:06:50', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(24, '2025-09-04 10:07:09', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(25, '2025-09-04 10:07:21', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(26, '2025-09-04 10:07:44', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(27, '2025-09-04 10:08:49', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(28, '2025-09-04 10:10:33', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(29, '2025-09-04 10:13:26', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(30, '2025-09-04 10:13:27', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(31, '2025-09-04 10:13:36', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(32, '2025-09-04 10:14:08', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(33, '2025-09-04 10:14:24', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(34, '2025-09-04 10:15:18', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(35, '2025-09-04 10:17:04', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(36, '2025-09-04 10:17:07', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(37, '2025-09-04 10:17:09', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(38, '2025-09-04 10:17:11', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(39, '2025-09-04 10:17:12', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(40, '2025-09-04 10:17:38', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(41, '2025-09-04 10:17:40', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(42, '2025-09-04 10:18:14', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(43, '2025-09-04 10:19:26', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(44, '2025-09-04 12:50:59', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(45, '2025-09-04 12:51:11', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(46, '2025-09-04 13:49:30', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(47, '2025-09-04 13:49:32', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(48, '2025-09-04 13:49:34', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(49, '2025-09-04 13:49:52', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(50, '2025-09-04 13:50:33', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(51, '2025-09-04 13:50:43', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(52, '2025-09-04 13:51:57', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(53, '2025-09-04 13:52:55', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(54, '2025-09-04 13:53:17', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(55, '2025-09-04 13:54:27', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(56, '2025-09-04 14:02:02', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(57, '2025-09-04 14:03:40', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(58, '2025-09-04 14:03:41', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(59, '2025-09-04 14:04:13', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(60, '2025-09-04 14:04:13', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(61, '2025-09-04 14:04:23', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(62, '2025-09-04 14:04:23', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(63, '2025-09-04 14:04:49', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(64, '2025-09-04 14:37:12', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(65, '2025-09-04 14:37:57', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(66, '2025-09-04 14:39:59', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(67, '2025-09-04 14:41:08', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(68, '2025-09-04 14:41:09', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(69, '2025-09-04 14:44:14', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(70, '2025-09-04 14:44:15', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(71, '2025-09-04 14:45:14', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(72, '2025-09-04 14:45:47', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(73, '2025-09-04 14:55:13', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(74, '2025-09-04 14:55:34', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(75, '2025-09-04 14:55:52', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(76, '2025-09-04 14:56:28', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(77, '2025-09-04 14:58:31', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(78, '2025-09-04 14:58:33', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(79, '2025-09-04 16:05:33', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(80, '2025-09-04 16:19:17', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(81, '2025-09-04 16:21:54', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(82, '2025-09-04 16:21:55', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(83, '2025-09-04 16:22:58', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(84, '2025-09-04 16:23:01', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(85, '2025-09-04 16:23:02', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(86, '2025-09-04 16:23:04', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(87, '2025-09-04 16:23:04', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(88, '2025-09-04 16:23:06', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(89, '2025-09-04 16:23:20', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(90, '2025-09-04 16:23:53', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(91, '2025-09-04 16:24:56', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(92, '2025-09-04 16:26:14', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(93, '2025-09-04 17:35:44', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(94, '2025-09-04 17:35:45', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(95, '2025-09-04 17:35:45', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(96, '2025-09-04 17:35:46', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(97, '2025-09-04 17:35:46', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(98, '2025-09-04 17:35:56', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(99, '2025-09-04 17:35:57', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(100, '2025-09-04 17:36:00', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(101, '2025-09-04 17:36:26', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(102, '2025-09-04 17:36:30', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(103, '2025-09-04 17:36:36', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(104, '2025-09-04 17:36:38', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(105, '2025-09-04 17:36:50', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(106, '2025-09-04 17:36:51', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(107, '2025-09-04 17:36:52', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(108, '2025-09-04 17:36:53', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(109, '2025-09-04 17:36:53', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(110, '2025-09-04 18:00:47', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(111, '2025-09-04 18:00:51', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(112, '2025-09-04 18:01:35', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(113, '2025-09-04 18:08:41', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(114, '2025-09-04 18:09:30', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(115, '2025-09-04 18:09:32', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(116, '2025-09-04 18:09:33', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(117, '2025-09-04 18:11:06', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(118, '2025-09-04 18:35:07', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(119, '2025-09-04 18:44:32', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(120, '2025-09-04 18:54:31', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(121, '2025-09-04 19:10:06', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(122, '2025-09-04 19:14:19', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(123, '2025-09-04 19:15:50', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(124, '2025-09-04 19:28:06', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(125, '2025-09-04 19:28:06', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(126, '2025-09-04 19:28:07', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(127, '2025-09-04 19:28:08', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(128, '2025-09-04 19:28:48', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(129, '2025-09-04 19:29:42', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(130, '2025-09-04 19:34:07', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(131, '2025-09-04 19:34:42', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(132, '2025-09-04 19:35:06', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(133, '2025-09-04 19:35:40', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(134, '2025-09-04 19:36:17', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(135, '2025-09-04 19:42:56', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(136, '2025-09-04 19:56:03', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(137, '2025-09-04 20:00:46', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(138, '2025-09-04 20:01:43', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(139, '2025-09-04 20:01:44', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(140, '2025-09-04 20:02:22', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(141, '2025-09-04 20:02:23', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(142, '2025-09-04 20:03:33', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(143, '2025-09-04 20:16:33', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(144, '2025-09-04 20:19:07', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(145, '2025-09-04 20:20:56', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(146, '2025-09-04 20:22:50', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(147, '2025-09-04 20:23:47', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(148, '2025-09-04 20:24:07', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(149, '2025-09-04 20:34:11', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(150, '2025-09-04 20:34:14', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(151, '2025-09-04 20:34:15', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(152, '2025-09-04 20:34:16', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(153, '2025-09-04 20:34:17', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(154, '2025-09-04 20:34:26', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(155, '2025-09-04 20:34:28', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(156, '2025-09-04 20:34:34', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(157, '2025-09-04 20:35:17', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(158, '2025-09-04 20:35:17', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(159, '2025-09-04 20:35:18', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(160, '2025-09-04 20:35:19', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(161, '2025-09-04 20:35:19', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(162, '2025-09-04 20:35:20', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(163, '2025-09-04 20:35:21', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(164, '2025-09-04 20:35:23', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(165, '2025-09-04 20:35:31', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(166, '2025-09-04 20:38:08', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(167, '2025-09-04 20:38:11', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(168, '2025-09-04 20:38:16', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(169, '2025-09-04 20:38:18', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(170, '2025-09-04 20:47:15', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(171, '2025-09-04 20:49:57', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(172, '2025-09-04 20:50:28', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(173, '2025-09-05 14:47:51', '::1', '/biography/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(174, '2025-09-05 14:47:57', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(175, '2025-09-05 14:48:06', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(176, '2025-09-05 14:48:13', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(177, '2025-09-05 14:50:22', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(178, '2025-09-06 12:52:32', '::1', '/biography/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(179, '2025-09-06 13:02:25', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(180, '2025-09-06 13:02:36', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(181, '2025-09-06 13:02:38', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(182, '2025-09-06 13:02:41', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(183, '2025-09-06 13:02:43', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(184, '2025-09-06 13:02:48', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(185, '2025-09-06 13:02:50', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(186, '2025-09-06 13:40:18', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(187, '2025-09-06 13:50:03', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(188, '2025-09-06 13:51:30', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(189, '2025-09-06 13:52:59', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(190, '2025-09-06 13:53:21', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(191, '2025-09-06 13:53:51', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(192, '2025-09-06 13:55:23', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(193, '2025-09-06 13:55:36', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(194, '2025-09-06 13:56:26', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(195, '2025-09-06 13:56:40', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(196, '2025-09-06 13:57:00', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(197, '2025-09-06 13:57:01', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(198, '2025-09-06 13:58:05', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(199, '2025-09-06 13:59:25', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(200, '2025-09-06 13:59:43', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(201, '2025-09-06 14:00:37', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(202, '2025-09-06 14:01:06', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(203, '2025-09-06 14:01:30', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(204, '2025-09-06 14:01:35', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(205, '2025-09-06 14:02:27', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(206, '2025-09-06 14:02:49', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(207, '2025-09-06 14:03:51', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(208, '2025-09-06 14:04:03', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(209, '2025-09-06 14:04:18', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(210, '2025-09-06 14:05:05', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(211, '2025-09-06 14:05:08', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(212, '2025-09-06 14:05:10', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(213, '2025-09-06 18:01:59', '::1', '/biography/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(214, '2025-09-06 18:02:03', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(215, '2025-09-06 18:02:44', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(216, '2025-09-06 18:02:48', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(217, '2025-09-06 18:02:51', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(218, '2025-09-06 18:04:18', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(219, '2025-09-06 18:04:37', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(220, '2025-09-06 18:04:53', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(221, '2025-09-06 18:04:56', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(222, '2025-09-06 18:08:31', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(223, '2025-09-06 18:08:34', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(224, '2025-09-06 18:08:36', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(225, '2025-09-06 18:09:10', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(226, '2025-09-06 18:09:15', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(227, '2025-09-06 18:10:12', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(228, '2025-09-06 18:13:19', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(229, '2025-09-06 18:13:21', '::1', '/biography/includes/siteMap.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(230, '2025-09-06 18:13:24', '::1', '/biography/includes/references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(231, '2025-09-06 18:14:07', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(232, '2025-09-06 18:16:08', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(233, '2025-09-06 18:16:53', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(234, '2025-09-06 18:17:27', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(235, '2025-09-06 18:19:08', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(236, '2025-09-06 18:20:48', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(237, '2025-09-06 18:22:20', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(238, '2025-09-06 18:22:55', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(239, '2025-09-06 18:23:02', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(240, '2025-09-06 18:23:28', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(241, '2025-09-06 18:23:39', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(242, '2025-09-06 18:23:46', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(243, '2025-09-06 18:24:13', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(244, '2025-09-06 18:24:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(245, '2025-09-06 18:24:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(246, '2025-09-06 18:25:11', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(247, '2025-09-06 18:25:20', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(248, '2025-09-06 18:25:28', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(249, '2025-09-06 18:26:17', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(250, '2025-09-06 18:35:03', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(251, '2025-09-06 18:36:25', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(252, '2025-09-06 18:36:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(253, '2025-09-06 18:36:54', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(254, '2025-09-06 18:37:01', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(255, '2025-09-06 18:37:33', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(256, '2025-09-06 18:38:01', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(257, '2025-09-06 18:38:26', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(258, '2025-09-06 18:39:04', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(259, '2025-09-06 18:39:46', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(260, '2025-09-06 18:40:00', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(261, '2025-09-06 18:40:15', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(262, '2025-09-06 18:40:22', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(263, '2025-09-06 18:40:29', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(264, '2025-09-06 18:40:35', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(265, '2025-09-06 18:40:43', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(266, '2025-09-06 18:41:47', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(267, '2025-09-06 18:41:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(268, '2025-09-06 18:42:02', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(269, '2025-09-06 18:42:11', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36');
INSERT INTO `visits` (`visit_id`, `visit_time`, `ip_address`, `page_url`, `user_agent`) VALUES
(270, '2025-09-06 18:42:18', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(271, '2025-09-06 18:42:30', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(272, '2025-09-06 18:43:55', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(273, '2025-09-06 18:44:11', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(274, '2025-09-06 18:44:19', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(275, '2025-09-06 18:44:27', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(276, '2025-09-06 18:44:37', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(277, '2025-09-06 18:45:27', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(278, '2025-09-06 18:45:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(279, '2025-09-06 18:46:00', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(280, '2025-09-06 18:46:17', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(281, '2025-09-06 18:46:29', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(282, '2025-09-06 18:46:49', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(283, '2025-09-06 18:47:10', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(284, '2025-09-06 18:48:16', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(285, '2025-09-06 18:48:34', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(286, '2025-09-06 18:48:46', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(287, '2025-09-06 18:48:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(288, '2025-09-06 18:49:23', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(289, '2025-09-06 18:49:45', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(290, '2025-09-06 18:50:02', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(291, '2025-09-06 18:50:37', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(292, '2025-09-06 18:50:44', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(293, '2025-09-06 18:50:52', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(294, '2025-09-06 18:50:53', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(295, '2025-09-06 18:51:05', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(296, '2025-09-06 18:51:20', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(297, '2025-09-06 18:51:27', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(298, '2025-09-06 18:51:32', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(299, '2025-09-06 18:52:00', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(300, '2025-09-06 18:52:12', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(301, '2025-09-06 18:54:14', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(302, '2025-09-06 18:55:10', '::1', '/biography/includes/gallery.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(303, '2025-09-06 18:55:11', '::1', '/biography/includes/gallery-references.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(304, '2025-09-06 18:55:57', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(305, '2025-09-06 18:57:21', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(306, '2025-09-06 18:58:34', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(307, '2025-09-06 18:59:48', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(308, '2025-09-06 19:00:39', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(309, '2025-09-06 19:02:34', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(310, '2025-09-06 19:05:12', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(311, '2025-09-06 19:06:05', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(312, '2025-09-06 19:06:09', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(313, '2025-09-06 19:10:01', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(314, '2025-09-06 19:12:26', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(315, '2025-09-06 19:13:26', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(316, '2025-09-06 19:15:00', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(317, '2025-09-06 19:25:28', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(318, '2025-09-06 19:26:24', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(319, '2025-09-06 19:26:25', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(320, '2025-09-06 19:27:10', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(321, '2025-09-06 19:27:31', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(322, '2025-09-06 19:29:19', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(323, '2025-09-06 19:30:33', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(324, '2025-09-06 19:31:53', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(325, '2025-09-06 19:36:52', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(326, '2025-09-06 19:42:37', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(327, '2025-09-06 19:52:40', '::1', '/biography/index.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(328, '2025-09-06 20:08:37', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(329, '2025-09-06 20:08:48', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(330, '2025-09-06 20:09:49', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(331, '2025-09-06 20:10:15', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(332, '2025-09-06 20:11:00', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(333, '2025-09-06 20:11:15', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(334, '2025-09-06 20:17:11', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(335, '2025-09-06 20:18:27', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(336, '2025-09-06 20:18:47', '::1', '/biography/includes/test.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(337, '2025-09-11 13:14:05', '::1', '/biography/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(338, '2025-09-11 13:14:18', '::1', '/biography/includes/selectedWorks.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(339, '2025-09-11 13:14:19', '::1', '/biography/includes/awardsAndHonors.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(340, '2025-09-11 13:14:20', '::1', '/biography/includes/research.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36'),
(341, '2025-09-11 13:14:22', '::1', '/biography/includes/biography.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `biography`
--
ALTER TABLE `biography`
  ADD PRIMARY KEY (`biography_id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Chỉ mục cho bảng `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Chỉ mục cho bảng `ref`
--
ALTER TABLE `ref`
  ADD PRIMARY KEY (`reference_id`);

--
-- Chỉ mục cho bảng `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`research_id`);

--
-- Chỉ mục cho bảng `selectedwork`
--
ALTER TABLE `selectedwork`
  ADD PRIMARY KEY (`selectedWork_id`);

--
-- Chỉ mục cho bảng `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`visit_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `achievements`
--
ALTER TABLE `achievements`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `biography`
--
ALTER TABLE `biography`
  MODIFY `biography_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ref`
--
ALTER TABLE `ref`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `research`
--
ALTER TABLE `research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `selectedwork`
--
ALTER TABLE `selectedwork`
  MODIFY `selectedWork_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `visits`
--
ALTER TABLE `visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
