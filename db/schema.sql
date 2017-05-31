DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemons(
id serial Primary Key,
name varchar NOT NULL,
cp integer NOT NULL,
poke_type text NOT NULL,
img_url text NOT NULL
);