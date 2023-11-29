SET foreign_key_checks= 1;
USE buzzdb;
INSERT INTO mst_user
(
   user_name,
   password,
   family_name,
   first_name,
   family_name_kana,
   first_name_kana,
   gender
)
VALUES
(
   'yamada@gmail.com',
   '111111',
   '山田',
   '太郎',
   'やまだ',
   'たろう',
   0
);
INSERT INTO mst_category
(
   category_name,
   category_description
)
VALUES
(
   '花',
   '花のカテゴリーです'
),

(
   'ケーキ',
   'ケーキのカテゴリーです'
),

(
   'アクセサリ',
   'アクセサリのカテゴリーです'
);
INSERT INTO mst_product
(
   product_name,
   product_name_kana,
   product_description,
   category_id,
   price,
   image_full_path,
   release_date,
   release_company
)
VALUES
(
   'バラ',
   'ばら',
   '大切な人への想いを込めたバラのギフト。当店では色とりどりの美しいバラをアレンジしたブーケや花瓶セットを多数ご用意しています。赤バラのパッションやピンクの優雅さ、白バラの清楚さなど、シーンやイメージに合わせてお選びいただけます。花言葉が豊かなバラは、気持ちを伝えるのに最適。記念日や誕生日はもちろん、素敵なサプライズとしても喜ばれること間違いなし。大切な人への想いを込めたバラギフトで、特別な日を彩ってはいかがでしょうか。',
   1,
   5000,
   '/img/flower-rose01.jpg',
   '2020/01/05',
   'ブーケハウス'
),

(
   'チューリップ',
   'ちゅーりっぷ',
   '春を告げるチューリップのギフトで、彩り豊かな感謝の気持ちを伝えましょう。当店では色とりどりのチューリップをアレンジした花束やバスケットを多数ご用意しています。明るいイエローやさわやかなピンク、エレガントなパープルなど、個性豊かなチューリップの魅力が存分に楽しめます。記念日や誕生日のお祝いはもちろん、ご挨拶の手土産としても喜ばれること間違いなし。大切な人への想いを込めたチューリップのギフトで、春の訪れを感じていただけるはずです。',
   1,
   3000,
   '/img/flower-tulip01.jpg',
   '2020/01/15',
   'ブーケハウス'
),

(
   'ショートケーキ',
   'しょーとけーき',
   '大切な人へのおすそ分けにぴったりなショートケーキのギフト。当店の人気No.1ショートケーキを贈って、毎日を特別な日に彩りましょう。生クリームやフルーツをたっぷりと使った、ムースのようになめらかなケーキ生地が特徴。記念日やお祝いはもちろん、まるでカフェで食べるような気分が味わえる、おしゃれなギフトに最適です。大切な人とケーキで会話を楽しむ、素敵なひとときをお届けします。',
   2,
   800,
   '/img/shortcake.jpg',
   '2020/01/25',
   'スマイルケーキショップ'
),

(
   'チョコレートケーキ',
   'ちょこれーとけーき',
   'とろけるようなチョコレートの甘さが楽しめるチョコレートケーキ。当店自慢の生チョコガナッシュをたっぷりと使った濃厚なチョコレートムースが特徴です。しっとりとした食感にカカオの香りが口いっぱいに広がり、チョコレート好きにはたまらない一品です。バレンタインや記念日のプレゼントに最適なだけでなく、ご自分用のご褒美にもおすすめ。大切な人はもちろん、自分自身への甘いひとときを、当店のチョコレートケーキで味わってみてはいかがでしょうか。',
   2,
   900,
   '/img/chocolatecake.jpg',
   '2020/02/05',
   'スマイルケーキショップ'
),

(
   'ネックレス',
   'ねっくれす',
   '大切な人への想いを込めたネックレスのギフト。当店ではシンプルなデザインのネックレスを豊富に取り揃えています。ダイヤモンドやパールの輝きがエレガントな印象のものから、ゴールドやシルバーの艶やかな仕上がりのものまで、様々なタイプの中からお選びいただけます。記念日のプレゼントはもちろん、年に一度の特別な日のためのサプライズギフトとしても喜ばれること間違いなし。大切な人への想いを込めたジュエリーで、幸せなひとときを演出してはいかがでしょうか。',
   3,
   15000,
   '/img/necklace.jpg',
   '2020/02/15',
   'ジュエリーボックス'
),

(
   '指輪',
   'ゆびわ',
   '想いを込めた指輪のギフトで、大切な人との絆をより強く。当店ではシンプルなデザインの指輪を多数ご用意しています。ダイヤモンドの煌めきがロマンチックなものから、静かな輝きのホワイトゴールド、シルバーのものまで。記念日のサプライズにはもちろん、プロポーズのときにも最適です。リングに秘めた想いとともに、これからの未来へのお約束が伝わるはず。大切な人との絆をより強くするための指輪ギフトをぜひ。',
   3,
   20000,
   '/img/ring.jpg',
   '2020/02/25',
   'ジュエリーボックス'
);