-- ジャンルの確認（既に存在する場合は不要）
INSERT INTO genre (genre_id, name) 
SELECT 1, 'JPOP'
WHERE NOT EXISTS (SELECT 1 FROM genre WHERE genre_id = 1 AND name = 'JPOP');

-- グループの挿入
INSERT INTO groups (id, name, nationality)
SELECT 3656906, '25時、ナイトコードで。', 'japan'
WHERE NOT EXISTS (SELECT 1 FROM groups WHERE id = 3656906);

-- アーティストの挿入（メンバー）
INSERT INTO artists (artist_id, name, group_id, member_id) VALUES
(2653465, '宵崎奏（CV.楠木ともり）', 3656906, 1),
(2186930, '朝比奈まふゆ（CV.田辺留依）', 3656906, 2),
(2499398, '東雲絵名（CV.鈴木みのり）', 3656906, 3),
(2102335, '暁山瑞希（CV.佐藤日向）', 3656906, 4);

-- アーティストの挿入（クリエイター）
INSERT INTO artists (artist_id, name, group_id, member_id) VALUES
(2107147, 'てにをは', NULL, NULL),
(2733588, 'syudou', NULL, NULL),
(1879560, 'きくお', NULL, NULL),
(2082221, 'emon (Tes.)', NULL, NULL),
(2213988, 'n-buna', NULL, NULL),
(5183197, 'wotaku', NULL, NULL),
(2722237, 'ツミキ', NULL, NULL),
(2480901, 'Harry (はりーP)', NULL, NULL),
(2850968, '棚橋EDDYテルアキ', NULL, NULL),
(1904195, 'ピノキオピー', NULL, NULL),
(2025600, 'Heavenz', NULL, NULL),
(1781941, 'すこっぷ', NULL, NULL),
(2236354, 'ぬゆり', NULL, NULL);

-- バーチャルシンガーの確認（既に存在する場合は不要）
INSERT INTO artists (artist_id, name, group_id, member_id) VALUES
(1409938, '巡音ルカ', NULL, NULL),
(1426209, '鏡音レン', NULL, NULL),
(1426210, 'MEIKO', NULL, NULL);

-- CDの挿入
INSERT INTO cd (cd_id, title, artist_id, price, release_year, genre) VALUES 
('4562494357085', '25時、ナイトコードで。 SEKAI ALBUM vol.2', 3656906, 5500, 2024, 1);

-- 楽曲情報の挿入
INSERT INTO music (work_code, music_title, lyricist_id, composer_id, arrangement_id) VALUES
('734-4365-4', 'ヴィラン', 2107147, 2107147, NULL),
('740-0513-8', 'うっせぇわ', 2733588, 2733588, NULL),
('708-3505-5', '愛して愛して愛して', 1879560, 1879560, NULL),
('715-8189-8', '妄想感傷代償連盟', 1662877, 1662877, 2082221),
('712-6129-0', 'メリュー', 2213988, 2213988, NULL),
('731-8670-8', 'ジェヘナ', 5183197, 5183197, NULL),
('265-4704-0', 'フォニイ', 2722237, 2722237, NULL),
('242-9327-0', '泥中に咲く', 2480901, 2480901, 2850968),
('745-0849-1', 'ノンブレス・オブリージュ', 1904195, 1904195, NULL),
('707-5303-2', 'それがあなたの幸せとしても', 2025600, 2025600, NULL),
('186-6549-7', 'アイロニ', 1781941, 1781941, NULL),
('718-6691-4', '命ばっかり', 2236354, 2236354, NULL);

-- トラック情報の挿入
INSERT INTO tracks (cd_id, track_number, work_code, length) VALUES
('4562494357085', 1, '734-4365-4', '00:03:21'),
('4562494357085', 2, '740-0513-8', '00:03:24'),
('4562494357085', 3, '708-3505-5', '00:04:15'),
('4562494357085', 4, '715-8189-8', '00:04:27'),
('4562494357085', 5, '712-6129-0', '00:03:33'),
('4562494357085', 6, '731-8670-8', '00:04:08'),
('4562494357085', 7, '265-4704-0', '00:03:08'),
('4562494357085', 8, '242-9327-0', '00:04:45'),
('4562494357085', 9, '745-0849-1', '00:03:29'),
('4562494357085', 10, '707-5303-2', '00:04:28'),
('4562494357085', 11, '186-6549-7', '00:04:11'),
('4562494357085', 12, '718-6691-4', '00:04:13');

-- 再生情報（歌手情報）の挿入
INSERT INTO play (cd_id, track_number, artist_id) VALUES
-- 1. ヴィラン
('4562494357085', 1, 2653465), ('4562494357085', 1, 2186930),
('4562494357085', 1, 2499398), ('4562494357085', 1, 2102335),

-- 2. うっせぇわ
('4562494357085', 2, 2653465), ('4562494357085', 2, 2186930),
('4562494357085', 2, 2499398), ('4562494357085', 2, 2102335),

-- 3. 愛して愛して愛して
('4562494357085', 3, 881139),

-- 4. 妄想感傷代償連盟
('4562494357085', 4, 881139),

-- 5. メリュー
('4562494357085', 5, 881139),

-- 6. ジェヘナ
('4562494357085', 6, 881139),

-- 7. フォニイ
('4562494357085', 7, 1426210), -- MEIKO

-- 8. 泥中に咲く
('4562494357085', 8, 881139),

-- 9. ノンブレス・オブリージュ
('4562494357085', 9, 881139),

-- 10. それがあなたの幸せとしても
('4562494357085', 10, 1409938), -- 巡音ルカ

-- 11. アイロニ
('4562494357085', 11, 1426209), -- 鏡音レン

-- 12. 命ばっかり
('4562494357085', 12, 1426210); -- MEIKO