CREATE TABLE RSP_uzivatel(
	jmeno varchar(50) NOT NULL,
	prijmeni varchar(50) NOT NULL,
	titul_pred varchar(50),
	titul_za varchar(50),
	login varchar(25) UNIQUE NOT NULL,
	heslo_hash varchar(128) NOT NULL,
	email varchar(100) UNIQUE NOT NULL,
	registrace DATETIME,
	PRIMARY KEY(login)
);

CREATE TABLE RSP_clanek(
	id_clanek int NOT NULL AUTO_INCREMENT,
	autor varchar(25),
	datum DATETIME NOT NULL,
	verze tinyint NOT NULL,
	nazev_clanku varchar(250) NOT NULL,text TEXT,
	PRIMARY KEY(id_clanek),
	CONSTRAINT fk_user FOREIGN KEY (autor) REFERENCES RSP_uzivatel(login) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE RSP_posudek(
	clanek int NOT NULL,
	text TEXT,
	datum DATETIME NOT NULL,
	autor varchar(25) ,
	CONSTRAINT fk_user2 FOREIGN KEY (autor) REFERENCES RSP_uzivatel(login) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT fk_clanek FOREIGN KEY (clanek) REFERENCES RSP_clanek(id_clanek) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE RSP_stav_clanku(
	clanek int NOT NULL,
	stav tinyint NOT NULL,
	datum DATETIME NOT NULL,
	PRIMARY KEY(clanek),
	CONSTRAINT fk_clanek2 FOREIGN KEY (clanek) REFERENCES RSP_clanek(id_clanek) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS RSP_stav_clanku,RSP_posudek,RSP_clanek,RSP_uzivatel;
