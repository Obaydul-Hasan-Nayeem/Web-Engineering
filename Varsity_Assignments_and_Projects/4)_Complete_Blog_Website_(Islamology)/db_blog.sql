-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 01:56 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Embryology in Islam'),
(2, 'Evolution in Islam'),
(3, 'Concepts of God'),
(4, 'Technology in Islam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(11, 'Nahare Jannat', 'Tania', 'jannatnahare@gmail.com', 'Assalaamu Alaikum. Every day I follow all the contents of Islamology. It helps me a lot. May Allah bless you &amp; your team.', 0, '2022-10-31 16:53:33'),
(12, 'Tajbin Jahan', 'Tamanna', 'tamanna@gmail.com', 'I want to work with the team of Islamology. What can I do? Please give me your suggestion.', 1, '2022-10-31 16:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Islamology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><strong><strong>Our hope is to see many more Muslim intellectuals, particularly the younger generation, acquire a rich and robust understanding of the Science-Religion subject and contribute novel views from within the Islamic culture, both for the Muslim society and the world.</strong></strong></p>\r\n<p><strong><strong><br /></strong></strong></p>\r\n<p><strong>Admin:</strong>&nbsp;Obaydul Hasan Nayeem</p>\r\n<p><strong>Editor: </strong>Tanvir Ahmed</p>\r\n<p><strong>Author: </strong>Zahid Hasan</p>'),
(5, 'Vision & Mission', '<div><strong>Our hope is to see many more Muslim intellectuals, particularly the younger generation, acquire a rich and robust understanding of the Science-Religion subject and contribute novel views from within the Islamic culture, both for the Muslim society and the world.</strong></div>\r\n<div>&nbsp;</div>\r\n<ul>\r\n<li>Pursue the elaboration of a new synthesis between modern scientific knowledge and Muslim traditions, approaches which are removed both from easy concordism and the view according to which it is impossible to reach a fruitful harmony between those fields.</li>\r\n<li>Contribute to open a high-level dialogue between Islam and modernity, thus allowing the development of a unified and coherent understanding of the world, without conflict or dissonance.</li>\r\n<li>Propose an education and training program to Muslim scholars, who would be able to develop a modern and sophisticated Science-Islam discourse and to present these points of view in international arenas.</li>\r\n<li>Develop and broadcast, on a large international scale, a well-informed discourse on&nbsp; Islam &amp; Science, one which is reasoned and scientifically solid.</li>\r\n<li>Delineate the fruitful pathways for the development of scientific culture in the Arab/Muslim World and popularize certain philosophical implications of contemporary science towards/aiming at the elite as well as the public at large.</li>\r\n<li>Show how the Muslim tradition can be a factor of dialogue and peace.</li>\r\n<li>Particpate to a high-level inter-religious dialogue and contribute to the emergence of a &ldquo;common discourse&rdquo; among the world&rsquo;s major religions, that can be the basis of a new form of dialogue among cultures.</li>\r\n<li>Construct a process for delineating the role of science in the search of meaning in a more and more complex globalized world, a world full of promise but one which also carries dangers and threats for future generations.</li>\r\n<li>Contribute in a spirit of dialogue and openness to reopen the question of the meaning that modern societies are facing.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3><span>Why a project on Islam and Modern Science?</span></h3>\r\n<p>During the golden age of its civilization, Islam produced some of the finest thinkers and scientists the world has ever known: Al-Khwarizmi, al-Biruni, Ibn al-Haitham, Ibn Rushd, and many others. Those were not just first-class researchers, they were fine thinkers who found total harmony between the most advanced and sophisticated ideas and fields of their times and their Muslim culture and identity.</p>\r\n<p>Today, even when the Muslim world produces geniuses like Abdus Salam (the first Muslim scientist, and one of only two, to receive the Nobel Prize), their creeds are scrutinized and sometimes rejected, even while the scientist himself declares his adherence to Islam and reads verses of the Qur&rsquo;an at his Nobel Prize coronation.</p>\r\n<p>Other examples abound of our confused view of the relation between our Islamic beliefs and our scientific knowledge. More books and TV shows (and even international conferences) are produced today on the &ldquo;miraculous scientific content of the Qur&rsquo;an&rdquo; than on scientific discoveries. Astronomers are strongly attacked when they try to uphold and defend a scientific methodology in the determination of the Islamic calendar and holy occasions. And biological and human evolution is still largely taboo in today&rsquo;s Muslim culture, with roughly three quarters of the population (including even the highly educated segment) considering evolution either &ldquo;just false&rdquo; or &ldquo;only a theory&rdquo;&hellip;</p>\r\n<p>Our project, which adopts an educational approach in attempting to present a reasoned relationship between Islam and Modern Science, aims to address and remedy this ailment in the contemporary Muslim society. We aim to first bring proper understandings of the various aspects of this relationship (historical, theological, philosophical, scientific, epistemological, etc.) to university students and young researchers. We also wish to connect the young and rising Muslim elite to the great world debates on Science (modern) and Religion (in its various versions), which have reached very high academic levels in recent decades.</p>\r\n<p>My hope is to see many more Muslim intellectuals, particularly the younger generation, acquire a rich and robust understanding of the Science-Religion subject and contribute novel views from within the Islamic culture, both for the Muslim society and the world.</p>\r\n<p>Please join us in this quest. I promise you rich content and exciting contributions of various kinds.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(31, 1, 'Why Itâ€™s So Hard for Scientists to Believe in God?', '<p><span>Science is about trying to get rigorous answers to questions about how nature works. And it&rsquo;s a very important process that&rsquo;s actually quite reliable if carried out correctly with generation of hypotheses and testing of those by accumulation of data and then drawing conclusions that are continually revisited to be sure they are right. So if you want to answer questions about how nature works, how biology works, for instance, science is the way to get there. Scientists believe in that they are very troubled by a suggestion that other kinds of approaches can be taken to derive truth about nature. And some I think have seen faith as therefore a threat to the scientific method and therefore it to be resisted. But faith in its perspective is really asking a different set of questions. And that&rsquo;s why I don&rsquo;t think there needs to be a conflict here. The kinds of questions that faith can help one address are more in the philosophical realm. Why are we all here? Why is there something instead of nothing? Is there a God? Isn&rsquo;t it clear that those aren&rsquo;t scientific questions and that science doesn&rsquo;t have much to say about them? But you either have to say, well those are inappropriate questions and we can&rsquo;t discuss them or you have to say, we need something besides science to pursue some of the things that humans are curious about. For me, that makes perfect sense. But I think for many scientists, particularly for those who have seen the shrill pronouncements from extreme views that threaten what they&rsquo;re doing scientifically and feel therefore they can&rsquo;t really include those thoughts into their own worldview, faith can be seen as an enemy. And similarly, on the other side, some of my scientific colleagues who are of an atheist persuasion are sometimes using science as a club over the head of believers basically suggesting that anything that can&rsquo;t be reduced to a scientific question isn&rsquo;t important and just represents superstition that should be gotten rid of. Part of the problem is, I think the extremists have occupied the stage. Those voices are the ones we hear. I think most people are actually kind of comfortable with the idea that science is a reliable way to learn about nature, but it&rsquo;s not the whole story and there&rsquo;s a place also for religion, for faith, for theology, for philosophy. But that harmony perspective does not get as much attention, nobody&rsquo;s as interested in harmony as they are in conflict, I&rsquo;m afraid.</span></p>', 'upload/9b2c72df6a.png', 'nayeemAdmin', 'php', '2022-10-30 21:05:03', 0),
(32, 3, 'Is there definitive proof of the existence of God?', '<p>When Kurt G&ouml;del, one of the greatest mathematicians of the 20th century, died in 1978 he left mysterious notes filled with logical symbols. Towards the end of his life a rumour circulated that this enigmatic genius was engaged in a secret project that was not directly relevant to his usual mathematical work. According to the rumour, he had tried to develop a logical proof of the existence of God. The notes that G&ouml;del left, which were published a decade after his death, confirmed that the rumour was indeed correct. G&ouml;del had invented a version of the so-called modal ontological argument for God&rsquo;s existence.</p>\r\n<p>The modal ontological argument purports to establish the astounding thesis that the mere possibility of the existence of God entails its actuality. That is, the argument says, once we agree that God can in principle exist we can&rsquo;t but accept that God does actually exist. There are many distinct versions of the modal ontological argument but one of the most straightforward can be presented as follows.</p>\r\n<p>According to &lsquo;perfect being theism&rsquo;, a form of theism most widely accepted among Judaeo-Christian-Islamic theists, God is a being that exists necessarily. Such a being is distinct from contingent beings like tables, cars, planets and people, which exist merely by chance. If God exists at all, there is no possible situation in which he fails to exist. Proponents of perfect being theism also typically say that God is all-powerful, all-knowing, and morally perfect because he is perfect in all respects. This observation suggests that the thesis &lsquo;it is possible that God exists&rsquo; is equivalent to &lsquo;it is possible that, necessarily, an all-powerful, all-knowing and morally perfect being exists.&rsquo; At this point the modal ontological argument appeals to a principle in modal logic that is widely accepted by logicians: If it is &lsquo;possible&rsquo; that something is &lsquo;necessary&rsquo;, then that thing is simply &lsquo;necessary.&rsquo;&nbsp;In other words, if we have the sentence &lsquo;it is possible that something is necessary&rsquo; we can drop the phrase &lsquo;it is possible that&rsquo; without changing the meaning. If we apply this logical principle to what we have derived so far, namely, the thesis &lsquo;it is possible that, necessarily, an all-powerful, all-knowing and morally perfect being exists&rsquo;, we can derive the thesis &lsquo;it is necessary that an all-powerful, all-knowing and morally perfect being exists.&rsquo; This is equivalent to saying that God exists necessarily. If God exists necessarily, then God actually exists. Hence, the mere possibility of the existence of God logically entails its actuality.</p>\r\n<p>Theists&rsquo; attempts to demonstrate the possibility of God involve some of the most creative ideas in philosophy. Clement Dore and Alexander Pruss, for example, try to establish the possibility that God exists by appealing to the fact that many people have encountered God in religious experiences. Dore and Pruss do not assume that these religious experiences are veridical &ndash; they are willing to accept that some (or even all) of them are hallucinations. However, according to them, if the existence of God is impossible then God cannot even appear in hallucinations. The fact that people encounter God in religious experiences suggests that, even if they are hallucinations, the existence of God is at least possible.</p>\r\n<p>To take another example, Carl Kordig tries to establish the possibility that God exists by appealing to the so-called &lsquo;ought implies can&rsquo; principle. If we ought to rescue a drowning child we can rescue that child. Conversely, if we cannot for some reason rescue a drowning child, then it is not the case that we ought to rescue that child. Kordig says that God ought to exist because he is a perfect being. And given that God ought to exist we can infer with the &lsquo;ought implies can&rsquo; principle that he can exist as well. Hence, it is possible that God exists.</p>\r\n<p>How does G&ouml;del try to show that God&rsquo;s existence is possible? He argues that it is possible because God has only positive properties. If God were to have both positive and negative properties simultaneously it would seem impossible for him to exist because they would contradict each other. For example, it would seem impossible for God to exist if he were to have the property of being all knowing (a positive property) and the property of being ignorant (a negative property) simultaneously. Therefore God, as the greatest possible being, has only positive properties, such as the properties of being all knowing, all powerful and morally perfect, which, according to G&ouml;del, do not contradict each other.</p>\r\n<p>Whether the abovementioned arguments for the possibility of God succeed is disputed. Yet the modal ontological argument is important because it seems to reduce the burden of proof on theists dramatically. They no longer need to rely on traditional arguments for the actuality of the existence of God, which appeal to the origin of the universe, the source of morality, the apparent design in nature, testimonies of miracles, and so on. All they need to do is show that the existence of God is at least possible. If we can show that, we can simply plug it into the modal ontological argument and derive, as a matter of logic, that the existence of God is actual. Hence, the modal ontological argument places us only a half-step away from a definitive proof of the existence of God.</p>\r\n<p><em>By Yujin Nagasawa, published in&nbsp;<a href=\"https://blog.oup.com/2017/11/definitive-proof-existence-god/\">OUPblog</a>, November 8th 2017.</em></p>\r\n<p><a href=\"https://www.yujinnagasawa.co.uk/\" rel=\"noopener noreferrer\" target=\"_blank\">Yujin Nagasawa</a>&nbsp;is Professor of Philosophy and Co-Director of the John Hick Centre for Philosophy of Religion at the University of Birmingham. His books include&nbsp;God and Phenomenal Consciousness: A Novel Approach to Knowledge Arguments&nbsp;(CUP, 2008),&nbsp;The Existence of God: A Philosophical Introduction&nbsp;(Routledge, 2011) and&nbsp;Miracles: A Very Short Introduction&nbsp;(OUP, 2017). He is currently President of the British Society for the Philosophy of Religion, Philosophy of Religion Editor of&nbsp;Philosophy Compass, and a member of the editorial board of&nbsp;Religious Studies, the&nbsp;International Journal for Philosophy of Religion&nbsp;and the&nbsp;European Journal for Philosophy of Religion. He is also the author of&nbsp;<a href=\"https://global.oup.com/academic/product/maximal-god-9780198758686\" rel=\"noopener noreferrer\" target=\"_blank\">Maximal God: A New Defence of Perfect Being Theism</a>&nbsp;(OUP, 2017).</p>', 'upload/26890c375a.png', 'nayeemAdmin', 'Islam, Science', '2022-10-31 12:24:18', 0),
(33, 2, 'Why religion is not going away and science will not destroy it', '<p>In 1966, just over 50 years ago, the distinguished Canadian-born anthropologist Anthony Wallace confidently predicted the global demise of religion at the hands of an advancing science: &lsquo;belief in supernatural powers is doomed to die out, all over the world, as a result of the increasing adequacy and diffusion of scientific knowledge&rsquo;. Wallace&rsquo;s vision was not exceptional. On the contrary, the modern social sciences, which took shape in 19th-century western Europe, took their own recent historical experience of secularisation as a universal model. An assumption lay at the core of the social sciences, either presuming or sometimes predicting that all cultures would eventually converge on something roughly approximating secular, Western, liberal democracy. Then something closer to the opposite happened.</p>\r\n<p>Not only has secularism failed to continue its steady global march but countries as varied as Iran, India, Israel, Algeria and Turkey have either had their secular governments replaced by religious ones, or have seen the rise of influential religious nationalist movements. Secularisation, as predicted by the social sciences, has failed.</p>\r\n<p>To be sure, this failure is not unqualified. Many Western countries continue to witness decline in religious belief and practice. The most recent&nbsp;census&nbsp;data released in Australia, for example, shows that 30 per cent of the population identify as having &lsquo;no religion&rsquo;, and that this percentage is increasing. International&nbsp;surveys&nbsp;confirm comparatively low levels of religious commitment in western Europe and Australasia. Even the United States, a long-time source of embarrassment for the secularisation thesis, has seen a rise in unbelief. The percentage of&nbsp;<a href=\"http://www.pewresearch.org/fact-tank/2016/06/01/10-facts-about-atheists/\" rel=\"noopener\" target=\"_blank\">atheists</a>&nbsp;in the US now sits at an all-time high (if &lsquo;high&rsquo; is the right word) of around 3 per cent. Yet, for all that, globally, the total number of people who consider themselves to be religious remains high, and demographic trends suggest that the overall pattern for the immediate future will be one of&nbsp;<a href=\"http://www.pewforum.org/2017/04/05/the-changing-global-religious-landscape/\" rel=\"noopener\" target=\"_blank\">religious growth</a>. But this isn&rsquo;t the only failure of the secularisation thesis.</p>\r\n<p>Scientists, intellectuals and social scientists expected that the spread of modern science would drive secularisation &ndash; that science would be a secularising force. But that simply hasn&rsquo;t been the case. If we look at those societies where religion remains vibrant, their key common features are less to do with science, and more to do with feelings of existential security and protection from some of the basic uncertainties of life in the form of public goods. A social safety net might be correlated with scientific advances but only loosely, and again the case of the US is instructive. The US is arguably the most scientifically and technologically advanced society in the world, and yet at the same time the most religious of Western societies. As the British sociologist David Martin concluded in&nbsp;<em>The Future of Christianity</em>&nbsp;(2011): &lsquo;There is no consistent relation between the degree of scientific advance and a reduced profile of religious influence, belief and practice.&rsquo;</p>\r\n<p>The story of science and secularisation becomes even more intriguing when we consider those societies that have witnessed significant reactions against secularist agendas. India&rsquo;s first prime minister Jawaharlal Nehru championed secular and scientific ideals, and enlisted scientific education in the project of modernisation. Nehru was confident that Hindu visions of a Vedic past and Muslim dreams of an Islamic theocracy would both succumb to the inexorable historical march of secularisation. &lsquo;There is only one-way traffic in Time,&rsquo; he declared. But as the subsequent rise of Hindu and Islamic fundamentalism adequately attests, Nehru was wrong. Moreover, the association of science with a secularising agenda has backfired, with science becoming a collateral casualty of resistance to secularism.</p>\r\n<p>Turkey provides an even more revealing case. Like most pioneering nationalists, Mustafa Kemal Atat&uuml;rk, the founder of the Turkish republic, was a committed secularist. Atat&uuml;rk believed that science was destined to displace religion. In order to make sure that Turkey was on the right side of history, he gave science, in particular evolutionary biology, a central place in the state education system of the fledgling Turkish republic. As a result, evolution came to be associated with Atat&uuml;rk&rsquo;s entire political programme, including secularism. Islamist parties in Turkey, seeking to counter the secularist ideals of the nation&rsquo;s founders, have also attacked the teaching of evolution. For them, evolution is associated with secular materialism. This sentiment culminated in the decision this June to remove the teaching of evolution from the high-school classroom. Again, science has become a victim of guilt by association.</p>\r\n<p>The US represents a different cultural context, where it might seem that the key issue is a conflict between literal readings of Genesis and key features of evolutionary history. But in fact, much of the creationist discourse centres on moral values. In the US case too, we see anti-evolutionism motivated at least in part by the assumption that evolutionary theory is a stalking horse for secular materialism and its attendant moral commitments. As in India and Turkey, secularism is actually hurting science.</p>\r\n<p>In brief, global secularisation is not inevitable and, when it does happen, it is not caused by science. Further, when the attempt is made to use science to advance secularism, the results can damage science. The thesis that &lsquo;science causes secularisation&rsquo; simply fails the empirical test, and enlisting science as an instrument of secularisation turns out to be poor strategy. The science and secularism pairing is so awkward that it raises the question: why did anyone think otherwise?</p>\r\n<p>Historically, two related sources advanced the idea that science would displace religion. First, 19th-century progressivist conceptions of history, particularly associated with the French philosopher Auguste Comte, held to a theory of history in which societies pass through three stages &ndash; religious, metaphysical and scientific (or &lsquo;positive&rsquo;). Comte coined the term &lsquo;sociology&rsquo; and he wanted to diminish the social influence of religion and replace it with a new science of society. Comte&rsquo;s influence extended to the &lsquo;young Turks&rsquo; and Atat&uuml;rk.</p>\r\n<p>The 19th century also witnessed the inception of the &lsquo;conflict model&rsquo; of science and religion. This was the view that history can be understood in terms of a &lsquo;conflict between two epochs in the evolution of human thought &ndash; the theological and the scientific&rsquo;. This description comes from Andrew Dickson White&rsquo;s influential&nbsp;<em>A</em>&nbsp;<em>History of the Warfare of Science with Theology in Christendom&nbsp;</em>(1896), the title of which nicely encapsulates its author&rsquo;s general theory. White&rsquo;s work, as well as John William Draper&rsquo;s earlier&nbsp;<em>History of the Conflict Between Religion and Science&nbsp;</em>(1874), firmly established the conflict thesis as the default way of thinking about the historical relations between science and religion. Both works were translated into multiple languages. Draper&rsquo;s&nbsp;<em>History</em>&nbsp;went through more than 50 printings in the US alone, was translated into 20 languages and, notably, became a bestseller in the late Ottoman empire, where it informed Atat&uuml;rk&rsquo;s understanding that progress meant science superseding religion.</p>\r\n<p>Today, people are less confident that history moves through a series of set stages toward a single destination. Nor, despite its popular persistence, do most historians of science support the idea of an enduring conflict between science and religion. Renowned collisions, such as the Galileo affair, turned on politics and personalities, not just science and religion. Darwin had significant religious supporters and scientific detractors, as well as vice versa. Many other alleged instances of science-religion conflict have now been exposed as pure inventions. In fact, contrary to conflict, the historical norm has more often been one of mutual support between science and religion. In its formative years in the 17th century, modern science relied on religious legitimation. During the 18th and 19th centuries, natural theology helped to popularise science.</p>\r\n<p>The conflict model of science and religion offered a mistaken view of the past and, when combined with expectations of secularisation, led to a flawed vision of the future. Secularisation theory failed at both description and prediction. The real question is why we continue to encounter proponents of science-religion conflict. Many are prominent scientists. It would be superfluous to rehearse Richard Dawkins&rsquo;s musings on this topic, but he is by no means a solitary voice. Stephen Hawking thinks that &lsquo;science will win because it works&rsquo;; Sam Harris has declared that &lsquo;science must destroy religion&rsquo;; Stephen Weinberg thinks that science has weakened religious certitude; Colin Blakemore predicts that science will eventually make religion unnecessary. Historical evidence simply does not support such contentions. Indeed, it suggests that they are misguided.</p>\r\n<p>So why do they persist? The answers are political. Leaving aside any lingering fondness for quaint 19th-century understandings of history, we must look to the fear of Islamic fundamentalism, exasperation with creationism, an aversion to alliances between the religious Right and climate-change denial, and worries about the erosion of scientific authority. While we might be sympathetic to these concerns, there is no disguising the fact that they arise out of an unhelpful intrusion of normative commitments into the discussion. Wishful thinking &ndash; hoping that science will vanquish religion &ndash; is no substitute for a sober assessment of present realities. Continuing with this advocacy is likely to have an effect opposite to that intended.</p>\r\n<p>Religion is not going away any time soon, and science will not destroy it. If anything, it is science that is subject to increasing threats to its authority and social legitimacy. Given this, science needs all the friends it can get. Its advocates would be well advised to stop fabricating an enemy out of religion, or insisting that the only path to a secure future lies in a marriage of science and secularism.</p>\r\n<p><em>By Peter Harrison, published in&nbsp;<a href=\"https://aeon.co/ideas/why-religion-is-not-going-away-and-science-will-not-destroy-it\">Aeon</a>, September 7th 2017.</em></p>\r\n<p class=\"article__body__author-name vcard\">Peter Harrison&nbsp;is an Australian Laureate Fellow and director of the Institute for Advanced Studies in the Humanities at the University of Queensland. He is the author of&nbsp;<a href=\"http://press.uchicago.edu/ucp/books/book/chicago/T/bo19108877.html\" rel=\"\"><em>The Territories of Science and Religion</em></a>&nbsp;(2015), and the editor of&nbsp;<a href=\"https://www.routledge.com/Narratives-of-Secularization/Harrison/p/book/9781138563568\" rel=\"\"><em>Narratives of Secularization</em></a>&nbsp;(2017).</p>', 'upload/8a2e1f654a.png', 'nayeemAdmin', 'Islam, Science', '2022-10-31 12:45:47', 0),
(34, 2, 'The Interplay of Science and Theology in the 14th-century Kalam by Ahmad Dallal', '<p><em>Modern studies in the history of science show that productive, original scientific research persisted into the sixteenth century A.D. in the Islamic World. Yet, histories of Islamic civilization consistently repeat and expand an influential theory which maintains that the consolidation of an Islamic world view already in the eleventh century caused the rational sciences to stagnate. This theory even posits an essential contradiction between science and Islam, and is part of a larger contention in post-Enlightenment historiography that opposes science and religion in general in post-medieval civilizations. Thus, according to various accounts based on this theory, scientific activities in Muslim societies were consistently opposed (ostensibly by religious authorities or Islam,) and they survived despite, and not as a result of, Islamic culture. Yet, in addition to its apparent counter-intuitiveness, this theory fails to explain the growing body of evidence which confirms the rise, rather than decline, of science in the Islamic world after the eleventh century. Further evidence suggests that scientific activity was integrated with, rather than marginal to mainstream intellectual life in Muslim societies. A different approach to the study of the relationship between science and religion in Islam is clearly needed, one that examines both the cultural environment, and the interaction among different cultural dynamics at work.</em></p>\r\n<p>In the last few decades, a critical mass of excellent studies by competent historians of Islamic science has led to a qualitative shift in our understanding of this history. Yet despite this shift, an integrated approach to the study of the history of science in Muslim societies still needs to overcome some real hurdles. To start with, such an undertaking calls for an examination of wide-ranging cultural activities, in a vast geographical area, under different historical conditions, and for a period of at least seven centuries. Moreover, the sources for the study of this subject are daunting, and they include, in addition to material evidence, thousands of scientific manuscripts, most of which remain unexamined. The abundance of evidence also gives rise to a number of methodological difficulties: earlier surveys of the history of Islamic science were based on a handful of random studies of scientific treatises. Some of the actual studies were of a high quality; yet ironically, the paucity of hard evidence available to early scholars often enabled them to cover all the fields of science in all-inclusive, and often reductive, narratives. In the last few decades, many more scientific treatises have been critically examined, with the dual effect of providing detailed information about the various scientific disciplines, and highlighting the peculiarity of the history of each separate discipline or even fields within disciplines.</p>\r\n<p>In the absence of thorough and exhaustive accounts for developments in the various scientific disciplines as well as accounts for the epistemological foundations of these sciences, it only stands to reason that attempts to provide general characterizations of science in Muslim societies and its relation to religion can only be provisional and subject to scrutiny. Even such seemingly straight forward characterizations of the scientific activity in Muslim societies as Islamic or Arabic cannot be taken for granted, and the same applies to the assertion that Islam has either a positive or a negative attitude towards science. I do not mean here to deny the validity of using terms such as &ldquo;Islamic science&rdquo;, but simply to stress the importance of addressing the question of methodology before venturing such general characterizations.</p>', 'upload/60f1b6c182.png', 'nayeemAdmin', 'Islam, Science', '2022-10-31 12:47:31', 0),
(35, 1, 'How Islam can represent a model for environmental stewardship', '<p>The world, not just the UN, is waking up to the power of faith-based organizations (FBOs). How can Islam, and other faiths, contribute to solutions to sustainability and mitigate climate change risks?</p>\r\n<p>Odeh Al-Jayyousi, Professor and head of innovation at Arabian Gulf University in Bahrain, scholar in sustainable innovation and a member of UN Global Scientific Advisory Panel, for UN Environment&rsquo;s Global Environment Outlook 6 (GEO6), argues that Islamic worldview represents a unique model for a transition to sustainable development by focusing on justice, degrowth and harmony between human and nature.</p>\r\n<p>He commented that Islam views the environmental challenges as an indicator for a moral and ethical crisis. Looking at the creation of human, Earth, and cosmos as signs of the Creator (<em>Kitab Manthoor</em>) is a key in Islamic values.</p>\r\n<p>Prof. Al-Jayyousi elaborated that Islamic worldview defines a good life (<em>Hayat Tayebah)</em>&nbsp;living lightly on Earth (<em>Zohd</em>) and caring for both people and nature. Islamic discourse offers a sense of hope and optimism about the possibility of attaining harmony between human and nature. Earth will find a balance if humans rethink their lifestyles and mindsets as stated in the&nbsp;<em>Quran</em>:</p>\r\n<blockquote>\r\n<p><em>Corruption has appeared in both land and sea<br />Because of what people&rsquo;s own hands have brought<br />So that they may taste something of what they have done<br />So that hopefully they will turn back<br />Qur&rsquo;an 30: 41</em></p>\r\n</blockquote>\r\n<p>Professor Al-Jayyousi calls to revive the holistic view of Islam which is founded on the notion of harmony and &ldquo;natural state&rdquo; (<em>fitra</em>) and in respecting balance (<em>mizan</em>) and proportion (<em>mikdar</em>) in the systems of the universe. These notions provide an ethical dimension and a mandate for all humans to respect nature and all forms of life.</p>\r\n<p>Hence, the overcoming environmental crisis and mitigating the impact of climate change, from an Islamic perspective is underpinned by defining the role of humans as trustees and stewards (<em>khalifah</em>). This balance has been disturbed because to human choices which result in overconsumption, overexploitation and overuse of resources.</p>\r\n<p>Islamic values call to save integrity and to protect the diversity of all forms of life. Professor Al-Jayyousi commented that the ecological crisis is linked to human ethics and values. Human actions are responsible for the global ecological crisis. &ldquo;Reflecting on the main environmental problems, such as the destruction of natural habitats, loss of biodiversity, climate change, and erosion of soil, we see that all are triggered by human greed and ignorance. Human responsibility is to save and protect livelihood and ecosystem services to ensure a sustainable civilization learning from and reflecting on the fate of past civilizations&rdquo;, said Professor Al-Jayyousi.</p>\r\n<p>He cited a verse from the Holy Book, Quran, &ldquo;Every living thing is in a state of worship&rdquo;. He commented that when one hurts a bird or a plant, he/she is silencing a community of worshippers. To celebrate the symphony of life, all humans need to celebrate and protect biological and cultural diversity.</p>', 'upload/d3c6980ff6.png', 'nayeemAdmin', 'Islam, Science', '2022-10-31 12:48:35', 0),
(36, 4, 'Evolution and Islamâ€™s Quantum Question', '<p>The apparent contradictory relationship between Islam and evolution is important because it has been cited as an example of contradiction between religion and science by both thinkers in the West and Muslims. Muslim scholars and scientists mainly disagree with evolution&rsquo;s legitimacy. Islam&rsquo;s Quantum Question by Nidhal Guessoum is a unique narrative providing in one of its first chapters an overview of evolution from neo-Darwinists to creationists, including the views of scholars throughout Islamic history. Guessoum then proceeds to advocate for evolution. Drawing from Nidhal Guessoum&rsquo;s work, I highlight the reasons why there is an apparent contradiction between Islam and science&mdash;and, in particular, Islam and evolution&mdash;which include lack of freedom of thought and misinterpretation of the Qur&rsquo;an. In doing so, I suggest setting the stage for a new Einsteinian theory of evolution, which involves the dimension of time and human cognition.</p>\r\n<p>Download full article&nbsp;<a href=\"http://islam-science.net/wp-content/uploads/2013/11/EVOLUTION-AND-ISLAM%E2%80%99S-QUANTUM-QUESTION.pdf\">here</a></p>\r\n<p><em>By Rana Dajani</em></p>\r\n<p>Source:&nbsp;<a href=\"http://www.zygonjournal.org/\">http://www.zygonjournal.org/</a></p>', 'upload/488fda8b97.png', 'nayeemAdmin', 'Islam, Science', '2022-10-31 12:50:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(15, 'The Scientific Concepts of Islam', 'upload/slider/f7b0cf2c64.png'),
(16, 'The Scientific Concepts of Islam', 'upload/slider/50de947f9a.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(9, 'Md. Tanvir Ahmed', 'Tanvir', '202cb962ac59075b964b07152d234b70', 'tanvir.cse6.bu@gmail.com', '', 1),
(12, 'Obaydul Hasan Nayeem', 'Nayeem', 'c6f057b86584942e415435ffb1fa93d4', 'nayeem.cse6.bu@gmail.com', '', 0),
(13, 'Zahid Hasan Shuvo', 'Shuvo', 'c6f057b86584942e415435ffb1fa93d4', 'shuvo.cse6.bu@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Islamology', 'The Scientific Concepts of Islam', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
