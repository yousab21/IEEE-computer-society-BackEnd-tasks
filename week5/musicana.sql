CREATE TABLE Musicians(
  "id" INTEGER,
  "name" TEXT NOT NULL,
  "address" TEXT,
  "phone_number" TEXT UNIQUE NOT NULL,
  PRIMARY KEY("id")
);

CREATE TABLE Albums(
  "id" INTEGER,
  "title" TEXT UNIQUE NOT NULL,
  "copyright_date" NUMERIC NOT NULL,
  "producer_id" INTEGER NOT NULL,
  PRIMARY KEY("id"),
  FOREIGN KEY("producer_id") REFERENCES Musicians("id")
);

CREATE TABLE Songs(
  "title" TEXT,
  "author" TEXT NOT NULL,
  "album_id" INTEGER,
  PRIMARY KEY("title"),
  FOREIGN KEY("album_id") REFERENCES Albums("id")
);

CREATE TABLE Instruments(
  "name" TEXT,
  "key" TEXT NOT NULL,
  PRIMARY KEY("name")
);

CREATE TABLE Play(
  "musician_id" INTEGER,
  "instrument_name" TEXT,
  PRIMARY KEY("musician_id", "instrument_name"),
  FOREIGN KEY("musician_id") REFERENCES Musicians("id"),
  FOREIGN KEY("instrument_name") REFERENCES Instruments("name")
);

CREATE TABLE Perform(
  "song_title" TEXT,
  "musician_id" INTEGER,
  PRIMARY KEY("song_title", "musician_id"),
  FOREIGN KEY("song_title") REFERENCES Songs("title"),
  FOREIGN KEY("musician_id") REFERENCES Musicians("id")
);
