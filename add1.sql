-- ジャンルの挿入 
INSERT INTO genre (genre_id, name) VALUES 
(1, 'JPOP'),
(2, 'KPOP');

-- グループの挿入
INSERT INTO groups (id, name, nationality) VALUES 
(3656910, 'MORE MORE JUMP!', 'japan');

-- アーティストの挿入
INSERT INTO artists (artist_id, name, group_id, member_id) VALUES
-- メンバー
(1482921, '花里みのり（CV.小倉唯）', 3656910, 1),
(1725844, '桐谷遥（CV.吉岡茉祐）', 3656910, 2),
(2433132, '桃井愛莉（CV.降幡愛）', 3656910, 3),
(2484834, '日野森雫（CV.本泉莉奈）', 3656910, 4),
-- バーチャルシンガー
(881139, '初音ミク', NULL, NULL),
-- クリエイター
(2012073, 'Junky (GJBox)', NULL, NULL),
(1420329, '40mP', NULL, NULL),
(1923615, 'みきとP', NULL, NULL),
(2220862, 'Eve', NULL, NULL),
(2640053, 'Taku Inoue', NULL, NULL),
(2772337, 'Numa', NULL, NULL),
(2162699, 'かいりきベア', NULL, NULL),
(1662877, 'DECO*27', NULL, NULL),
(2370739, 'Rockwell', NULL, NULL),
(4443333, 'aqu3ra', NULL, NULL),
(1915542, '八王子P', NULL, NULL),
(1768750, 'q*Left', NULL, NULL),
(1900594, 'TOKOTOKO (西沢さんP)', NULL, NULL),
(1676296, 'ゆうゆ', NULL, NULL),
(2067466, 'Last Note.', NULL, NULL);

-- CDの挿入
INSERT INTO cd (cd_id, title, artist_id, price, release_year, genre) VALUES 
('4562494357122', 'MORE MORE JUMP! SEKAI ALBUM vol.2', 3656910, 3520, 2024, 1);

-- 楽曲情報の挿入
INSERT INTO music (work_code, music_title, lyricist_id, composer_id, arrangement_id) VALUES
('204-2323-3', 'Happy Halloween', 2012073, 2012073, NULL),
('702-8529-2', 'からくりピエロ', 1420329, 1420329, NULL),
('722-9731-0', '少女レイ', 1923615, 1923615, NULL),
('733-3585-1', '心予報', 2220862, 2220862, 2640053),
('257-0796-5', 'ダーリンダンス', 2162699, 2162699, NULL),
('742-7007-9', 'ヴァンパイア', 1662877, 1662877, 2370739),
('173-9728-6', 'トリノコシティ', 1420329, 1420329, NULL),
('246-6239-9', 'ロンリーユニバース', 4443333, 4443333, NULL),
('715-0745-1', '気まぐれメルシィ', 1915542, 1915542, NULL),
('241-4610-2', 'Booo!', 1900594, 1900594, NULL),
('171-6649-7', '深海少女', 1676296, 1676296, NULL),
('185-5563-2', 'セツナトリップ', 2067466, 2067466, NULL);

-- トラック情報の挿入
INSERT INTO tracks (cd_id, track_number, work_code, length) VALUES
('4562494357122', 1, '204-2323-3', '00:04:05'),
('4562494357122', 2, '702-8529-2', '00:04:17'),
('4562494357122', 3, '722-9731-0', '00:04:51'),
('4562494357122', 4, '733-3585-1', '00:03:21'),
('4562494357122', 5, '257-0796-5', '00:03:24'),
('4562494357122', 6, '742-7007-9', '00:03:01'),
('4562494357122', 7, '173-9728-6', '00:03:25'),
('4562494357122', 8, '246-6239-9', '00:03:41'),
('4562494357122', 9, '715-0745-1', '00:03:24'),
('4562494357122', 10, '241-4610-2', '00:02:53'),
('4562494357122', 11, '171-6649-7', '00:03:35'),
('4562494357122', 12, '185-5563-2', '00:03:35');

-- 再生情報（歌手情報）の挿入
INSERT INTO play (cd_id, track_number, artist_id) VALUES
-- 1. Happy Halloween
('4562494357122', 1, 1482921), ('4562494357122', 1, 1725844),
('4562494357122', 1, 2433132), ('4562494357122', 1, 2484834),
('4562494357122', 1, 1084075),

-- 2. からくりピエロ
('4562494357122', 2, 1482921), ('4562494357122', 2, 1725844),
('4562494357122', 2, 2433132), ('4562494357122', 2, 2484834),
('4562494357122', 2, 881139),

-- 3. 少女レイ
('4562494357122', 3, 1725844), ('4562494357122', 3, 2484834),
('4562494357122', 3, 881139),

-- 4. 心予報
('4562494357122', 4, 1482921), ('4562494357122', 4, 1725844),
('4562494357122', 4, 2433132), ('4562494357122', 4, 2484834),

-- 5. ダーリンダンス
('4562494357122', 5, 1482921), ('4562494357122', 5, 1725844),
('4562494357122', 5, 881139),

-- 6. ヴァンパイア
('4562494357122', 6, 1482921), ('4562494357122', 6, 1725844),
('4562494357122', 6, 2433132), ('4562494357122', 6, 2484834),
('4562494357122', 6, 881139),

-- 7. トリノコシティ
('4562494357122', 7, 1725844), ('4562494357122', 7, 2433132),
('4562494357122', 7, 881139),

-- 8. ロンリーユニバース
('4562494357122', 8, 1482921), ('4562494357122', 8, 1725844),
('4562494357122', 8, 881139),

-- 9. 気まぐれメルシィ
('4562494357122', 9, 1482921), ('4562494357122', 9, 1725844),
('4562494357122', 9, 2433132), ('4562494357122', 9, 2484834),
('4562494357122', 9, 881139),

-- 10. Booo!
('4562494357122', 10, 1482921), ('4562494357122', 10, 1725844),
('4562494357122', 10, 2433132), ('4562494357122', 10, 2484834),
('4562494357122', 10, 1084075),

-- 11. 深海少女
('4562494357122', 11, 1482921), ('4562494357122', 11, 1725844),
('4562494357122', 11, 2433132), ('4562494357122', 11, 2484834),
('4562494357122', 11, 881139),

-- 12. セツナトリップ
('4562494357122', 12, 1482921), ('4562494357122', 12, 2433132),
('4562494357122', 12, 1084075);