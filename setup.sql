-- テーブル作成
-- まずジャンルテーブルの作成
CREATE TABLE genre (
    genre_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


-- グループテーブルの作成
CREATE TABLE groups (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);

-- アーティストテーブルの作成
CREATE TABLE artists (
    artist_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    group_id INTEGER REFERENCES groups(id),
    member_id INTEGER,
    UNIQUE (group_id, member_id)
);

-- CDテーブルの作成
CREATE TABLE cd (
    cd_id VARCHAR(13) PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    artist_id INTEGER REFERENCES artists(artist_id),
    price INTEGER NOT NULL,
    release_year INTEGER NOT NULL,
    genre VARCHAR(50)
);

-- 楽曲情報テーブルの作成
CREATE TABLE music (
    work_code VARCHAR(20) PRIMARY KEY,
    music_title VARCHAR(200) NOT NULL,
    lyricist_id INTEGER REFERENCES artists(artist_id),
    composer_id INTEGER REFERENCES artists(artist_id),
    arrangement_id INTEGER REFERENCES artists(artist_id)
);

-- トラックテーブルの作成
CREATE TABLE tracks (
    cd_id VARCHAR(13) REFERENCES cd(cd_id),
    track_number INTEGER,
    work_code VARCHAR(20) REFERENCES music(work_code),
    length INTERVAL,
    PRIMARY KEY (cd_id, track_number)
);

-- 再生情報（中間テーブル）の作成
CREATE TABLE play (
    cd_id VARCHAR(13),
    track_number INTEGER,
    artist_id INTEGER REFERENCES artists(artist_id),
    FOREIGN KEY (cd_id, track_number) REFERENCES tracks(cd_id, track_number),
    PRIMARY KEY (cd_id, track_number, artist_id)
);

