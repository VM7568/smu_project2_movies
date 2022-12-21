-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "movie_info" (
    "id" serial   NOT NULL,
    "title" varchar(250)   NOT NULL,
    "year" int   NOT NULL,
    "rating_id" int   NOT NULL,
    "genre_id" int   NOT NULL,
    "director" varchar(300)   NOT NULL,
    "box_office" float   NOT NULL,
    "runtime_mins" int   NOT NULL,
    "top_billed" varchar(500)   NOT NULL,
    "awards" varchar(500)   NOT NULL,
    "writer" varchar(500)   NOT NULL,
    "language_id" int   NOT NULL,
    "country_id" int   NOT NULL,
    "imdb_ratings" float   NOT NULL,
    "meta_score" float   NOT NULL,
    "imdb_rank" int   NOT NULL,
    "imdb_votes" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_movie_info" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "film_rating" (
    "id" serial   NOT NULL,
    "mpaa_rating" varchar(20)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_film_rating" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "genre" (
    "id" serial   NOT NULL,
    "genre" varchar(50)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_genre" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "language" (
    "id" serial   NOT NULL,
    "language" varchar(100)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_language" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "country" (
    "id" serial   NOT NULL,
    "country" varchar(100)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "movie_info" ADD CONSTRAINT "fk_movie_info_rating_id" FOREIGN KEY("rating_id")
REFERENCES "film_rating" ("id");

ALTER TABLE "movie_info" ADD CONSTRAINT "fk_movie_info_genre_id" FOREIGN KEY("genre_id")
REFERENCES "genre" ("id");

ALTER TABLE "movie_info" ADD CONSTRAINT "fk_movie_info_language_id" FOREIGN KEY("language_id")
REFERENCES "language" ("id");

ALTER TABLE "movie_info" ADD CONSTRAINT "fk_movie_info_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("id");

