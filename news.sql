-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 涓绘満: 127.0.0.1
-- 鐢熸垚鏃ユ湡: 2016 骞?02 鏈?23 鏃?05:40
-- 鏈嶅姟鍣ㄧ増鏈? 5.6.11
-- PHP 鐗堟湰: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 鏁版嵁搴? `login`
--

-- --------------------------------------------------------

--
-- 琛ㄧ殑缁撴瀯 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `newsId` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `newsType` enum('鎺ㄨ崘','鎼炵瑧') NOT NULL,
  `newsTitle` varchar(40) NOT NULL,
  `newsRemark` enum('缃戞槗瑕侀椈','涓轰綘浼橀€?,'鏂版氮瑕侀椈','鎺ㄥ箍') NOT NULL,
  `newsImg` varchar(100) NOT NULL,
  `newsDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `newsContent` varchar(2000) NOT NULL,
  PRIMARY KEY (`newsId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 杞瓨琛ㄤ腑鐨勬暟鎹?`news`
--

INSERT INTO `news` (`newsId`, `newsType`, `newsTitle`, `newsRemark`, `newsImg`, `newsDate`, `newsContent`) VALUES
(4, '鎼炵瑧', '鏈€杩戜笂鐏槾鐤硷紝鐤肩殑涓嶈涓嶈鐨勶紝鍏徃涓€濂冲骞哥伨涔愮ジ锛堢粡甯稿紑鐜╃瑧锛夛紝鍝ワ紝鍚冪摐瀛愬惂锛屽彛', '', '', '2016-02-19 01:53:04', '鏈€杩戜笂鐏槾鐤硷紝鐤肩殑涓嶈涓嶈鐨勶紝鍏徃涓€濂冲骞哥伨涔愮ジ锛堢粡甯稿紑鐜╃瑧锛夛紝鍝ワ紝鍚冪摐瀛愬惂锛屽彛棣欑硸瑕佷笉瑕佸晩锛屽摜锛屼綘褰㈠涓€涓嬫湁澶氱柤鍟婏紝鍝堝搱鍝堬紝 鐪嬫妸濂瑰緱鐟熺殑锛屾垜缁欎綘褰㈠涓€涓嬫湁澶氱柤锛屼綘鐜板湪鎾呯潃鍢存眰鎴戜翰浣狅紝鎴戦兘娌″叴鑷达紝 鍟婂晩鍟婏紝濂藉ソ鑱婂ぉ锛屽姩浠€涔堟墜锛屽揩鏀炬墜锛岃€虫湹鎺変簡'),
(2, '鎺ㄨ崘', '瀹樻柟杈熻埃&quot;涓浗鐏鍧犳瘉鐮告500浜?quot;:6姝?7浜轰激2', '缃戞槗瑕侀椈', 'images/news3.png', '2016-02-18 14:48:28', '褰撳勾鐏鐐圭伀璧烽鍚庣害涓ょ鍑虹幇寮傚父锛岀害22绉掑悗鐏澶撮儴鍧犲湴锛屾挒鍒扮鍙戝皠鏋朵笉鍒?鍏噷鐨勫北鍧?'),
(3, '鎺ㄨ崘', '骞磋交浜猴紝鍒板簳璇ヤ笉璇ヨ捶娆句拱鎴匡紵', '', '', '2016-02-18 14:48:49', '鍏Н閲戝瓨娆惧埄鐜囩殑涓婃定鏈夊埄浜庡鍔犲叕绉噾鐨勮妯★紝瀵逛簬鎴垮湴浜у競鍦鸿€岃█绠楁槸涓€绉嶉棿鎺ュ埄濂姐€?),
(5, '鎼炵瑧', '涓崍鍘婚キ搴楀悆鐗涜倝闈紝鑳屾櫙鍓蹭簡鍚э紝濂戒箙娌＄敤銆傛湰浜哄枩娆㈠悆杈ｆ灏卞線闈㈤噷鏀句簡鐐癸紝鍚冧簡涓ゅ彛', '', '', '2016-02-19 01:53:20', '涓崍鍘婚キ搴楀悆鐗涜倝闈紝鑳屾櫙鍓蹭簡鍚э紝濂戒箙娌＄敤銆傛湰浜哄枩娆㈠悆杈ｆ锛屽氨寰€闈㈤噷鏀句簡鐐癸紝鍚冧簡涓ゅ彛鎰熻涓嶅锛屽氨鍙堝紕浜嗕竴鍕猴紝楂樻疆鏄剳娈嬬殑娌℃斁纰楅噷锛屾病閿欑洿鎺ユ斁鍢撮噷浜嗭紝灏忎紮浼撮兘鎯婂憜浜嗐€?'),
(6, '鎺ㄨ崘', '涓骇闃剁骇涔熶拱涓嶈捣鎴夸簡 妤煎競浠婂勾杩樿兘鍧氭尯鍚楋紵 ', '涓轰綘浼橀€?, 'images/news2.jpg', '2016-02-19 01:58:14', '鍜岃缃戯細鏈€杩戦娓ゼ甯備粠鍘诲勾骞村簳鍒扮幇鍦紝璺屽箙姣旇緝鎯婁汉锛屾湁鐨勫湴鏂瑰凡缁忚穼浜嗕笁銆佸洓鎴愪互涓婏紝杩欐牱鐨勬儏鍐典笅锛屾垜浠幓骞存ゼ甯備袱鏋佸垎鍖栵紝涓夈€佸洓绾垮煄甯備笉琛岋紝浣嗗寳涓婂箍寰堝潥鎸猴紝灏ゅ叾鏄繁鍦冲ぇ娑ㄣ€傞娓ゼ甯傜殑涓嬭穼浼氫笉浼氳繛甯﹀鎴戜滑鐨勬ゼ甯傛湁涓€瀹氱殑褰卞搷锛?),
(7, '鎼炵瑧', '鏄ㄦ櫄灏忓尯涓嶇煡閬撳摢瀹跺皬澶澶滈噷鍟暘鍟?濂崇殑娴彨澹板緢澶?鍚殑瀹炲湪鍙椾笉浜嗕簡,灏辨墥鍦ㄧ獥鎴?, '', '', '2016-02-19 02:11:04', '澶滈噷鍟暘鍟?濂崇殑娴彨澹板緢澶?鍚殑瀹炲湪鍙椾笉浜嗕簡,灏辨墥鍦ㄧ獥鎴峰涓婇潰鍠?浣犱滑鐖借兘甯︿笂鎴戝悧!璇濋煶鍒氳惤,鍙惉瑙佸皬鍖哄悇澶勫紓鍙ｅ悓澹扮殑鍠婇亾:鈥滆繕鏈夋垜鈥?鈥滆繕鏈夋垜鈥?鈥滄垜鈥?鈥滄垜涔熻鈥?鈥濇豹姹豹"銆?'),
(8, '鎺ㄨ崘', '璐у竵渚涚粰鑷翠娇椋熷搧浠锋牸椋欏崌', '鎺ㄥ箍', '', '2016-02-19 02:13:37', '1鏈堢殑CPI淇敼浜嗘潈閲嶄互娣″寲椋熷搧褰卞搷锛屼笉鐒禖PI杩樹細鏇撮珮銆?鏈圕PI涓鍝佺被鏉冮噸鏄剧劧鍑虹幇浜嗕笅璋冦€傚鏋滅矖鐣ユ寜鐓у幓骞村熀鏈熷拰鏉冮噸璁＄畻锛屽垯CPI涓?.2%銆傛鏃跺仛鍩烘湡鍜屾潈閲嶈皟鏁寸‘瀹炴瘮杈冩晱鎰燂紝浣嗗瑙傛潵璇达紝CPI浜斿勾涓€娆＄殑鏉冮噸璋冩暣鏄浐瀹氳鍒欙紝2016骞存濂藉睘浜庢潈閲嶈皟鏁村勾銆?),
(9, '鎺ㄨ崘', '寰俊寮€鏀舵墜缁垂锛佸井鍟嗘姏寮冿細杞垬鏀粯瀹?, '鏂版氮瑕侀椈', 'images/news2.jpg', '2016-02-19 02:15:09', '闆堕挶鎻愮幇鍔熻兘寮€濮嬪瓒呴閮ㄥ垎鏀跺彇鎵嬬画璐光€濈殑鍏憡涓€缁忓彂甯冿紝渚垮紩璧蜂汉浠箍娉涚儹璁€備絾璁稿甯傛皯鍦ㄢ€滃悙妲解€濆悗鍗村彂鐜帮紝涓庤嚜韬叧绯诲苟涓嶇畻澶с€傚€掓槸鈥滃井鍟嗏€濆弽搴旇緝澶э紝绾风悍杞垬'),
(10, '鎺ㄨ崘', '澶╀环楸?, '涓轰綘浼橀€?, 'images/news3.png', '2016-02-19 03:29:35', '鎹ぎ瑙嗘柊闂绘秷鎭紝鍙屾柟鍙戠敓鍐茬獊涔嬪悗锛岃瀵熷緢蹇埌杈惧寳宀搁噹鐢熸笖鏉戦鍘呫€傛嵁闄堝博璁诧紝鐢变簬鍙屾柟鍔ㄦ墜鐨勮捣鍥犳槸涓€浣嶅コ鍥㈠憳鐨勭埗浜插厛琚簵鏂瑰姩浜嗘墜銆傛墍浠ワ紝鍙屾柟涓昏鍥寸粫鏄惁闇€瑕佸悜鑰佷汉閬撴瓑锛岃鏂硅兘鍚︿繚鐣欏畬鏁寸殑鐩戞帶瑙嗛锛屼互鍙婅涓嶈璀︽柟璧版硶寰嬬▼搴忓鐞嗙瓑鏂归潰杩涜浜嗚皥璇濄€?),
(14, '鎺ㄨ崘', '钁楀悕璁拌€呮埓鐓屽幓涓?, '', 'images/news5.png', '2016-02-19 14:24:19', '钁楀悕璁拌€呮埓鐓屽幓涓?鏇捐憲銆婅儭鑰€閭︿笌骞冲弽鍐ゅ亣閿欐銆嬭憲鍚嶈鑰呮埓鐓屽幓涓?鏇捐憲銆婅儭鑰€閭︿笌骞冲弽鍐ゅ亣閿欐銆嬭憲鍚嶈鑰呮埓鐓屽幓涓?鏇捐憲銆婅儭鑰€閭︿笌骞冲弽鍐ゅ亣閿欐銆?),
(15, '鎼炵瑧', '鐖风埛鑰宠儗鍙堢埍璧锋棭锛屼竴鏃ユ棭璧凤紝', '', '', '2016-02-19 14:28:36', '鐖风埛鑰宠儗鍙堢埍璧锋棭锛屼竴鏃ユ棭璧凤紝鍚緱濂跺ザ瀵圭埛鐖疯:鈥滀綘鎷夸釜鐩嗘妸閿呭彴涓婄殑鑲夋墸涓婏紝鐪佺殑涓€浼氱儳鐐曡惤鐏般€傗€濈埛鐖烽棶鍒?鈥滃暐锛熲€濆ザ濂?鈥滄嬁鐩嗘妸鑲夋墸'),
(24, '鎺ㄨ崘', '涔犺繎骞筹細鎻愰珮鏂伴椈鑸嗚鐨勪紶鎾姏', '', 'images/news4.jpg', '2016-02-20 08:52:11', '銆€浜哄績鏄渶澶х殑鏀挎不锛岃垎璁烘槸寮烘湁鍔涚殑姝﹀櫒銆傚仛濂藉厷鐨勬柊闂昏垎璁哄伐浣滄剰涔夐噸澶с€佷娇鍛藉厜鑽ｃ€俓r\n\r\n銆€銆€鐚村勾鏂版槬浼婂锛屼範杩戝钩鎬讳功璁版潵鍒颁汉姘戞棩鎶ョぞ銆佹柊鍗庣ぞ銆佷腑澶數瑙嗗彴绛?瀹朵腑澶柊闂诲崟浣嶈繘琛屽疄鍦拌皟鐮旓紝鍚戝箍澶ф柊闂诲伐浣滆€呰嚧浠ヨ妭鏃ョ绂忓拰浜插垏鎱伴棶銆傚湪鍏氱殑鏂伴椈鑸嗚宸ヤ綔搴ц皥浼氫笂锛屼範鎬讳功璁扮潃鐪煎厷鐨勫伐浣滃叏灞€锛屾繁鍒婚槓杩版柊闂昏垎璁哄伐浣滅殑閲嶈鎰忎箟锛岃繘涓€姝ユ槑纭簡鏂扮殑鏃朵唬鏉′欢涓嬫柊闂昏垎璁哄伐浣滅殑鑱岃矗浣垮懡銆佸熀鏈柟閽堛€?瀹炶返璺緞锛屼负鏂伴椈鑸嗚鎴樼嚎涓庢椂淇辫繘鏀归潻鍒涙柊銆佸叏闈㈡彁楂樺伐浣滆兘鍔涙按骞虫彁渚涗簡鎬濇兂姝﹀櫒鍜岃鍔ㄦ寚鍗椼€?);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
