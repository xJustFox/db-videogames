-- Tabella SoftwareHouse
CREATE TABLE softwarehouse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    vat_number VARCHAR(50) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

-- Tabella PEGI_Rating
CREATE TABLE pegi_rating (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating VARCHAR(50) NOT NULL
);

-- Tabella Videogame
CREATE TABLE videogame (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    storyline TEXT,
    release_date DATE NOT NULL,
    software_house_id INT,
    pegi_rating_id INT,
    FOREIGN KEY (software_house_id) REFERENCES softwarehouse(id),
    FOREIGN KEY (pegi_rating_id) REFERENCES pegi_rating(id)
);

-- Tabella Platform
CREATE TABLE platform (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Tabella Videogame_Platform (relazione molti-a-molti tra videogame e platform)
CREATE TABLE videogame_platform (
    videogame_id INT,
    platform_id INT,
    PRIMARY KEY (videogame_id, platform_id),
    FOREIGN KEY (videogame_id) REFERENCES videogame(id),
    FOREIGN KEY (platform_id) REFERENCES platform(id)
);

-- Tabella Category
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Tabella Videogame_Category (relazione molti-a-molti tra videogame e category)
CREATE TABLE videogame_category (
    videogame_id INT,
    category_id INT,
    PRIMARY KEY (videogame_id, category_id),
    FOREIGN KEY (videogame_id) REFERENCES videogame(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Tabella Tournament
CREATE TABLE tournament (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year YEAR NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- Tabella Player
CREATE TABLE player (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

-- Tabella Player_Tournament (relazione molti-a-molti tra player e tournament)
CREATE TABLE player_tournament (
    player_id INT,
    tournament_id INT,
    PRIMARY KEY (player_id, tournament_id),
    FOREIGN KEY (player_id) REFERENCES player(id),
    FOREIGN KEY (tournament_id) REFERENCES tournament(id)
);

-- Tabella Review (recensioni sui videogiochi fatte dai giocatori)
CREATE TABLE review (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    text TEXT NOT NULL,
    rating INT NOT NULL,
    player_id INT,
    videogame_id INT,
    FOREIGN KEY (player_id) REFERENCES player(id),
    FOREIGN KEY (videogame_id) REFERENCES videogame(id)
);

-- Tabella Award (premi per i videogiochi)
CREATE TABLE award (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Tabella Videogame_Award (relazione molti-a-molti tra videogame e award con l'anno)
CREATE TABLE videogame_award (
    videogame_id INT,
    award_id INT,
    year YEAR,
    PRIMARY KEY (videogame_id, award_id, year),
    FOREIGN KEY (videogame_id) REFERENCES videogame(id),
    FOREIGN KEY (award_id) REFERENCES award(id)
);
