--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Ubuntu 13.1-1.pgdg20.04+1)

-- Started on 2021-01-15 18:01:24 EST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16398)
-- Name: genres; Type: TABLE; Schema: public; Owner: movies
--

CREATE TABLE public.genres (
    id integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    genre text NOT NULL
);


ALTER TABLE public.genres OWNER TO movies;

--
-- TOC entry 202 (class 1259 OID 16396)
-- Name: grenres_id_seq; Type: SEQUENCE; Schema: public; Owner: movies
--

CREATE SEQUENCE public.grenres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grenres_id_seq OWNER TO movies;

--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 202
-- Name: grenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: movies
--

ALTER SEQUENCE public.grenres_id_seq OWNED BY public.genres.id;


--
-- TOC entry 201 (class 1259 OID 16387)
-- Name: movies; Type: TABLE; Schema: public; Owner: movies
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    title text NOT NULL,
    runtime integer NOT NULL,
    director text NOT NULL,
    actors text NOT NULL,
    plot text NOT NULL,
    "posterUrl" text NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.movies OWNER TO movies;

--
-- TOC entry 205 (class 1259 OID 16409)
-- Name: moviesGenres; Type: TABLE; Schema: public; Owner: movies
--

CREATE TABLE public."moviesGenres" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp with time zone DEFAULT now() NOT NULL,
    "movieId" integer NOT NULL,
    "genreId" integer NOT NULL
);


ALTER TABLE public."moviesGenres" OWNER TO movies;

--
-- TOC entry 204 (class 1259 OID 16407)
-- Name: moviesGenres_id_seq; Type: SEQUENCE; Schema: public; Owner: movies
--

CREATE SEQUENCE public."moviesGenres_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."moviesGenres_id_seq" OWNER TO movies;

--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 204
-- Name: moviesGenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: movies
--

ALTER SEQUENCE public."moviesGenres_id_seq" OWNED BY public."moviesGenres".id;


--
-- TOC entry 200 (class 1259 OID 16385)
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: movies
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO movies;

--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 200
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: movies
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- TOC entry 2820 (class 2604 OID 16401)
-- Name: genres id; Type: DEFAULT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.genres ALTER COLUMN id SET DEFAULT nextval('public.grenres_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 16390)
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 16412)
-- Name: moviesGenres id; Type: DEFAULT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public."moviesGenres" ALTER COLUMN id SET DEFAULT nextval('public."moviesGenres_id_seq"'::regclass);


--
-- TOC entry 2969 (class 0 OID 16398)
-- Dependencies: 203
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: movies
--

COPY public.genres (id, "createdAt", "updatedAt", genre) FROM stdin;
2716	2021-01-15 22:50:08.742987+00	2021-01-15 22:50:08.742987+00	Comedy
2717	2021-01-15 22:50:08.756874+00	2021-01-15 22:50:08.756874+00	Fantasy
2718	2021-01-15 22:50:08.78238+00	2021-01-15 22:50:08.78238+00	Crime
2719	2021-01-15 22:50:08.798403+00	2021-01-15 22:50:08.798403+00	Drama
2720	2021-01-15 22:50:08.81516+00	2021-01-15 22:50:08.81516+00	Music
2723	2021-01-15 22:50:08.865517+00	2021-01-15 22:50:08.865517+00	Adventure
2726	2021-01-15 22:50:08.907145+00	2021-01-15 22:50:08.907145+00	History
2727	2021-01-15 22:50:08.923857+00	2021-01-15 22:50:08.923857+00	Thriller
2728	2021-01-15 22:50:08.948896+00	2021-01-15 22:50:08.948896+00	Animation
2730	2021-01-15 22:50:08.982175+00	2021-01-15 22:50:08.982175+00	Family
2733	2021-01-15 22:50:09.03238+00	2021-01-15 22:50:09.03238+00	Mystery
2735	2021-01-15 22:50:09.065611+00	2021-01-15 22:50:09.065611+00	Biography
2741	2021-01-15 22:50:09.140617+00	2021-01-15 22:50:09.140617+00	Action
2758	2021-01-15 22:50:09.549208+00	2021-01-15 22:50:09.549208+00	Film-Noir
2763	2021-01-15 22:50:09.607058+00	2021-01-15 22:50:09.607058+00	Romance
2773	2021-01-15 22:50:09.732127+00	2021-01-15 22:50:09.732127+00	Sci-Fi
2775	2021-01-15 22:50:09.765372+00	2021-01-15 22:50:09.765372+00	War
2780	2021-01-15 22:50:09.832181+00	2021-01-15 22:50:09.832181+00	Western
2809	2021-01-15 22:50:10.198865+00	2021-01-15 22:50:10.198865+00	Horror
2814	2021-01-15 22:50:10.265698+00	2021-01-15 22:50:10.265698+00	Musical
2821	2021-01-15 22:50:10.3824+00	2021-01-15 22:50:10.3824+00	Sport
\.


--
-- TOC entry 2967 (class 0 OID 16387)
-- Dependencies: 201
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: movies
--

COPY public.movies (id, "createdAt", "updatedAt", title, runtime, director, actors, plot, "posterUrl", year) FROM stdin;
1549	2021-01-15 22:50:08.734661+00	2021-01-15 22:50:08.734661+00	Beetlejuice	92	Tim Burton	Alec Baldwin, Geena Davis, Annie McEnroe, Maurice Page	A couple of recently deceased ghosts contract the services of a bio-exorcist in order to remove the obnoxious new owners of their house.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwODE3MDE0MV5BMl5BanBnXkFtZTgwNTk1MjI4MzE@._V1_SX300.jpg	1988
1550	2021-01-15 22:50:08.773576+00	2021-01-15 22:50:08.773576+00	The Cotton Club	127	Francis Ford Coppola	Richard Gere, Gregory Hines, Diane Lane, Lonette McKee	The Cotton Club was a famous night club in Harlem. The story follows the people that visited the club, those that ran it, and is peppered with the Jazz music that made it so famous.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTU5ODAyNzA4OV5BMl5BanBnXkFtZTcwNzYwNTIzNA@@._V1_SX300.jpg	1984
1551	2021-01-15 22:50:08.831861+00	2021-01-15 22:50:08.831861+00	The Shawshank Redemption	142	Frank Darabont	Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler	Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.	https://images-na.ssl-images-amazon.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_SX300.jpg	1994
1552	2021-01-15 22:50:08.85856+00	2021-01-15 22:50:08.85856+00	Crocodile Dundee	97	Peter Faiman	Paul Hogan, Linda Kozlowski, John Meillon, David Gulpilil	An American reporter goes to the Australian outback to meet an eccentric crocodile poacher and invites him to New York City.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTg0MTU1MTg4NF5BMl5BanBnXkFtZTgwMDgzNzYxMTE@._V1_SX300.jpg	1986
1553	2021-01-15 22:50:08.890537+00	2021-01-15 22:50:08.890537+00	Valkyrie	121	Bryan Singer	Tom Cruise, Kenneth Branagh, Bill Nighy, Tom Wilkinson	A dramatization of the 20 July assassination and political coup plot by desperate renegade German Army officers against Hitler during World War II.	http://ia.media-imdb.com/images/M/MV5BMTg3Njc2ODEyN15BMl5BanBnXkFtZTcwNTAwMzc3NA@@._V1_SX300.jpg	2008
1554	2021-01-15 22:50:08.940384+00	2021-01-15 22:50:08.940384+00	Ratatouille	111	Brad Bird, Jan Pinkava	Patton Oswalt, Ian Holm, Lou Romano, Brian Dennehy	A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_SX300.jpg	2007
1555	2021-01-15 22:50:08.99858+00	2021-01-15 22:50:08.99858+00	City of God	130	Fernando Meirelles, Kátia Lund	Alexandre Rodrigues, Leandro Firmino, Phellipe Haagensen, Douglas Silva	Two boys growing up in a violent neighborhood of Rio de Janeiro take different paths: one becomes a photographer, the other a drug dealer.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4ODQ3ODkzNV5BMl5BanBnXkFtZTYwOTc4NDI3._V1_SX300.jpg	2002
1556	2021-01-15 22:50:09.023814+00	2021-01-15 22:50:09.023814+00	Memento	113	Christopher Nolan	Guy Pearce, Carrie-Anne Moss, Joe Pantoliano, Mark Boone Junior	A man juggles searching for his wifeundefineds murderer and keeping his short-term memory loss from being an obstacle.	https://images-na.ssl-images-amazon.com/images/M/MV5BNThiYjM3MzktMDg3Yy00ZWQ3LTk3YWEtN2M0YmNmNWEwYTE3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	2000
1557	2021-01-15 22:50:09.05724+00	2021-01-15 22:50:09.05724+00	The Intouchables	112	Olivier Nakache, Eric Toledano	François Cluzet, Omar Sy, Anne Le Ny, Audrey Fleurot	After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.	http://ia.media-imdb.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_SX300.jpg	2011
1558	2021-01-15 22:50:09.098593+00	2021-01-15 22:50:09.098593+00	Stardust	127	Matthew Vaughn	Ian McKellen, Bimbo Hart, Alastair MacIntosh, David Kelly	In a countryside town bordering on a magical land, a young man makes a promise to his beloved that heundefinedll retrieve a fallen star by venturing into the magical realm.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_SX300.jpg	2007
1559	2021-01-15 22:50:09.132015+00	2021-01-15 22:50:09.132015+00	Apocalypto	139	Mel Gibson	Rudy Youngblood, Dalia Hernández, Jonathan Brewer, Morris Birdyellowhead	As the Mayan kingdom faces its decline, the rulers insist the key to prosperity is to build more temples and offer human sacrifices. Jaguar Paw, a young man captured for sacrifice, flees to avoid his fate.	https://images-na.ssl-images-amazon.com/images/M/MV5BNTM1NjYyNTY5OV5BMl5BanBnXkFtZTcwMjgwNTMzMQ@@._V1_SX300.jpg	2006
1560	2021-01-15 22:50:09.173917+00	2021-01-15 22:50:09.173917+00	Taxi Driver	113	Martin Scorsese	Diahnne Abbott, Frank Adu, Victor Argo, Gino Ardito	A mentally unstable Vietnam War veteran works as a night-time taxi driver in New York City where the perceived decadence and sleaze feeds his urge for violent action, attempting to save a preadolescent prostitute in the process.	https://images-na.ssl-images-amazon.com/images/M/MV5BNGQxNDgzZWQtZTNjNi00M2RkLWExZmEtNmE1NjEyZDEwMzA5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	1976
1561	2021-01-15 22:50:09.198695+00	2021-01-15 22:50:09.198695+00	No Country for Old Men	122	Ethan Coen, Joel Coen	Tommy Lee Jones, Javier Bardem, Josh Brolin, Woody Harrelson	Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_SX300.jpg	2007
1562	2021-01-15 22:50:09.240441+00	2021-01-15 22:50:09.240441+00	Planet 51	91	Jorge Blanco, Javier Abad, Marcos Martínez	Jessica Biel, John Cleese, Gary Oldman, Dwayne Johnson	An alien civilization is invaded by Astronaut Chuck Baker, who believes that the planet was uninhabited. Wanted by the military, Baker must get back to his ship before it goes into orbit without him.	http://ia.media-imdb.com/images/M/MV5BMTUyOTAyNTA5Ml5BMl5BanBnXkFtZTcwODU2OTM0Mg@@._V1_SX300.jpg	2009
1563	2021-01-15 22:50:09.273768+00	2021-01-15 22:50:09.273768+00	Looper	119	Rian Johnson	Joseph Gordon-Levitt, Bruce Willis, Emily Blunt, Paul Dano	In 2074, when the mob wants to get rid of someone, the target is sent into the past, where a hired gun awaits - someone like Joe - who one day learns the mob wants to undefinedclose the loopundefined by sending back Joeundefineds future self for assassination.	http://ia.media-imdb.com/images/M/MV5BMTY3NTY0MjEwNV5BMl5BanBnXkFtZTcwNTE3NDA1OA@@._V1_SX300.jpg	2012
1564	2021-01-15 22:50:09.448978+00	2021-01-15 22:50:09.448978+00	Corpse Bride	77	Tim Burton, Mike Johnson	Johnny Depp, Helena Bonham Carter, Emily Watson, Tracey Ullman	When a shy groom practices his wedding vows in the inadvertent presence of a deceased young woman, she rises from the grave assuming he has married her.	http://ia.media-imdb.com/images/M/MV5BMTk1MTY1NjU4MF5BMl5BanBnXkFtZTcwNjIzMTEzMw@@._V1_SX300.jpg	2005
1565	2021-01-15 22:50:09.540445+00	2021-01-15 22:50:09.540445+00	The Third Man	93	Carol Reed	Joseph Cotten, Alida Valli, Orson Welles, Trevor Howard	Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjMwNzMzMTQ0Ml5BMl5BanBnXkFtZTgwNjExMzUwNjE@._V1_SX300.jpg	1949
1566	2021-01-15 22:50:09.582073+00	2021-01-15 22:50:09.582073+00	The Beach	119	Danny Boyle	Leonardo DiCaprio, Daniel York, Patcharawan Patarakijjanon, Virginie Ledoyen	Twenty-something Richard travels to Thailand and finds himself in possession of a strange map. Rumours state that it leads to a solitary beach paradise, a tropical bliss - excited and intrigued, he sets out to find it.	https://images-na.ssl-images-amazon.com/images/M/MV5BN2ViYTFiZmUtOTIxZi00YzIxLWEyMzUtYjQwZGNjMjNhY2IwXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	2000
1567	2021-01-15 22:50:09.623722+00	2021-01-15 22:50:09.623722+00	Scarface	170	Brian De Palma	Al Pacino, Steven Bauer, Michelle Pfeiffer, Mary Elizabeth Mastrantonio	In Miami in 1980, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjAzOTM4MzEwNl5BMl5BanBnXkFtZTgwMzU1OTc1MDE@._V1_SX300.jpg	1983
1568	2021-01-15 22:50:09.648792+00	2021-01-15 22:50:09.648792+00	Sid and Nancy	112	Alex Cox	Gary Oldman, Chloe Webb, David Hayman, Debby Bishop	Morbid biographical story of Sid Vicious, bassist with British punk group the Sex Pistols, and his girlfriend Nancy Spungen. When the Sex Pistols break up after their fateful US tour, ...	https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjA5NzY4M15BMl5BanBnXkFtZTcwNjQ2NzI5NA@@._V1_SX300.jpg	1986
1569	2021-01-15 22:50:09.682183+00	2021-01-15 22:50:09.682183+00	Black Swan	108	Darren Aronofsky	Natalie Portman, Mila Kunis, Vincent Cassel, Barbara Hershey	A committed dancer wins the lead role in a production of Tchaikovskyundefineds Swan Lake only to find herself struggling to maintain her sanity.	https://images-na.ssl-images-amazon.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_SX300.jpg	2010
1570	2021-01-15 22:50:09.707383+00	2021-01-15 22:50:09.707383+00	Inception	148	Christopher Nolan	Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page, Tom Hardy	A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg	2010
1571	2021-01-15 22:50:09.749144+00	2021-01-15 22:50:09.749144+00	The Deer Hunter	183	Michael Cimino	Robert De Niro, John Cazale, John Savage, Christopher Walken	An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzYmRmZTQtYjk2NS00MDdlLTkxMDAtMTE2YTM2ZmNlMTBkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	1978
1572	2021-01-15 22:50:09.782173+00	2021-01-15 22:50:09.782173+00	Chasing Amy	113	Kevin Smith	Ethan Suplee, Ben Affleck, Scott Mosier, Jason Lee	Holden and Banky are comic book artists. Everythingundefineds going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out sheundefineds gay.	https://images-na.ssl-images-amazon.com/images/M/MV5BZDM3MTg2MGUtZDM0MC00NzMwLWE5NjItOWFjNjA2M2I4YzgxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	1997
1573	2021-01-15 22:50:09.815507+00	2021-01-15 22:50:09.815507+00	Django Unchained	165	Quentin Tarantino	Jamie Foxx, Christoph Waltz, Leonardo DiCaprio, Kerry Washington	With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.	http://ia.media-imdb.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX300.jpg	2012
1574	2021-01-15 22:50:09.848854+00	2021-01-15 22:50:09.848854+00	The Silence of the Lambs	118	Jonathan Demme	Jodie Foster, Lawrence A. Bonney, Kasi Lemmons, Lawrence T. Wrentz	A young F.B.I. cadet must confide in an incarcerated and manipulative killer to receive his help on catching another serial killer who skins his victims.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ2NzkzMDI4OF5BMl5BanBnXkFtZTcwMDA0NzE1NA@@._V1_SX300.jpg	1991
1575	2021-01-15 22:50:09.882219+00	2021-01-15 22:50:09.882219+00	American Beauty	122	Sam Mendes	Kevin Spacey, Annette Bening, Thora Birch, Wes Bentley	A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughterundefineds best friend.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjM4NTI5NzYyNV5BMl5BanBnXkFtZTgwNTkxNTYxMTE@._V1_SX300.jpg	1999
1576	2021-01-15 22:50:09.907232+00	2021-01-15 22:50:09.907232+00	Snatch	102	Guy Ritchie	Benicio Del Toro, Dennis Farina, Vinnie Jones, Brad Pitt	Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers, and supposedly Jewish jewelers fight to track down a priceless stolen diamond.	http://ia.media-imdb.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	2000
1577	2021-01-15 22:50:09.932153+00	2021-01-15 22:50:09.932153+00	Midnight Express	121	Alan Parker	Brad Davis, Irene Miracle, Bo Hopkins, Paolo Bonacelli	Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyMDA5MzkyOF5BMl5BanBnXkFtZTgwOTYwNTcxMTE@._V1_SX300.jpg	1978
1578	2021-01-15 22:50:09.965438+00	2021-01-15 22:50:09.965438+00	Pulp Fiction	154	Quentin Tarantino	Tim Roth, Amanda Plummer, Laura Lovelace, John Travolta	The lives of two mob hit men, a boxer, a gangsterundefineds wife, and a pair of diner bandits intertwine in four tales of violence and redemption.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_SX300.jpg	1994
1579	2021-01-15 22:50:10.007336+00	2021-01-15 22:50:10.007336+00	Lock, Stock and Two Smoking Barrels	107	Guy Ritchie	Jason Flemyng, Dexter Fletcher, Nick Moran, Jason Statham	A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	1998
1580	2021-01-15 22:50:10.032247+00	2021-01-15 22:50:10.032247+00	Lucky Number Slevin	110	Paul McGuigan	Josh Hartnett, Bruce Willis, Lucy Liu, Morgan Freeman	A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the cityundefineds most rival crime bosses: The Rabbi and The Boss. Slevin is under constant surveillance by relentless Detective Brikowski as well as the infamous assassin Goodkat and finds himself having to hatch his own ingenious plot to get them before they get him.	https://images-na.ssl-images-amazon.com/images/M/MV5BMzc1OTEwMTk4OF5BMl5BanBnXkFtZTcwMTEzMDQzMQ@@._V1_SX300.jpg	2006
1581	2021-01-15 22:50:10.065514+00	2021-01-15 22:50:10.065514+00	Rear Window	112	Alfred Hitchcock	James Stewart, Grace Kelly, Wendell Corey, Thelma Ritter	A wheelchair-bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.	https://images-na.ssl-images-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	1954
1582	2021-01-15 22:50:10.090712+00	2021-01-15 22:50:10.090712+00	Panundefineds Labyrinth	118	Guillermo del Toro	Ivana Baquero, Sergi López, Maribel Verdú, Doug Jones	In the falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.		2006
1583	2021-01-15 22:50:10.124108+00	2021-01-15 22:50:10.124108+00	Shutter Island	138	Martin Scorsese	Leonardo DiCaprio, Mark Ruffalo, Ben Kingsley, Max von Sydow	In 1954, a U.S. marshal investigates the disappearance of a murderess who escaped from a hospital for the criminally insane.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxMTIyNzMxMV5BMl5BanBnXkFtZTcwOTc4OTI3Mg@@._V1_SX300.jpg	2010
1584	2021-01-15 22:50:10.149026+00	2021-01-15 22:50:10.149026+00	Reservoir Dogs	99	Quentin Tarantino	Harvey Keitel, Tim Roth, Michael Madsen, Chris Penn	After a simple jewelry heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.	https://images-na.ssl-images-amazon.com/images/M/MV5BNjE5ZDJiZTQtOGE2YS00ZTc5LTk0OGUtOTg2NjdjZmVlYzE2XkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_SX300.jpg	1992
1585	2021-01-15 22:50:10.182285+00	2021-01-15 22:50:10.182285+00	The Shining	146	Stanley Kubrick	Jack Nicholson, Shelley Duvall, Danny Lloyd, Scatman Crothers	A family heads to an isolated hotel for the winter where an evil and spiritual presence influences the father into violence, while his psychic son sees horrific forebodings from the past and of the future.	http://ia.media-imdb.com/images/M/MV5BODMxMjE3NTA4Ml5BMl5BanBnXkFtZTgwNDc0NTIxMDE@._V1_SX300.jpg	1980
1586	2021-01-15 22:50:10.21572+00	2021-01-15 22:50:10.21572+00	Midnight in Paris	94	Woody Allen	Owen Wilson, Rachel McAdams, Kurt Fuller, Mimi Kennedy	While on a trip to Paris with his fiancéeundefineds family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s everyday at midnight.	http://ia.media-imdb.com/images/M/MV5BMTM4NjY1MDQwMl5BMl5BanBnXkFtZTcwNTI3Njg3NA@@._V1_SX300.jpg	2011
1587	2021-01-15 22:50:10.24894+00	2021-01-15 22:50:10.24894+00	Les Misérables	158	Tom Hooper	Hugh Jackman, Russell Crowe, Anne Hathaway, Amanda Seyfried	In 19th-century France, Jean Valjean, who for decades has been hunted by the ruthless policeman Javert after breaking parole, agrees to care for a factory workerundefineds daughter. The decision changes their lives forever.	http://ia.media-imdb.com/images/M/MV5BMTQ4NDI3NDg4M15BMl5BanBnXkFtZTcwMjY5OTI1OA@@._V1_SX300.jpg	2012
1588	2021-01-15 22:50:10.315633+00	2021-01-15 22:50:10.315633+00	L.A. Confidential	138	Curtis Hanson	Kevin Spacey, Russell Crowe, Guy Pearce, James Cromwell	As corruption grows in 1950s LA, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.	https://images-na.ssl-images-amazon.com/images/M/MV5BNWEwNDhhNWUtYWMzNi00ZTNhLWFiZDAtMjBjZmJhMTU0ZTY2XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	1997
1589	2021-01-15 22:50:10.357788+00	2021-01-15 22:50:10.357788+00	Moneyball	133	Bennett Miller	Brad Pitt, Jonah Hill, Philip Seymour Hoffman, Robin Wright	Oakland Aundefineds general manager Billy Beaneundefineds successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_SX300.jpg	2011
1590	2021-01-15 22:50:10.399068+00	2021-01-15 22:50:10.399068+00	The Hangover	100	Todd Phillips	Bradley Cooper, Ed Helms, Zach Galifianakis, Justin Bartha	Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTU1MDA1MTYwMF5BMl5BanBnXkFtZTcwMDcxMzA1Mg@@._V1_SX300.jpg	2009
1591	2021-01-15 22:50:10.416404+00	2021-01-15 22:50:10.416404+00	The Great Beauty	141	Paolo Sorrentino	Toni Servillo, Carlo Verdone, Sabrina Ferilli, Carlo Buccirosso	Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ0ODg1OTQ2Nl5BMl5BanBnXkFtZTgwNTc2MDY1MDE@._V1_SX300.jpg	2013
1592	2021-01-15 22:50:10.432435+00	2021-01-15 22:50:10.432435+00	Gran Torino	116	Clint Eastwood	Clint Eastwood, Christopher Carley, Bee Vang, Ahney Her	Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, a Hmong teenager who tried to steal Kowalskiundefineds prized possession: a 1972 Gran Torino.	http://ia.media-imdb.com/images/M/MV5BMTQyMTczMTAxMl5BMl5BanBnXkFtZTcwOTc1ODE0Mg@@._V1_SX300.jpg	2008
1593	2021-01-15 22:50:10.449445+00	2021-01-15 22:50:10.449445+00	Mary and Max	92	Adam Elliot	Toni Collette, Philip Seymour Hoffman, Barry Humphries, Eric Bana	A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ1NDIyNTA1Nl5BMl5BanBnXkFtZTcwMjc2Njk3OA@@._V1_SX300.jpg	2009
1594	2021-01-15 22:50:10.484939+00	2021-01-15 22:50:10.484939+00	Flight	138	Robert Zemeckis	Nadine Velazquez, Denzel Washington, Carter Cabassa, Adam C. Edwards	An airline pilot saves almost all his passengers on his malfunctioning airliner which eventually crashed, but an investigation into the accident reveals something troubling.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMjI1OTMxNl5BMl5BanBnXkFtZTcwNjc3NTY1OA@@._V1_SX300.jpg	2012
1595	2021-01-15 22:50:10.507737+00	2021-01-15 22:50:10.507737+00	One Flew Over the Cuckooundefineds Nest	133	Milos Forman	Michael Berryman, Peter Brocco, Dean R. Brooks, Alonzo Brown	A criminal pleads insanity after getting into trouble again and once in the mental institution rebels against the oppressive nurse and rallies up the scared patients.	https://images-na.ssl-images-amazon.com/images/M/MV5BYmJkODkwOTItZThjZC00MTE0LWIxNzQtYTM3MmQwMGI1OWFiXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg	1975
1596	2021-01-15 22:50:10.524345+00	2021-01-15 22:50:10.524345+00	Requiem for a Dream	102	Darren Aronofsky	Ellen Burstyn, Jared Leto, Jennifer Connelly, Marlon Wayans	The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTkzODMzODYwOF5BMl5BanBnXkFtZTcwODM2NjA2NQ@@._V1_SX300.jpg	2000
1597	2021-01-15 22:50:10.540891+00	2021-01-15 22:50:10.540891+00	The Truman Show	103	Peter Weir	Jim Carrey, Laura Linney, Noah Emmerich, Natascha McElhone	An insurance salesman/adjuster discovers his entire life is actually a television show.	https://images-na.ssl-images-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	1998
1598	2021-01-15 22:50:10.574496+00	2021-01-15 22:50:10.574496+00	The Artist	100	Michel Hazanavicius	Jean Dujardin, Bérénice Bejo, John Goodman, James Cromwell	A silent movie star meets a young dancer, but the arrival of talking pictures sends their careers in opposite directions.	https://images-na.ssl-images-amazon.com/images/M/MV5BMzk0NzQxMTM0OV5BMl5BanBnXkFtZTcwMzU4MDYyNQ@@._V1_SX300.jpg	2011
1599	2021-01-15 22:50:10.607502+00	2021-01-15 22:50:10.607502+00	Forrest Gump	142	Robert Zemeckis	Tom Hanks, Rebecca Williams, Sally Field, Michael Conner Humphreys	Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.	https://images-na.ssl-images-amazon.com/images/M/MV5BYThjM2MwZGMtMzg3Ny00NGRkLWE4M2EtYTBiNWMzOTY0YTI4XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg	1994
1600	2021-01-15 22:50:10.632588+00	2021-01-15 22:50:10.632588+00	The Hobbit: The Desolation of Smaug	161	Peter Jackson	Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott	The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.	https://images-na.ssl-images-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_SX300.jpg	2013
1601	2021-01-15 22:50:10.657883+00	2021-01-15 22:50:10.657883+00	Vicky Cristina Barcelona	96	Woody Allen	Rebecca Hall, Scarlett Johansson, Christopher Evan Welch, Chris Messina	Two girlfriends on a summer holiday in Spain become enamored with the same painter, unaware that his ex-wife, with whom he has a tempestuous relationship, is about to re-enter the picture.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2NDQ4MTg2MV5BMl5BanBnXkFtZTcwNDUzNjU3MQ@@._V1_SX300.jpg	2008
1602	2021-01-15 22:50:10.682687+00	2021-01-15 22:50:10.682687+00	Slumdog Millionaire	120	Danny Boyle, Loveleen Tandan	Dev Patel, Saurabh Shukla, Anil Kapoor, Rajendranath Zutshi	A Mumbai teen reflects on his upbringing in the slums when he is accused of cheating on the Indian Version of undefinedWho Wants to be a Millionaire?undefined	http://ia.media-imdb.com/images/M/MV5BMTU2NTA5NzI0N15BMl5BanBnXkFtZTcwMjUxMjYxMg@@._V1_SX300.jpg	2008
1603	2021-01-15 22:50:10.707509+00	2021-01-15 22:50:10.707509+00	Lost in Translation	101	Sofia Coppola	Scarlett Johansson, Bill Murray, Akiko Takeshita, Kazuyoshi Minamimagoe	A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_SX300.jpg	2003
1604	2021-01-15 22:50:10.724172+00	2021-01-15 22:50:10.724172+00	Match Point	119	Woody Allen	Jonathan Rhys Meyers, Alexander Armstrong, Paul Kaye, Matthew Goode	At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTMzNzY4MzE5NF5BMl5BanBnXkFtZTcwMzQ1MDMzMQ@@._V1_SX300.jpg	2005
1605	2021-01-15 22:50:10.757638+00	2021-01-15 22:50:10.757638+00	Psycho	109	Alfred Hitchcock	Anthony Perkins, Vera Miles, John Gavin, Janet Leigh	A Phoenix secretary embezzles $40,000 from her employerundefineds client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.	https://images-na.ssl-images-amazon.com/images/M/MV5BMDI3OWRmOTEtOWJhYi00N2JkLTgwNGItMjdkN2U0NjFiZTYwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	1960
1606	2021-01-15 22:50:10.790975+00	2021-01-15 22:50:10.790975+00	North by Northwest	136	Alfred Hitchcock	Cary Grant, Eva Marie Saint, James Mason, Jessie Royce Landis	A hapless New York advertising executive is mistaken for a government agent by a group of foreign spies, and is pursued across the country while he looks for a way to survive.	http://ia.media-imdb.com/images/M/MV5BMjQwMTQ0MzgwNl5BMl5BanBnXkFtZTgwNjc4ODE4MzE@._V1_SX300.jpg	1959
1607	2021-01-15 22:50:10.825004+00	2021-01-15 22:50:10.825004+00	Madagascar: Escape 2 Africa	89	Eric Darnell, Tom McGrath	Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith	The animals try to fly back to New York City, but crash-land on an African wildlife refuge, where Alex is reunited with his parents.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjExMDA4NDcwMl5BMl5BanBnXkFtZTcwODAxNTQ3MQ@@._V1_SX300.jpg	2008
1608	2021-01-15 22:50:10.857669+00	2021-01-15 22:50:10.857669+00	Despicable Me 2	98	Pierre Coffin, Chris Renaud	Steve Carell, Kristen Wiig, Benjamin Bratt, Miranda Cosgrove	When Gru, the worldundefineds most super-bad turned super-dad has been recruited by a team of officials to stop lethal muscle and a host of Gruundefineds own, He has to fight back with new gadgetry, cars, and more minion madness.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjExNjAyNTcyMF5BMl5BanBnXkFtZTgwODQzMjQ3MDE@._V1_SX300.jpg	2013
1609	2021-01-15 22:50:10.890948+00	2021-01-15 22:50:10.890948+00	Downfall	156	Oliver Hirschbiegel	Bruno Ganz, Alexandra Maria Lara, Corinna Harfouch, Ulrich Matthes	Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictatorundefineds final days in his Berlin bunker at the end of WWII.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM1OTI1MjE2Nl5BMl5BanBnXkFtZTcwMTEwMzc4NA@@._V1_SX300.jpg	2004
1610	2021-01-15 22:50:10.932721+00	2021-01-15 22:50:10.932721+00	Madagascar	86	Eric Darnell, Tom McGrath	Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith	Spoiled by their upbringing with no idea what wild life is really like, four animals from New York Central Zoo escape, unwittingly assisted by four absconding penguins, and find themselves in Madagascar, among a bunch of merry lemurs	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NDUwMzQxMF5BMl5BanBnXkFtZTcwMDgwNjgyMQ@@._V1_SX300.jpg	2005
1611	2021-01-15 22:50:10.966019+00	2021-01-15 22:50:10.966019+00	Madagascar 3: Europeundefineds Most Wanted	93	Eric Darnell, Tom McGrath, Conrad Vernon	Ben Stiller, Chris Rock, David Schwimmer, Jada Pinkett Smith	Alex, Marty, Gloria and Melman are still fighting to get home to their beloved Big Apple. Their journey takes them through Europe where they find the perfect cover: a traveling circus, which they reinvent - Madagascar style.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2MTIzNzk2MF5BMl5BanBnXkFtZTcwMDcwMzQxNw@@._V1_SX300.jpg	2012
1612	2021-01-15 22:50:10.999291+00	2021-01-15 22:50:10.999291+00	God Bless America	105	Bobcat Goldthwait	Joel Murray, Tara Lynne Barr, Melinda Page Hamilton, Mackenzie Brooke Smith	On a mission to rid society of its most repellent citizens, terminally ill Frank makes an unlikely accomplice in 16-year-old Roxy.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMTc1MzA4NF5BMl5BanBnXkFtZTcwNzQwMTgzNw@@._V1_SX300.jpg	2011
1613	2021-01-15 22:50:11.024532+00	2021-01-15 22:50:11.024532+00	The Social Network	120	David Fincher	Jesse Eisenberg, Rooney Mara, Bryan Barter, Dustin Fitzsimons	Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, but is later sued by two brothers who claimed he stole their idea, and the co-founder who was later squeezed out of the business.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2ODk0NDAwMF5BMl5BanBnXkFtZTcwNTM1MDc2Mw@@._V1_SX300.jpg	2010
1614	2021-01-15 22:50:11.049256+00	2021-01-15 22:50:11.049256+00	The Pianist	150	Roman Polanski	Adrien Brody, Emilia Fox, Michal Zebrowski, Ed Stoppard	A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.	http://ia.media-imdb.com/images/M/MV5BMTc4OTkyOTA3OF5BMl5BanBnXkFtZTYwMDIxNjk5._V1_SX300.jpg	2002
1615	2021-01-15 22:50:11.091098+00	2021-01-15 22:50:11.091098+00	Alive	120	Frank Marshall	Ethan Hawke, Vincent Spano, Josh Hamilton, Bruce Ramsay	Uruguayan rugby team stranded in the snow swept Andes are forced to use desperate measures to survive after a plane crash.		1993
1616	2021-01-15 22:50:11.124421+00	2021-01-15 22:50:11.124421+00	Casablanca	102	Michael Curtiz	Humphrey Bogart, Ingrid Bergman, Paul Henreid, Claude Rains	In Casablanca, Morocco in December 1941, a cynical American expatriate meets a former lover, with unforeseen complications.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjQwNDYyNTk2N15BMl5BanBnXkFtZTgwMjQ0OTMyMjE@._V1_SX300.jpg	1942
1617	2021-01-15 22:50:11.157786+00	2021-01-15 22:50:11.157786+00	American Gangster	157	Ridley Scott	Denzel Washington, Russell Crowe, Chiwetel Ejiofor, Josh Brolin	In 1970s America, a detective works to bring down the drug empire of Frank Lucas, a heroin kingpin from Manhattan, who is smuggling the drug into the country from the Far East.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTkyNzY5MDA5MV5BMl5BanBnXkFtZTcwMjg4MzI3MQ@@._V1_SX300.jpg	2007
1618	2021-01-15 22:50:11.191355+00	2021-01-15 22:50:11.191355+00	Catch Me If You Can	141	Steven Spielberg	Leonardo DiCaprio, Tom Hanks, Christopher Walken, Martin Sheen	The true story of Frank Abagnale Jr. who, before his 19th birthday, successfully conned millions of dollarsundefined worth of checks as a Pan Am pilot, doctor, and legal prosecutor.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_SX300.jpg	2002
1619	2021-01-15 22:50:11.224429+00	2021-01-15 22:50:11.224429+00	American History X	119	Tony Kaye	Edward Norton, Edward Furlong, Beverly DundefinedAngelo, Jennifer Lien	A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.	https://images-na.ssl-images-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg	1998
1620	2021-01-15 22:50:11.249457+00	2021-01-15 22:50:11.249457+00	Casino	178	Martin Scorsese	Robert De Niro, Sharon Stone, Joe Pesci, James Woods	Greed, deception, money, power, and murder occur between two best friends, a mafia underboss and a casino owner, for a trophy wife over a gambling empire.	http://ia.media-imdb.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg	1995
1621	2021-01-15 22:50:11.299506+00	2021-01-15 22:50:11.299506+00	Pirates of the Caribbean: At Worldundefineds End	169	Gore Verbinski	Johnny Depp, Geoffrey Rush, Orlando Bloom, Keira Knightley	Captain Barbossa, Will Turner and Elizabeth Swann must sail off the edge of the map, navigate treachery and betrayal, find Jack Sparrow, and make their final alliances for one last decisive battle.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyNjkxNzEyMl5BMl5BanBnXkFtZTYwMjc3MDE3._V1_SX300.jpg	2007
1622	2021-01-15 22:50:11.34113+00	2021-01-15 22:50:11.34113+00	Pirates of the Caribbean: On Stranger Tides	136	Rob Marshall	Johnny Depp, Penélope Cruz, Geoffrey Rush, Ian McShane	Jack Sparrow and Barbossa embark on a quest to find the elusive fountain of youth, only to discover that Blackbeard and his daughter are after it too.	http://ia.media-imdb.com/images/M/MV5BMjE5MjkwODI3Nl5BMl5BanBnXkFtZTcwNjcwMDk4NA@@._V1_SX300.jpg	2011
1623	2021-01-15 22:50:11.374395+00	2021-01-15 22:50:11.374395+00	Crash	112	Paul Haggis	Karina Arroyave, Dato Bakhtadze, Sandra Bullock, Don Cheadle	Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.	https://images-na.ssl-images-amazon.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_SX300.jpg	2004
1624	2021-01-15 22:50:11.407768+00	2021-01-15 22:50:11.407768+00	Pirates of the Caribbean: The Curse of the Black Pearl	143	Gore Verbinski	Johnny Depp, Geoffrey Rush, Orlando Bloom, Keira Knightley	Blacksmith Will Turner teams up with eccentric pirate undefinedCaptainundefined Jack Sparrow to save his love, the governorundefineds daughter, from Jackundefineds former pirate allies, who are now undead.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjAyNDM4MTc2N15BMl5BanBnXkFtZTYwNDk0Mjc3._V1_SX300.jpg	2003
1625	2021-01-15 22:50:11.441147+00	2021-01-15 22:50:11.441147+00	The Lord of the Rings: The Return of the King	201	Peter Jackson	Noel Appleby, Ali Astin, Sean Astin, David Aston	Gandalf and Aragorn lead the World of Men against Sauronundefineds army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjE4MjA1NTAyMV5BMl5BanBnXkFtZTcwNzM1NDQyMQ@@._V1_SX300.jpg	2003
1626	2021-01-15 22:50:11.474534+00	2021-01-15 22:50:11.474534+00	Oldboy	120	Chan-wook Park	Min-sik Choi, Ji-tae Yu, Hye-jeong Kang, Dae-han Ji	After being kidnapped and imprisoned for 15 years, Oh Dae-Su is released, only to find that he must find his captor in 5 days.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_SX300.jpg	2003
1627	2021-01-15 22:50:11.507847+00	2021-01-15 22:50:11.507847+00	Chocolat	121	Lasse Hallström	Alfred Molina, Carrie-Anne Moss, Aurelien Parent Koenig, Antonio Gil	A woman and her daughter open a chocolate shop in a small French village that shakes up the rigid morality of the community.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA4MDI3NTQwMV5BMl5BanBnXkFtZTcwNjIzNDcyMQ@@._V1_SX300.jpg	2000
1628	2021-01-15 22:50:11.541325+00	2021-01-15 22:50:11.541325+00	Casino Royale	144	Martin Campbell	Daniel Craig, Eva Green, Mads Mikkelsen, Judi Dench	Armed with a licence to kill, Secret Agent James Bond sets out on his first mission as 007 and must defeat a weapons dealer in a high stakes game of poker at Casino Royale, but things are not what they seem.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM5MjI4NDExNF5BMl5BanBnXkFtZTcwMDM1MjMzMQ@@._V1_SX300.jpg	2006
1629	2021-01-15 22:50:11.574564+00	2021-01-15 22:50:11.574564+00	WALL·E	98	Andrew Stanton	Ben Burtt, Elissa Knight, Jeff Garlin, Fred Willard	In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTczOTA3MzY2N15BMl5BanBnXkFtZTcwOTYwNjE2MQ@@._V1_SX300.jpg	2008
1630	2021-01-15 22:50:11.608138+00	2021-01-15 22:50:11.608138+00	The Wolf of Wall Street	180	Martin Scorsese	Leonardo DiCaprio, Jonah Hill, Margot Robbie, Matthew McConaughey	Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg	2013
1631	2021-01-15 22:50:11.641548+00	2021-01-15 22:50:11.641548+00	Hellboy II: The Golden Army	120	Guillermo del Toro	Ron Perlman, Selma Blair, Doug Jones, John Alexander	The mythical world starts a rebellion against humanity in order to rule the Earth, so Hellboy and his team must save the world from the rebellious creatures.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5NzgyMjc2Nl5BMl5BanBnXkFtZTcwOTU3MDI3MQ@@._V1_SX300.jpg	2008
1632	2021-01-15 22:50:11.6746+00	2021-01-15 22:50:11.6746+00	Sunset Boulevard	110	Billy Wilder	William Holden, Gloria Swanson, Erich von Stroheim, Nancy Olson	A hack screenwriter writes a screenplay for a former silent-film star who has faded into Hollywood obscurity.	http://ia.media-imdb.com/images/M/MV5BMTc3NDYzODAwNV5BMl5BanBnXkFtZTgwODg1MTczMTE@._V1_SX300.jpg	1950
1633	2021-01-15 22:50:11.70801+00	2021-01-15 22:50:11.70801+00	I-See-You.Com	92	Eric Steven Stahl	Beau Bridges, Rosanna Arquette, Mathew Botuchis, Shiri Appleby	A 17-year-old boy buys mini-cameras and displays the footage online at I-see-you.com. The cash rolls in as the site becomes a major hit. Everyone seems to have fun until it all comes crashing down....	https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMDUzNzA5Nl5BMl5BanBnXkFtZTcwMjQ2Njk3MQ@@._V1_SX300.jpg	2006
1634	2021-01-15 22:50:11.724594+00	2021-01-15 22:50:11.724594+00	The Grand Budapest Hotel	99	Wes Anderson	Ralph Fiennes, F. Murray Abraham, Mathieu Amalric, Adrien Brody	The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.	https://images-na.ssl-images-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_SX300.jpg	2014
1635	2021-01-15 22:50:11.757989+00	2021-01-15 22:50:11.757989+00	The Hitchhikerundefineds Guide to the Galaxy	109	Garth Jennings	Bill Bailey, Anna Chancellor, Warwick Davis, Yasiin Bey	Mere seconds before the Earth is to be demolished by an alien construction crew, journeyman Arthur Dent is swept off the planet by his friend Ford Prefect, a researcher penning a new edition of undefinedThe Hitchhikerundefineds Guide to the Galaxy.undefined	http://ia.media-imdb.com/images/M/MV5BMjEwOTk4NjU2MF5BMl5BanBnXkFtZTYwMDA3NzI3._V1_SX300.jpg	2005
1636	2021-01-15 22:50:11.791364+00	2021-01-15 22:50:11.791364+00	Once Upon a Time in America	229	Sergio Leone	Robert De Niro, James Woods, Elizabeth McGovern, Joe Pesci	A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.	https://images-na.ssl-images-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg	1984
1637	2021-01-15 22:50:11.816375+00	2021-01-15 22:50:11.816375+00	Oblivion	124	Joseph Kosinski	Tom Cruise, Morgan Freeman, Olga Kurylenko, Andrea Riseborough	A veteran assigned to extract Earthundefineds remaining resources begins to question what he knows about his mission and himself.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQwMDY0MTA4MF5BMl5BanBnXkFtZTcwNzI3MDgxOQ@@._V1_SX300.jpg	2013
1638	2021-01-15 22:50:11.849736+00	2021-01-15 22:50:11.849736+00	V for Vendetta	132	James McTeigue	Natalie Portman, Hugo Weaving, Stephen Rea, Stephen Fry	In a future British tyranny, a shadowy freedom fighter, known only by the alias of undefinedVundefined, plots to overthrow it with the help of a young woman.	https://images-na.ssl-images-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_SX300.jpg	2005
1639	2021-01-15 22:50:11.918303+00	2021-01-15 22:50:11.918303+00	Gattaca	106	Andrew Niccol	Ethan Hawke, Uma Thurman, Gore Vidal, Xander Berkeley	A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.	https://images-na.ssl-images-amazon.com/images/M/MV5BNDQxOTc0MzMtZmRlOS00OWQ5LWI2ZDctOTAwNmMwOTYxYzlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	1997
1640	2021-01-15 22:50:12.001737+00	2021-01-15 22:50:12.001737+00	Silver Linings Playbook	122	David O. Russell	Bradley Cooper, Jennifer Lawrence, Robert De Niro, Jacki Weaver	After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_SX300.jpg	2012
1641	2021-01-15 22:50:12.035157+00	2021-01-15 22:50:12.035157+00	Alice in Wonderland	108	Tim Burton	Johnny Depp, Mia Wasikowska, Helena Bonham Carter, Anne Hathaway	Nineteen-year-old Alice returns to the magical world from her childhood adventure, where she reunites with her old friends and learns of her true destiny: to end the Red Queenundefineds reign of terror.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTMwNjAxMTc0Nl5BMl5BanBnXkFtZTcwODc3ODk5Mg@@._V1_SX300.jpg	2010
1642	2021-01-15 22:50:12.068405+00	2021-01-15 22:50:12.068405+00	Gandhi	191	Richard Attenborough	Ben Kingsley, Candice Bergen, Edward Fox, John Gielgud	Gandhiundefineds character is fully explained as a man of nonviolence. Through his patience, he is able to drive the British out of the subcontinent. And the stubborn nature of Jinnah and his commitment towards Pakistan is portrayed.	http://ia.media-imdb.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg	1982
1643	2021-01-15 22:50:12.093457+00	2021-01-15 22:50:12.093457+00	Pacific Rim	131	Guillermo del Toro	Charlie Hunnam, Diego Klattenhoff, Idris Elba, Rinko Kikuchi	As a war between humankind and monstrous sea creatures wages on, a former pilot and a trainee are paired up to drive a seemingly obsolete special weapon in a desperate effort to save the world from the apocalypse.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3MTI5NjQ4Nl5BMl5BanBnXkFtZTcwOTU1OTU0OQ@@._V1_SX300.jpg	2013
1644	2021-01-15 22:50:12.135151+00	2021-01-15 22:50:12.135151+00	Kiss Kiss Bang Bang	103	Shane Black	Robert Downey Jr., Val Kilmer, Michelle Monaghan, Corbin Bernsen	A murder mystery brings together a private eye, a struggling actress, and a thief masquerading as an actor.	http://ia.media-imdb.com/images/M/MV5BMTY5NDExMDA3M15BMl5BanBnXkFtZTYwNTc2MzA3._V1_SX300.jpg	2005
1645	2021-01-15 22:50:12.168468+00	2021-01-15 22:50:12.168468+00	The Quiet American	101	Phillip Noyce	Michael Caine, Brendan Fraser, Do Thi Hai Yen, Rade Serbedzija	An older British reporter vies with a young U.S. doctor for the affections of a beautiful Vietnamese woman.	http://ia.media-imdb.com/images/M/MV5BMjE2NTUxNTE3Nl5BMl5BanBnXkFtZTYwNTczMTg5._V1_SX300.jpg	2002
1646	2021-01-15 22:50:12.201819+00	2021-01-15 22:50:12.201819+00	Cloud Atlas	172	Tom Tykwer, Lana Wachowski, Lilly Wachowski	Tom Hanks, Halle Berry, Jim Broadbent, Hugo Weaving	An exploration of how the actions of individual lives impact one another in the past, present and future, as one soul is shaped from a killer into a hero, and an act of kindness ripples across centuries to inspire a revolution.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTczMTgxMjc4NF5BMl5BanBnXkFtZTcwNjM5MTA2OA@@._V1_SX300.jpg	2012
1647	2021-01-15 22:50:12.226774+00	2021-01-15 22:50:12.226774+00	The Impossible	114	J.A. Bayona	Naomi Watts, Ewan McGregor, Tom Holland, Samuel Joslin	The story of a tourist family in Thailand caught in the destruction and chaotic aftermath of the 2004 Indian Ocean tsunami.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA5NTA3NzQ5Nl5BMl5BanBnXkFtZTcwOTYxNjY0OA@@._V1_SX300.jpg	2012
1648	2021-01-15 22:50:12.251742+00	2021-01-15 22:50:12.251742+00	All Quiet on the Western Front	136	Lewis Milestone	Louis Wolheim, Lew Ayres, John Wray, Arnold Lucy	A young soldier faces profound disillusionment in the soul-destroying horror of World War I.	https://images-na.ssl-images-amazon.com/images/M/MV5BNTM5OTg2NDY1NF5BMl5BanBnXkFtZTcwNTQ4MTMwNw@@._V1_SX300.jpg	1930
1649	2021-01-15 22:50:12.27748+00	2021-01-15 22:50:12.27748+00	The English Patient	162	Anthony Minghella	Ralph Fiennes, Juliette Binoche, Willem Dafoe, Kristin Scott Thomas	At the close of WWII, a young nurse tends to a badly-burned plane crash victim. His past is shown in flashbacks, revealing an involvement in a fateful love affair.	https://images-na.ssl-images-amazon.com/images/M/MV5BNDg2OTcxNDE0OF5BMl5BanBnXkFtZTgwOTg2MDM0MDE@._V1_SX300.jpg	1996
1650	2021-01-15 22:50:12.318606+00	2021-01-15 22:50:12.318606+00	Dallas Buyers Club	117	Jean-Marc Vallée	Matthew McConaughey, Jennifer Garner, Jared Leto, Denis OundefinedHare	In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTYwMTA4MzgyNF5BMl5BanBnXkFtZTgwMjEyMjE0MDE@._V1_SX300.jpg	2013
1651	2021-01-15 22:50:12.344155+00	2021-01-15 22:50:12.344155+00	Frida	123	Julie Taymor	Salma Hayek, Mía Maestro, Alfred Molina, Antonio Banderas	A biography of artist Frida Kahlo, who channeled the pain of a crippling injury and her tempestuous marriage into her work.	http://ia.media-imdb.com/images/M/MV5BMTMyODUyMDY1OV5BMl5BanBnXkFtZTYwMDA2OTU3._V1_SX300.jpg	2002
1652	2021-01-15 22:50:12.376883+00	2021-01-15 22:50:12.376883+00	Before Sunrise	105	Richard Linklater	Ethan Hawke, Julie Delpy, Andrea Eckert, Hanno Pöschl	A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTQyMTM3MTQxMl5BMl5BanBnXkFtZTcwMDAzNjQ4Mg@@._V1_SX300.jpg	1995
1653	2021-01-15 22:50:12.402074+00	2021-01-15 22:50:12.402074+00	The Rum Diary	120	Bruce Robinson	Johnny Depp, Aaron Eckhart, Michael Rispoli, Amber Heard	American journalist Paul Kemp takes on a freelance job in Puerto Rico for a local newspaper during the 1960s and struggles to find a balance between island culture and the expatriates who live there.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM5ODA4MjYxM15BMl5BanBnXkFtZTcwMTM3NTE5Ng@@._V1_SX300.jpg	2011
1654	2021-01-15 22:50:12.435479+00	2021-01-15 22:50:12.435479+00	The Last Samurai	154	Edward Zwick	Ken Watanabe, Tom Cruise, William Atherton, Chad Lindberg	An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.	http://ia.media-imdb.com/images/M/MV5BMzkyNzQ1Mzc0NV5BMl5BanBnXkFtZTcwODg3MzUzMw@@._V1_SX300.jpg	2003
1655	2021-01-15 22:50:12.468633+00	2021-01-15 22:50:12.468633+00	Chinatown	130	Roman Polanski	Jack Nicholson, Faye Dunaway, John Huston, Perry Lopez	A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption and murder.	https://images-na.ssl-images-amazon.com/images/M/MV5BN2YyNDE5NzItMjAwNC00MGQxLTllNjktZGIzMWFkZjA3OWQ0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	1974
1656	2021-01-15 22:50:12.502162+00	2021-01-15 22:50:12.502162+00	Calvary	102	John Michael McDonagh	Brendan Gleeson, Chris OundefinedDowd, Kelly Reilly, Aidan Gillen	After he is threatened during a confession, a good-natured priest must battle the dark forces closing in around him.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTc3MjQ1MjE2M15BMl5BanBnXkFtZTgwNTMzNjE4MTE@._V1_SX300.jpg	2014
1657	2021-01-15 22:50:12.526908+00	2021-01-15 22:50:12.526908+00	Before Sunset	80	Richard Linklater	Ethan Hawke, Julie Delpy, Vernon Dobtcheff, Louise Lemoine Torrès	Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesseundefineds book tour.	http://ia.media-imdb.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_SX300.jpg	2004
1658	2021-01-15 22:50:12.551897+00	2021-01-15 22:50:12.551897+00	Spirited Away	125	Hayao Miyazaki	Rumi Hiiragi, Miyu Irino, Mari Natsuki, Takashi Naitô	During her familyundefineds move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjYxMDcyMzIzNl5BMl5BanBnXkFtZTYwNDg2MDU3._V1_SX300.jpg	2001
1659	2021-01-15 22:50:12.585344+00	2021-01-15 22:50:12.585344+00	Indochine	159	Régis Wargnier	Catherine Deneuve, Vincent Perez, Linh Dan Pham, Jean Yanne	This story is set in 1930, at the time when French colonial rule in Indochina is ending. A widowed French woman who works in the rubber fields, raises a Vietnamese princess as if she was ...	https://images-na.ssl-images-amazon.com/images/M/MV5BMTM1MTkzNzA3NF5BMl5BanBnXkFtZTYwNTI2MzU5._V1_SX300.jpg	1992
1660	2021-01-15 22:50:12.610499+00	2021-01-15 22:50:12.610499+00	Birdman or (The Unexpected Virtue of Ignorance)	119	Alejandro G. Iñárritu	Michael Keaton, Emma Stone, Kenny Chin, Jamahl Garrison-Lowe	Illustrated upon the progress of his latest Broadway play, a former popular actorundefineds struggle to cope with his current life as a wasted actor is shown.	https://images-na.ssl-images-amazon.com/images/M/MV5BODAzNDMxMzAxOV5BMl5BanBnXkFtZTgwMDMxMjA4MjE@._V1_SX300.jpg	2014
1661	2021-01-15 22:50:12.643776+00	2021-01-15 22:50:12.643776+00	Boyhood	165	Richard Linklater	Ellar Coltrane, Patricia Arquette, Elijah Smith, Lorelei Linklater	The life of Mason, from early childhood to his arrival at college.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTYzNDc2MDc0N15BMl5BanBnXkFtZTgwOTcwMDQ5MTE@._V1_SX300.jpg	2014
1662	2021-01-15 22:50:12.702183+00	2021-01-15 22:50:12.702183+00	12 Angry Men	96	Sidney Lumet	Martin Balsam, John Fiedler, Lee J. Cobb, E.G. Marshall	A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.	https://images-na.ssl-images-amazon.com/images/M/MV5BODQwOTc5MDM2N15BMl5BanBnXkFtZTcwODQxNTEzNA@@._V1_SX300.jpg	1957
1663	2021-01-15 22:50:12.727064+00	2021-01-15 22:50:12.727064+00	The Imitation Game	114	Morten Tyldum	Benedict Cumberbatch, Keira Knightley, Matthew Goode, Rory Kinnear	During World War II, mathematician Alan Turing tries to crack the enigma code with help from fellow mathematicians.	https://images-na.ssl-images-amazon.com/images/M/MV5BNDkwNTEyMzkzNl5BMl5BanBnXkFtZTgwNTAwNzk3MjE@._V1_SX300.jpg	2014
1664	2021-01-15 22:50:12.760309+00	2021-01-15 22:50:12.760309+00	Interstellar	169	Christopher Nolan	Ellen Burstyn, Matthew McConaughey, Mackenzie Foy, John Lithgow	A team of explorers travel through a wormhole in space in an attempt to ensure humanityundefineds survival.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjIxNTU4MzY4MF5BMl5BanBnXkFtZTgwMzM4ODI3MjE@._V1_SX300.jpg	2014
1665	2021-01-15 22:50:12.8356+00	2021-01-15 22:50:12.8356+00	Big Nothing	86	Jean-Baptiste Andrea	David Schwimmer, Simon Pegg, Alice Eve, Natascha McElhone	A frustrated, unemployed teacher joining forces with a scammer and his girlfriend in a blackmailing scheme.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY5NTc2NjYwOV5BMl5BanBnXkFtZTcwMzk5OTY0MQ@@._V1_SX300.jpg	2006
1666	2021-01-15 22:50:12.868775+00	2021-01-15 22:50:12.868775+00	Das Boot	149	Wolfgang Petersen	Jürgen Prochnow, Herbert Grönemeyer, Klaus Wennemann, Hubertus Bengsch	The claustrophobic world of a WWII German U-boat; boredom, filth, and sheer terror.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjE5Mzk5OTQ0Nl5BMl5BanBnXkFtZTYwNzUwMTQ5._V1_SX300.jpg	1981
1667	2021-01-15 22:50:12.902058+00	2021-01-15 22:50:12.902058+00	Shrek 2	93	Andrew Adamson, Kelly Asbury, Conrad Vernon	Mike Myers, Eddie Murphy, Cameron Diaz, Julie Andrews	Princess Fionaundefineds parents invite her and Shrek to dinner to celebrate her marriage. If only they knew the newlyweds were both ogres.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTk4MTMwNjI4M15BMl5BanBnXkFtZTcwMjExMzUyMQ@@._V1_SX300.jpg	2004
1668	2021-01-15 22:50:12.935394+00	2021-01-15 22:50:12.935394+00	Sin City	124	Frank Miller, Robert Rodriguez, Quentin Tarantino	Jessica Alba, Devon Aoki, Alexis Bledel, Powers Boothe	A film that explores the dark and miserable town, Basin City, and tells the story of three different people, all caught up in violent corruption.	https://images-na.ssl-images-amazon.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg	2005
1669	2021-01-15 22:50:12.960548+00	2021-01-15 22:50:12.960548+00	Nebraska	115	Alexander Payne	Bruce Dern, Will Forte, June Squibb, Bob Odenkirk	An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTU2Mjk2NDkyMl5BMl5BanBnXkFtZTgwNTk0NzcyMDE@._V1_SX300.jpg	2013
1670	2021-01-15 22:50:12.993785+00	2021-01-15 22:50:12.993785+00	Shrek	90	Andrew Adamson, Vicky Jenson	Mike Myers, Eddie Murphy, Cameron Diaz, John Lithgow	After his swamp is filled with magical creatures, an ogre agrees to rescue a princess for a villainous lord in order to get his land back.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTk2NTE1NTE0M15BMl5BanBnXkFtZTgwNjY4NTYxMTE@._V1_SX300.jpg	2001
1671	2021-01-15 22:50:13.027224+00	2021-01-15 22:50:13.027224+00	Mr. & Mrs. Smith	120	Doug Liman	Brad Pitt, Angelina Jolie, Vince Vaughn, Adam Brody	A bored married couple is surprised to learn that they are both assassins hired by competing agencies to kill each other.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxMzcxNzQzOF5BMl5BanBnXkFtZTcwMzQxNjUyMw@@._V1_SX300.jpg	2005
1672	2021-01-15 22:50:13.060438+00	2021-01-15 22:50:13.060438+00	Original Sin	116	Michael Cristofer	Antonio Banderas, Angelina Jolie, Thomas Jane, Jack Thompson	A woman along with her lover, plan to con a rich man by marrying him and on earning his trust running away with all his money. Everything goes as planned until she actually begins to fall in love with him.	https://images-na.ssl-images-amazon.com/images/M/MV5BODg3Mjg0MDY4M15BMl5BanBnXkFtZTcwNjY5MDQ2NA@@._V1_SX300.jpg	2001
1673	2021-01-15 22:50:13.093811+00	2021-01-15 22:50:13.093811+00	Shrek Forever After	93	Mike Mitchell	Mike Myers, Eddie Murphy, Cameron Diaz, Antonio Banderas	Rumpelstiltskin tricks a mid-life crisis burdened Shrek into allowing himself to be erased from existence and cast in a dark alternate timeline where Rumpel rules supreme.	http://ia.media-imdb.com/images/M/MV5BMTY0OTU1NzkxMl5BMl5BanBnXkFtZTcwMzI2NDUzMw@@._V1_SX300.jpg	2010
1674	2021-01-15 22:50:13.12716+00	2021-01-15 22:50:13.12716+00	Before Midnight	109	Richard Linklater	Ethan Hawke, Julie Delpy, Seamus Davey-Fitzpatrick, Jennifer Prior	We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.	http://ia.media-imdb.com/images/M/MV5BMjA5NzgxODE2NF5BMl5BanBnXkFtZTcwNTI1NTI0OQ@@._V1_SX300.jpg	2013
1675	2021-01-15 22:50:13.15226+00	2021-01-15 22:50:13.15226+00	Despicable Me	95	Pierre Coffin, Chris Renaud	Steve Carell, Jason Segel, Russell Brand, Julie Andrews	When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_SX300.jpg	2010
1676	2021-01-15 22:50:13.185475+00	2021-01-15 22:50:13.185475+00	Troy	163	Wolfgang Petersen	Julian Glover, Brian Cox, Nathan Jones, Adoni Maropis	An adaptation of Homerundefineds great epic, the film follows the assault on Troy by the united Greek forces and chronicles the fates of the men involved.	http://ia.media-imdb.com/images/M/MV5BMTk5MzU1MDMwMF5BMl5BanBnXkFtZTcwNjczODMzMw@@._V1_SX300.jpg	2004
1677	2021-01-15 22:50:13.202238+00	2021-01-15 22:50:13.202238+00	The Hobbit: An Unexpected Journey	169	Peter Jackson	Ian McKellen, Martin Freeman, Richard Armitage, Ken Stott	A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_SX300.jpg	2012
1678	2021-01-15 22:50:13.227231+00	2021-01-15 22:50:13.227231+00	The Great Gatsby	143	Baz Luhrmann	Lisa Adam, Frank Aldridge, Amitabh Bachchan, Steve Bisley	A writer and wall street trader, Nick, finds himself drawn to the past and lifestyle of his millionaire neighbor, Jay Gatsby.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTkxNTk1ODcxNl5BMl5BanBnXkFtZTcwMDI1OTMzOQ@@._V1_SX300.jpg	2013
1679	2021-01-15 22:50:13.252342+00	2021-01-15 22:50:13.252342+00	Ice Age	81	Chris Wedge, Carlos Saldanha	Ray Romano, John Leguizamo, Denis Leary, Goran Visnjic	Set during the Ice Age, a sabertooth tiger, a sloth, and a wooly mammoth find a lost human infant, and they try to return him to his tribe.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyNzI1ODA0MF5BMl5BanBnXkFtZTYwODIxODY3._V1_SX300.jpg	2002
1680	2021-01-15 22:50:13.30234+00	2021-01-15 22:50:13.30234+00	The Lord of the Rings: The Fellowship of the Ring	178	Peter Jackson	Alan Howard, Noel Appleby, Sean Astin, Sala Baker	A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle Earth from the Dark Lord Sauron.	https://images-na.ssl-images-amazon.com/images/M/MV5BNTEyMjAwMDU1OV5BMl5BanBnXkFtZTcwNDQyNTkxMw@@._V1_SX300.jpg	2001
1681	2021-01-15 22:50:13.344232+00	2021-01-15 22:50:13.344232+00	The Lord of the Rings: The Two Towers	179	Peter Jackson	Bruce Allpress, Sean Astin, John Bach, Sala Baker	While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauronundefineds new ally, Saruman, and his hordes of Isengard.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTAyNDU0NjY4NTheQTJeQWpwZ15BbWU2MDk4MTY2Nw@@._V1_SX300.jpg	2002
1682	2021-01-15 22:50:13.377329+00	2021-01-15 22:50:13.377329+00	Ex Machina	108	Alex Garland	Domhnall Gleeson, Corey Johnson, Oscar Isaac, Alicia Vikander	A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a breath-taking humanoid A.I.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTUxNzc0OTIxMV5BMl5BanBnXkFtZTgwNDI3NzU2NDE@._V1_SX300.jpg	2015
1683	2021-01-15 22:50:13.410673+00	2021-01-15 22:50:13.410673+00	The Theory of Everything	123	James Marsh	Eddie Redmayne, Felicity Jones, Tom Prior, Sophie Perry	A look at the relationship between the famous physicist Stephen Hawking and his wife.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTAwMTU4MDA3NDNeQTJeQWpwZ15BbWU4MDk4NTMxNTIx._V1_SX300.jpg	2014
1684	2021-01-15 22:50:13.444029+00	2021-01-15 22:50:13.444029+00	Shogun	60	N/A	Richard Chamberlain, Toshirô Mifune, Yôko Shimada, Furankî Sakai	A English navigator becomes both a player and pawn in the complex political games in feudal Japan.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1ODI4NzYxMl5BMl5BanBnXkFtZTcwNDA4MzUxMQ@@._V1_SX300.jpg	1980
1685	2021-01-15 22:50:13.477891+00	2021-01-15 22:50:13.477891+00	Spotlight	128	Tom McCarthy	Mark Ruffalo, Michael Keaton, Rachel McAdams, Liev Schreiber	The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_SX300.jpg	2015
1686	2021-01-15 22:50:13.510725+00	2021-01-15 22:50:13.510725+00	Vertigo	128	Alfred Hitchcock	James Stewart, Kim Novak, Barbara Bel Geddes, Tom Helmore	A San Francisco detective suffering from acrophobia investigates the strange activities of an old friendundefineds wife, all the while becoming dangerously obsessed with her.	http://ia.media-imdb.com/images/M/MV5BNzY0NzQyNzQzOF5BMl5BanBnXkFtZTcwMTgwNTk4OQ@@._V1_SX300.jpg	1958
1687	2021-01-15 22:50:13.544094+00	2021-01-15 22:50:13.544094+00	Whiplash	107	Damien Chazelle	Miles Teller, J.K. Simmons, Paul Reiser, Melissa Benoist	A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a studentundefineds potential.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTU4OTQ3MDUyMV5BMl5BanBnXkFtZTgwOTA2MjU0MjE@._V1_SX300.jpg	2014
1688	2021-01-15 22:50:13.569127+00	2021-01-15 22:50:13.569127+00	The Lives of Others	137	Florian Henckel von Donnersmarck	Martina Gedeck, Ulrich Mühe, Sebastian Koch, Ulrich Tukur	In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.	http://ia.media-imdb.com/images/M/MV5BNDUzNjYwNDYyNl5BMl5BanBnXkFtZTcwNjU3ODQ0MQ@@._V1_SX300.jpg	2006
1689	2021-01-15 22:50:13.594134+00	2021-01-15 22:50:13.594134+00	Hotel Rwanda	121	Terry George	Xolani Mali, Don Cheadle, Desmond Dube, Hakeem Kae-Kazim	Paul Rusesabagina was a hotel manager who housed over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTI2MzQyNTc1M15BMl5BanBnXkFtZTYwMjExNjc3._V1_SX300.jpg	2004
1690	2021-01-15 22:50:13.627423+00	2021-01-15 22:50:13.627423+00	The Martian	144	Ridley Scott	Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels	An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.	https://images-na.ssl-images-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SX300.jpg	2015
1691	2021-01-15 22:50:13.660754+00	2021-01-15 22:50:13.660754+00	To Kill a Mockingbird	129	Robert Mulligan	Gregory Peck, John Megna, Frank Overton, Rosemary Murphy	Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his kids against prejudice.	http://ia.media-imdb.com/images/M/MV5BMjA4MzI1NDY2Nl5BMl5BanBnXkFtZTcwMTcyODc5Mw@@._V1_SX300.jpg	1962
1692	2021-01-15 22:50:13.685898+00	2021-01-15 22:50:13.685898+00	The Hateful Eight	187	Quentin Tarantino	Samuel L. Jackson, Kurt Russell, Jennifer Jason Leigh, Walton Goggins	In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.	https://images-na.ssl-images-amazon.com/images/M/MV5BMjA1MTc1NTg5NV5BMl5BanBnXkFtZTgwOTM2MDEzNzE@._V1_SX300.jpg	2015
1693	2021-01-15 22:50:13.719039+00	2021-01-15 22:50:13.719039+00	A Separation	123	Asghar Farhadi	Peyman Moaadi, Leila Hatami, Sareh Bayat, Shahab Hosseini	A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimerundefineds disease.	http://ia.media-imdb.com/images/M/MV5BMTYzMzU4NDUwOF5BMl5BanBnXkFtZTcwMTM5MjA5Ng@@._V1_SX300.jpg	2011
1694	2021-01-15 22:50:13.744365+00	2021-01-15 22:50:13.744365+00	The Big Short	130	Adam McKay	Ryan Gosling, Rudy Eisenzopf, Casey Groves, Charlie Talbert	Four denizens in the world of high-finance predict the credit and housing bubble collapse of the mid-2000s, and decide to take on the big banks for their greed and lack of foresight.	https://images-na.ssl-images-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg	2015
\.


--
-- TOC entry 2971 (class 0 OID 16409)
-- Dependencies: 205
-- Data for Name: moviesGenres; Type: TABLE DATA; Schema: public; Owner: movies
--

COPY public."moviesGenres" (id, "createdAt", "updatedAt", "movieId", "genreId") FROM stdin;
833	2021-01-15 22:50:08.748997+00	2021-01-15 22:50:08.748997+00	1549	2716
834	2021-01-15 22:50:08.765576+00	2021-01-15 22:50:08.765576+00	1549	2717
835	2021-01-15 22:50:08.791121+00	2021-01-15 22:50:08.791121+00	1550	2718
836	2021-01-15 22:50:08.807662+00	2021-01-15 22:50:08.807662+00	1550	2719
837	2021-01-15 22:50:08.823886+00	2021-01-15 22:50:08.823886+00	1550	2720
838	2021-01-15 22:50:08.841839+00	2021-01-15 22:50:08.841839+00	1551	2718
839	2021-01-15 22:50:08.849303+00	2021-01-15 22:50:08.849303+00	1551	2719
840	2021-01-15 22:50:08.873948+00	2021-01-15 22:50:08.873948+00	1552	2723
841	2021-01-15 22:50:08.882927+00	2021-01-15 22:50:08.882927+00	1552	2716
842	2021-01-15 22:50:08.899518+00	2021-01-15 22:50:08.899518+00	1553	2719
843	2021-01-15 22:50:08.915576+00	2021-01-15 22:50:08.915576+00	1553	2726
844	2021-01-15 22:50:08.932222+00	2021-01-15 22:50:08.932222+00	1553	2727
845	2021-01-15 22:50:08.957177+00	2021-01-15 22:50:08.957177+00	1554	2728
846	2021-01-15 22:50:08.965777+00	2021-01-15 22:50:08.965777+00	1554	2716
847	2021-01-15 22:50:08.990725+00	2021-01-15 22:50:08.990725+00	1554	2730
848	2021-01-15 22:50:09.009026+00	2021-01-15 22:50:09.009026+00	1555	2718
849	2021-01-15 22:50:09.016152+00	2021-01-15 22:50:09.016152+00	1555	2719
850	2021-01-15 22:50:09.040901+00	2021-01-15 22:50:09.040901+00	1556	2733
851	2021-01-15 22:50:09.04928+00	2021-01-15 22:50:09.04928+00	1556	2727
852	2021-01-15 22:50:09.074613+00	2021-01-15 22:50:09.074613+00	1557	2735
853	2021-01-15 22:50:09.082712+00	2021-01-15 22:50:09.082712+00	1557	2716
854	2021-01-15 22:50:09.091994+00	2021-01-15 22:50:09.091994+00	1557	2719
855	2021-01-15 22:50:09.107929+00	2021-01-15 22:50:09.107929+00	1558	2723
856	2021-01-15 22:50:09.116219+00	2021-01-15 22:50:09.116219+00	1558	2730
857	2021-01-15 22:50:09.126413+00	2021-01-15 22:50:09.126413+00	1558	2717
858	2021-01-15 22:50:09.149437+00	2021-01-15 22:50:09.149437+00	1559	2741
859	2021-01-15 22:50:09.159735+00	2021-01-15 22:50:09.159735+00	1559	2723
860	2021-01-15 22:50:09.166887+00	2021-01-15 22:50:09.166887+00	1559	2719
861	2021-01-15 22:50:09.183432+00	2021-01-15 22:50:09.183432+00	1560	2718
862	2021-01-15 22:50:09.192428+00	2021-01-15 22:50:09.192428+00	1560	2719
863	2021-01-15 22:50:09.208465+00	2021-01-15 22:50:09.208465+00	1561	2718
864	2021-01-15 22:50:09.222348+00	2021-01-15 22:50:09.222348+00	1561	2719
865	2021-01-15 22:50:09.23269+00	2021-01-15 22:50:09.23269+00	1561	2727
866	2021-01-15 22:50:09.249616+00	2021-01-15 22:50:09.249616+00	1562	2728
867	2021-01-15 22:50:09.258526+00	2021-01-15 22:50:09.258526+00	1562	2723
868	2021-01-15 22:50:09.266785+00	2021-01-15 22:50:09.266785+00	1562	2716
869	2021-01-15 22:50:09.283234+00	2021-01-15 22:50:09.283234+00	1563	2741
870	2021-01-15 22:50:09.299342+00	2021-01-15 22:50:09.299342+00	1563	2718
871	2021-01-15 22:50:09.349561+00	2021-01-15 22:50:09.349561+00	1563	2719
872	2021-01-15 22:50:09.491603+00	2021-01-15 22:50:09.491603+00	1564	2728
873	2021-01-15 22:50:09.524909+00	2021-01-15 22:50:09.524909+00	1564	2719
874	2021-01-15 22:50:09.532558+00	2021-01-15 22:50:09.532558+00	1564	2730
875	2021-01-15 22:50:09.557558+00	2021-01-15 22:50:09.557558+00	1565	2758
876	2021-01-15 22:50:09.566012+00	2021-01-15 22:50:09.566012+00	1565	2733
877	2021-01-15 22:50:09.574727+00	2021-01-15 22:50:09.574727+00	1565	2727
878	2021-01-15 22:50:09.592743+00	2021-01-15 22:50:09.592743+00	1566	2723
879	2021-01-15 22:50:09.599351+00	2021-01-15 22:50:09.599351+00	1566	2719
880	2021-01-15 22:50:09.615787+00	2021-01-15 22:50:09.615787+00	1566	2763
881	2021-01-15 22:50:09.633008+00	2021-01-15 22:50:09.633008+00	1567	2718
882	2021-01-15 22:50:09.641924+00	2021-01-15 22:50:09.641924+00	1567	2719
883	2021-01-15 22:50:09.658052+00	2021-01-15 22:50:09.658052+00	1568	2735
884	2021-01-15 22:50:09.666186+00	2021-01-15 22:50:09.666186+00	1568	2719
885	2021-01-15 22:50:09.674872+00	2021-01-15 22:50:09.674872+00	1568	2720
886	2021-01-15 22:50:09.692321+00	2021-01-15 22:50:09.692321+00	1569	2719
887	2021-01-15 22:50:09.699523+00	2021-01-15 22:50:09.699523+00	1569	2727
888	2021-01-15 22:50:09.716626+00	2021-01-15 22:50:09.716626+00	1570	2741
889	2021-01-15 22:50:09.725115+00	2021-01-15 22:50:09.725115+00	1570	2723
890	2021-01-15 22:50:09.740788+00	2021-01-15 22:50:09.740788+00	1570	2773
891	2021-01-15 22:50:09.758356+00	2021-01-15 22:50:09.758356+00	1571	2719
892	2021-01-15 22:50:09.774281+00	2021-01-15 22:50:09.774281+00	1571	2775
893	2021-01-15 22:50:09.792183+00	2021-01-15 22:50:09.792183+00	1572	2716
894	2021-01-15 22:50:09.799275+00	2021-01-15 22:50:09.799275+00	1572	2719
895	2021-01-15 22:50:09.807826+00	2021-01-15 22:50:09.807826+00	1572	2763
896	2021-01-15 22:50:09.825101+00	2021-01-15 22:50:09.825101+00	1573	2719
897	2021-01-15 22:50:09.841657+00	2021-01-15 22:50:09.841657+00	1573	2780
898	2021-01-15 22:50:09.859026+00	2021-01-15 22:50:09.859026+00	1574	2718
899	2021-01-15 22:50:09.866183+00	2021-01-15 22:50:09.866183+00	1574	2719
900	2021-01-15 22:50:09.875215+00	2021-01-15 22:50:09.875215+00	1574	2727
901	2021-01-15 22:50:09.891676+00	2021-01-15 22:50:09.891676+00	1575	2719
902	2021-01-15 22:50:09.899601+00	2021-01-15 22:50:09.899601+00	1575	2763
903	2021-01-15 22:50:09.916513+00	2021-01-15 22:50:09.916513+00	1576	2716
904	2021-01-15 22:50:09.924979+00	2021-01-15 22:50:09.924979+00	1576	2718
905	2021-01-15 22:50:09.942379+00	2021-01-15 22:50:09.942379+00	1577	2718
906	2021-01-15 22:50:09.949592+00	2021-01-15 22:50:09.949592+00	1577	2719
907	2021-01-15 22:50:09.958589+00	2021-01-15 22:50:09.958589+00	1577	2727
908	2021-01-15 22:50:09.976036+00	2021-01-15 22:50:09.976036+00	1578	2718
909	2021-01-15 22:50:09.991369+00	2021-01-15 22:50:09.991369+00	1578	2719
910	2021-01-15 22:50:10.01692+00	2021-01-15 22:50:10.01692+00	1579	2716
911	2021-01-15 22:50:10.024913+00	2021-01-15 22:50:10.024913+00	1579	2718
912	2021-01-15 22:50:10.042341+00	2021-01-15 22:50:10.042341+00	1580	2718
913	2021-01-15 22:50:10.049949+00	2021-01-15 22:50:10.049949+00	1580	2719
914	2021-01-15 22:50:10.057969+00	2021-01-15 22:50:10.057969+00	1580	2733
915	2021-01-15 22:50:10.07593+00	2021-01-15 22:50:10.07593+00	1581	2733
916	2021-01-15 22:50:10.083332+00	2021-01-15 22:50:10.083332+00	1581	2727
917	2021-01-15 22:50:10.101079+00	2021-01-15 22:50:10.101079+00	1582	2719
918	2021-01-15 22:50:10.108288+00	2021-01-15 22:50:10.108288+00	1582	2717
919	2021-01-15 22:50:10.116671+00	2021-01-15 22:50:10.116671+00	1582	2775
920	2021-01-15 22:50:10.133406+00	2021-01-15 22:50:10.133406+00	1583	2733
921	2021-01-15 22:50:10.142086+00	2021-01-15 22:50:10.142086+00	1583	2727
922	2021-01-15 22:50:10.15871+00	2021-01-15 22:50:10.15871+00	1584	2718
923	2021-01-15 22:50:10.166154+00	2021-01-15 22:50:10.166154+00	1584	2719
924	2021-01-15 22:50:10.175426+00	2021-01-15 22:50:10.175426+00	1584	2727
925	2021-01-15 22:50:10.192345+00	2021-01-15 22:50:10.192345+00	1585	2719
926	2021-01-15 22:50:10.20839+00	2021-01-15 22:50:10.20839+00	1585	2809
927	2021-01-15 22:50:10.225855+00	2021-01-15 22:50:10.225855+00	1586	2716
928	2021-01-15 22:50:10.232988+00	2021-01-15 22:50:10.232988+00	1586	2717
929	2021-01-15 22:50:10.241506+00	2021-01-15 22:50:10.241506+00	1586	2763
930	2021-01-15 22:50:10.259037+00	2021-01-15 22:50:10.259037+00	1587	2719
931	2021-01-15 22:50:10.274872+00	2021-01-15 22:50:10.274872+00	1587	2814
932	2021-01-15 22:50:10.283174+00	2021-01-15 22:50:10.283174+00	1587	2763
933	2021-01-15 22:50:10.324956+00	2021-01-15 22:50:10.324956+00	1588	2718
934	2021-01-15 22:50:10.333238+00	2021-01-15 22:50:10.333238+00	1588	2719
935	2021-01-15 22:50:10.350121+00	2021-01-15 22:50:10.350121+00	1588	2733
936	2021-01-15 22:50:10.368004+00	2021-01-15 22:50:10.368004+00	1589	2735
937	2021-01-15 22:50:10.375368+00	2021-01-15 22:50:10.375368+00	1589	2719
938	2021-01-15 22:50:10.3912+00	2021-01-15 22:50:10.3912+00	1589	2821
939	2021-01-15 22:50:10.408448+00	2021-01-15 22:50:10.408448+00	1590	2716
940	2021-01-15 22:50:10.428728+00	2021-01-15 22:50:10.428728+00	1591	2719
941	2021-01-15 22:50:10.442452+00	2021-01-15 22:50:10.442452+00	1592	2719
942	2021-01-15 22:50:10.459047+00	2021-01-15 22:50:10.459047+00	1593	2728
943	2021-01-15 22:50:10.467131+00	2021-01-15 22:50:10.467131+00	1593	2716
944	2021-01-15 22:50:10.474992+00	2021-01-15 22:50:10.474992+00	1593	2719
945	2021-01-15 22:50:10.49214+00	2021-01-15 22:50:10.49214+00	1594	2719
946	2021-01-15 22:50:10.500284+00	2021-01-15 22:50:10.500284+00	1594	2727
947	2021-01-15 22:50:10.51757+00	2021-01-15 22:50:10.51757+00	1595	2719
948	2021-01-15 22:50:10.534732+00	2021-01-15 22:50:10.534732+00	1596	2719
949	2021-01-15 22:50:10.551586+00	2021-01-15 22:50:10.551586+00	1597	2716
950	2021-01-15 22:50:10.558486+00	2021-01-15 22:50:10.558486+00	1597	2719
951	2021-01-15 22:50:10.567464+00	2021-01-15 22:50:10.567464+00	1597	2773
952	2021-01-15 22:50:10.58485+00	2021-01-15 22:50:10.58485+00	1598	2716
953	2021-01-15 22:50:10.592037+00	2021-01-15 22:50:10.592037+00	1598	2719
954	2021-01-15 22:50:10.599843+00	2021-01-15 22:50:10.599843+00	1598	2763
955	2021-01-15 22:50:10.620377+00	2021-01-15 22:50:10.620377+00	1599	2716
956	2021-01-15 22:50:10.625207+00	2021-01-15 22:50:10.625207+00	1599	2719
957	2021-01-15 22:50:10.642551+00	2021-01-15 22:50:10.642551+00	1600	2723
958	2021-01-15 22:50:10.649978+00	2021-01-15 22:50:10.649978+00	1600	2717
959	2021-01-15 22:50:10.666827+00	2021-01-15 22:50:10.666827+00	1601	2719
960	2021-01-15 22:50:10.676575+00	2021-01-15 22:50:10.676575+00	1601	2763
961	2021-01-15 22:50:10.692716+00	2021-01-15 22:50:10.692716+00	1602	2719
962	2021-01-15 22:50:10.699848+00	2021-01-15 22:50:10.699848+00	1602	2763
963	2021-01-15 22:50:10.716876+00	2021-01-15 22:50:10.716876+00	1603	2719
964	2021-01-15 22:50:10.733522+00	2021-01-15 22:50:10.733522+00	1604	2719
965	2021-01-15 22:50:10.741805+00	2021-01-15 22:50:10.741805+00	1604	2763
966	2021-01-15 22:50:10.750154+00	2021-01-15 22:50:10.750154+00	1604	2727
967	2021-01-15 22:50:10.767191+00	2021-01-15 22:50:10.767191+00	1605	2809
968	2021-01-15 22:50:10.775371+00	2021-01-15 22:50:10.775371+00	1605	2733
969	2021-01-15 22:50:10.783278+00	2021-01-15 22:50:10.783278+00	1605	2727
970	2021-01-15 22:50:10.800285+00	2021-01-15 22:50:10.800285+00	1606	2741
971	2021-01-15 22:50:10.808617+00	2021-01-15 22:50:10.808617+00	1606	2723
972	2021-01-15 22:50:10.816679+00	2021-01-15 22:50:10.816679+00	1606	2718
973	2021-01-15 22:50:10.83389+00	2021-01-15 22:50:10.83389+00	1607	2728
974	2021-01-15 22:50:10.841555+00	2021-01-15 22:50:10.841555+00	1607	2741
975	2021-01-15 22:50:10.849971+00	2021-01-15 22:50:10.849971+00	1607	2723
976	2021-01-15 22:50:10.868145+00	2021-01-15 22:50:10.868145+00	1608	2728
977	2021-01-15 22:50:10.874982+00	2021-01-15 22:50:10.874982+00	1608	2723
978	2021-01-15 22:50:10.883315+00	2021-01-15 22:50:10.883315+00	1608	2716
979	2021-01-15 22:50:10.900567+00	2021-01-15 22:50:10.900567+00	1609	2735
980	2021-01-15 22:50:10.916852+00	2021-01-15 22:50:10.916852+00	1609	2719
981	2021-01-15 22:50:10.925061+00	2021-01-15 22:50:10.925061+00	1609	2726
982	2021-01-15 22:50:10.941922+00	2021-01-15 22:50:10.941922+00	1610	2728
983	2021-01-15 22:50:10.950305+00	2021-01-15 22:50:10.950305+00	1610	2723
984	2021-01-15 22:50:10.958566+00	2021-01-15 22:50:10.958566+00	1610	2716
985	2021-01-15 22:50:10.977148+00	2021-01-15 22:50:10.977148+00	1611	2728
986	2021-01-15 22:50:10.98326+00	2021-01-15 22:50:10.98326+00	1611	2723
987	2021-01-15 22:50:10.991876+00	2021-01-15 22:50:10.991876+00	1611	2716
988	2021-01-15 22:50:11.008492+00	2021-01-15 22:50:11.008492+00	1612	2716
989	2021-01-15 22:50:11.016715+00	2021-01-15 22:50:11.016715+00	1612	2718
990	2021-01-15 22:50:11.03373+00	2021-01-15 22:50:11.03373+00	1613	2735
991	2021-01-15 22:50:11.041799+00	2021-01-15 22:50:11.041799+00	1613	2719
992	2021-01-15 22:50:11.058696+00	2021-01-15 22:50:11.058696+00	1614	2735
993	2021-01-15 22:50:11.075206+00	2021-01-15 22:50:11.075206+00	1614	2719
994	2021-01-15 22:50:11.083637+00	2021-01-15 22:50:11.083637+00	1614	2775
995	2021-01-15 22:50:11.100264+00	2021-01-15 22:50:11.100264+00	1615	2723
996	2021-01-15 22:50:11.108398+00	2021-01-15 22:50:11.108398+00	1615	2735
997	2021-01-15 22:50:11.116885+00	2021-01-15 22:50:11.116885+00	1615	2719
998	2021-01-15 22:50:11.133811+00	2021-01-15 22:50:11.133811+00	1616	2719
999	2021-01-15 22:50:11.14206+00	2021-01-15 22:50:11.14206+00	1616	2763
1000	2021-01-15 22:50:11.15059+00	2021-01-15 22:50:11.15059+00	1616	2775
1001	2021-01-15 22:50:11.166905+00	2021-01-15 22:50:11.166905+00	1617	2735
1002	2021-01-15 22:50:11.174953+00	2021-01-15 22:50:11.174953+00	1617	2718
1003	2021-01-15 22:50:11.183514+00	2021-01-15 22:50:11.183514+00	1617	2719
1004	2021-01-15 22:50:11.200249+00	2021-01-15 22:50:11.200249+00	1618	2735
1005	2021-01-15 22:50:11.208533+00	2021-01-15 22:50:11.208533+00	1618	2718
1006	2021-01-15 22:50:11.217014+00	2021-01-15 22:50:11.217014+00	1618	2719
1007	2021-01-15 22:50:11.234376+00	2021-01-15 22:50:11.234376+00	1619	2718
1008	2021-01-15 22:50:11.24168+00	2021-01-15 22:50:11.24168+00	1619	2719
1009	2021-01-15 22:50:11.259247+00	2021-01-15 22:50:11.259247+00	1620	2735
1010	2021-01-15 22:50:11.266793+00	2021-01-15 22:50:11.266793+00	1620	2718
1011	2021-01-15 22:50:11.275298+00	2021-01-15 22:50:11.275298+00	1620	2719
1012	2021-01-15 22:50:11.317116+00	2021-01-15 22:50:11.317116+00	1621	2741
1013	2021-01-15 22:50:11.324902+00	2021-01-15 22:50:11.324902+00	1621	2723
1014	2021-01-15 22:50:11.333776+00	2021-01-15 22:50:11.333776+00	1621	2717
1015	2021-01-15 22:50:11.350482+00	2021-01-15 22:50:11.350482+00	1622	2741
1016	2021-01-15 22:50:11.358461+00	2021-01-15 22:50:11.358461+00	1622	2723
1017	2021-01-15 22:50:11.366692+00	2021-01-15 22:50:11.366692+00	1622	2717
1018	2021-01-15 22:50:11.383968+00	2021-01-15 22:50:11.383968+00	1623	2718
1019	2021-01-15 22:50:11.391838+00	2021-01-15 22:50:11.391838+00	1623	2719
1020	2021-01-15 22:50:11.400182+00	2021-01-15 22:50:11.400182+00	1623	2727
1021	2021-01-15 22:50:11.417379+00	2021-01-15 22:50:11.417379+00	1624	2741
1022	2021-01-15 22:50:11.425306+00	2021-01-15 22:50:11.425306+00	1624	2723
1023	2021-01-15 22:50:11.433402+00	2021-01-15 22:50:11.433402+00	1624	2717
1024	2021-01-15 22:50:11.450472+00	2021-01-15 22:50:11.450472+00	1625	2741
1025	2021-01-15 22:50:11.458643+00	2021-01-15 22:50:11.458643+00	1625	2723
1026	2021-01-15 22:50:11.466682+00	2021-01-15 22:50:11.466682+00	1625	2719
1027	2021-01-15 22:50:11.484323+00	2021-01-15 22:50:11.484323+00	1626	2719
1028	2021-01-15 22:50:11.491866+00	2021-01-15 22:50:11.491866+00	1626	2733
1029	2021-01-15 22:50:11.500535+00	2021-01-15 22:50:11.500535+00	1626	2727
1030	2021-01-15 22:50:11.517151+00	2021-01-15 22:50:11.517151+00	1627	2719
1031	2021-01-15 22:50:11.525188+00	2021-01-15 22:50:11.525188+00	1627	2763
1032	2021-01-15 22:50:11.551056+00	2021-01-15 22:50:11.551056+00	1628	2741
1033	2021-01-15 22:50:11.558413+00	2021-01-15 22:50:11.558413+00	1628	2723
1034	2021-01-15 22:50:11.567002+00	2021-01-15 22:50:11.567002+00	1628	2727
1035	2021-01-15 22:50:11.584431+00	2021-01-15 22:50:11.584431+00	1629	2728
1036	2021-01-15 22:50:11.591707+00	2021-01-15 22:50:11.591707+00	1629	2723
1037	2021-01-15 22:50:11.600078+00	2021-01-15 22:50:11.600078+00	1629	2730
1038	2021-01-15 22:50:11.617268+00	2021-01-15 22:50:11.617268+00	1630	2735
1039	2021-01-15 22:50:11.625118+00	2021-01-15 22:50:11.625118+00	1630	2716
1040	2021-01-15 22:50:11.633486+00	2021-01-15 22:50:11.633486+00	1630	2718
1041	2021-01-15 22:50:11.650566+00	2021-01-15 22:50:11.650566+00	1631	2741
1042	2021-01-15 22:50:11.658593+00	2021-01-15 22:50:11.658593+00	1631	2723
1043	2021-01-15 22:50:11.667005+00	2021-01-15 22:50:11.667005+00	1631	2717
1044	2021-01-15 22:50:11.684102+00	2021-01-15 22:50:11.684102+00	1632	2719
1045	2021-01-15 22:50:11.691896+00	2021-01-15 22:50:11.691896+00	1632	2758
1046	2021-01-15 22:50:11.700152+00	2021-01-15 22:50:11.700152+00	1632	2763
1047	2021-01-15 22:50:11.717455+00	2021-01-15 22:50:11.717455+00	1633	2716
1048	2021-01-15 22:50:11.734113+00	2021-01-15 22:50:11.734113+00	1634	2723
1049	2021-01-15 22:50:11.742084+00	2021-01-15 22:50:11.742084+00	1634	2716
1050	2021-01-15 22:50:11.750468+00	2021-01-15 22:50:11.750468+00	1634	2718
1051	2021-01-15 22:50:11.76733+00	2021-01-15 22:50:11.76733+00	1635	2723
1052	2021-01-15 22:50:11.775535+00	2021-01-15 22:50:11.775535+00	1635	2716
1053	2021-01-15 22:50:11.783775+00	2021-01-15 22:50:11.783775+00	1635	2773
1054	2021-01-15 22:50:11.800703+00	2021-01-15 22:50:11.800703+00	1636	2718
1055	2021-01-15 22:50:11.809754+00	2021-01-15 22:50:11.809754+00	1636	2719
1056	2021-01-15 22:50:11.825617+00	2021-01-15 22:50:11.825617+00	1637	2741
1057	2021-01-15 22:50:11.834194+00	2021-01-15 22:50:11.834194+00	1637	2723
1058	2021-01-15 22:50:11.842224+00	2021-01-15 22:50:11.842224+00	1637	2733
1059	2021-01-15 22:50:11.859135+00	2021-01-15 22:50:11.859135+00	1638	2741
1060	2021-01-15 22:50:11.879906+00	2021-01-15 22:50:11.879906+00	1638	2719
1061	2021-01-15 22:50:11.900432+00	2021-01-15 22:50:11.900432+00	1638	2727
1062	2021-01-15 22:50:11.94682+00	2021-01-15 22:50:11.94682+00	1639	2719
1063	2021-01-15 22:50:11.967576+00	2021-01-15 22:50:11.967576+00	1639	2773
1064	2021-01-15 22:50:11.985979+00	2021-01-15 22:50:11.985979+00	1639	2727
1065	2021-01-15 22:50:12.011867+00	2021-01-15 22:50:12.011867+00	1640	2716
1066	2021-01-15 22:50:12.019953+00	2021-01-15 22:50:12.019953+00	1640	2719
1067	2021-01-15 22:50:12.027325+00	2021-01-15 22:50:12.027325+00	1640	2763
1068	2021-01-15 22:50:12.045688+00	2021-01-15 22:50:12.045688+00	1641	2723
1069	2021-01-15 22:50:12.052579+00	2021-01-15 22:50:12.052579+00	1641	2730
1070	2021-01-15 22:50:12.060653+00	2021-01-15 22:50:12.060653+00	1641	2717
1071	2021-01-15 22:50:12.078204+00	2021-01-15 22:50:12.078204+00	1642	2735
1072	2021-01-15 22:50:12.086564+00	2021-01-15 22:50:12.086564+00	1642	2719
1073	2021-01-15 22:50:12.102815+00	2021-01-15 22:50:12.102815+00	1643	2741
1074	2021-01-15 22:50:12.110947+00	2021-01-15 22:50:12.110947+00	1643	2723
1075	2021-01-15 22:50:12.127418+00	2021-01-15 22:50:12.127418+00	1643	2773
1076	2021-01-15 22:50:12.144841+00	2021-01-15 22:50:12.144841+00	1644	2716
1077	2021-01-15 22:50:12.152521+00	2021-01-15 22:50:12.152521+00	1644	2718
1078	2021-01-15 22:50:12.160625+00	2021-01-15 22:50:12.160625+00	1644	2733
1079	2021-01-15 22:50:12.177821+00	2021-01-15 22:50:12.177821+00	1645	2719
1080	2021-01-15 22:50:12.186026+00	2021-01-15 22:50:12.186026+00	1645	2733
1081	2021-01-15 22:50:12.194198+00	2021-01-15 22:50:12.194198+00	1645	2763
1082	2021-01-15 22:50:12.211341+00	2021-01-15 22:50:12.211341+00	1646	2719
1083	2021-01-15 22:50:12.219362+00	2021-01-15 22:50:12.219362+00	1646	2773
1084	2021-01-15 22:50:12.236127+00	2021-01-15 22:50:12.236127+00	1647	2719
1085	2021-01-15 22:50:12.244179+00	2021-01-15 22:50:12.244179+00	1647	2727
1086	2021-01-15 22:50:12.261182+00	2021-01-15 22:50:12.261182+00	1648	2719
1087	2021-01-15 22:50:12.270082+00	2021-01-15 22:50:12.270082+00	1648	2775
1088	2021-01-15 22:50:12.295313+00	2021-01-15 22:50:12.295313+00	1649	2719
1089	2021-01-15 22:50:12.302804+00	2021-01-15 22:50:12.302804+00	1649	2763
1090	2021-01-15 22:50:12.311136+00	2021-01-15 22:50:12.311136+00	1649	2775
1091	2021-01-15 22:50:12.327671+00	2021-01-15 22:50:12.327671+00	1650	2735
1092	2021-01-15 22:50:12.336085+00	2021-01-15 22:50:12.336085+00	1650	2719
1093	2021-01-15 22:50:12.353144+00	2021-01-15 22:50:12.353144+00	1651	2735
1094	2021-01-15 22:50:12.362418+00	2021-01-15 22:50:12.362418+00	1651	2719
1095	2021-01-15 22:50:12.369263+00	2021-01-15 22:50:12.369263+00	1651	2763
1096	2021-01-15 22:50:12.38701+00	2021-01-15 22:50:12.38701+00	1652	2719
1097	2021-01-15 22:50:12.393992+00	2021-01-15 22:50:12.393992+00	1652	2763
1098	2021-01-15 22:50:12.41402+00	2021-01-15 22:50:12.41402+00	1653	2716
1099	2021-01-15 22:50:12.419007+00	2021-01-15 22:50:12.419007+00	1653	2719
1100	2021-01-15 22:50:12.445167+00	2021-01-15 22:50:12.445167+00	1654	2741
1101	2021-01-15 22:50:12.452409+00	2021-01-15 22:50:12.452409+00	1654	2719
1102	2021-01-15 22:50:12.460891+00	2021-01-15 22:50:12.460891+00	1654	2726
1103	2021-01-15 22:50:12.478139+00	2021-01-15 22:50:12.478139+00	1655	2719
1104	2021-01-15 22:50:12.485937+00	2021-01-15 22:50:12.485937+00	1655	2733
1105	2021-01-15 22:50:12.494295+00	2021-01-15 22:50:12.494295+00	1655	2727
1106	2021-01-15 22:50:12.5118+00	2021-01-15 22:50:12.5118+00	1656	2716
1107	2021-01-15 22:50:12.519168+00	2021-01-15 22:50:12.519168+00	1656	2719
1108	2021-01-15 22:50:12.536236+00	2021-01-15 22:50:12.536236+00	1657	2719
1109	2021-01-15 22:50:12.545589+00	2021-01-15 22:50:12.545589+00	1657	2763
1110	2021-01-15 22:50:12.561343+00	2021-01-15 22:50:12.561343+00	1658	2728
1111	2021-01-15 22:50:12.56929+00	2021-01-15 22:50:12.56929+00	1658	2723
1112	2021-01-15 22:50:12.578001+00	2021-01-15 22:50:12.578001+00	1658	2730
1113	2021-01-15 22:50:12.594834+00	2021-01-15 22:50:12.594834+00	1659	2719
1114	2021-01-15 22:50:12.602738+00	2021-01-15 22:50:12.602738+00	1659	2763
1115	2021-01-15 22:50:12.61989+00	2021-01-15 22:50:12.61989+00	1660	2716
1116	2021-01-15 22:50:12.62771+00	2021-01-15 22:50:12.62771+00	1660	2719
1117	2021-01-15 22:50:12.636127+00	2021-01-15 22:50:12.636127+00	1660	2763
1118	2021-01-15 22:50:12.652921+00	2021-01-15 22:50:12.652921+00	1661	2719
1119	2021-01-15 22:50:12.711307+00	2021-01-15 22:50:12.711307+00	1662	2718
1120	2021-01-15 22:50:12.71954+00	2021-01-15 22:50:12.71954+00	1662	2719
1121	2021-01-15 22:50:12.736098+00	2021-01-15 22:50:12.736098+00	1663	2735
1122	2021-01-15 22:50:12.745065+00	2021-01-15 22:50:12.745065+00	1663	2719
1123	2021-01-15 22:50:12.752682+00	2021-01-15 22:50:12.752682+00	1663	2727
1124	2021-01-15 22:50:12.769603+00	2021-01-15 22:50:12.769603+00	1664	2723
1125	2021-01-15 22:50:12.777768+00	2021-01-15 22:50:12.777768+00	1664	2719
1126	2021-01-15 22:50:12.794571+00	2021-01-15 22:50:12.794571+00	1664	2773
1127	2021-01-15 22:50:12.845599+00	2021-01-15 22:50:12.845599+00	1665	2716
1128	2021-01-15 22:50:12.852684+00	2021-01-15 22:50:12.852684+00	1665	2718
1129	2021-01-15 22:50:12.861674+00	2021-01-15 22:50:12.861674+00	1665	2727
1130	2021-01-15 22:50:12.878264+00	2021-01-15 22:50:12.878264+00	1666	2723
1131	2021-01-15 22:50:12.886148+00	2021-01-15 22:50:12.886148+00	1666	2719
1132	2021-01-15 22:50:12.894364+00	2021-01-15 22:50:12.894364+00	1666	2727
1133	2021-01-15 22:50:12.912554+00	2021-01-15 22:50:12.912554+00	1667	2728
1134	2021-01-15 22:50:12.920062+00	2021-01-15 22:50:12.920062+00	1667	2723
1135	2021-01-15 22:50:12.927745+00	2021-01-15 22:50:12.927745+00	1667	2716
1136	2021-01-15 22:50:12.944984+00	2021-01-15 22:50:12.944984+00	1668	2718
1137	2021-01-15 22:50:12.952662+00	2021-01-15 22:50:12.952662+00	1668	2727
1138	2021-01-15 22:50:12.969618+00	2021-01-15 22:50:12.969618+00	1669	2723
1139	2021-01-15 22:50:12.977944+00	2021-01-15 22:50:12.977944+00	1669	2716
1140	2021-01-15 22:50:12.985971+00	2021-01-15 22:50:12.985971+00	1669	2719
1141	2021-01-15 22:50:13.003045+00	2021-01-15 22:50:13.003045+00	1670	2728
1142	2021-01-15 22:50:13.01174+00	2021-01-15 22:50:13.01174+00	1670	2723
1143	2021-01-15 22:50:13.019374+00	2021-01-15 22:50:13.019374+00	1670	2716
1144	2021-01-15 22:50:13.036731+00	2021-01-15 22:50:13.036731+00	1671	2741
1145	2021-01-15 22:50:13.044679+00	2021-01-15 22:50:13.044679+00	1671	2716
1146	2021-01-15 22:50:13.052722+00	2021-01-15 22:50:13.052722+00	1671	2718
1147	2021-01-15 22:50:13.069611+00	2021-01-15 22:50:13.069611+00	1672	2719
1148	2021-01-15 22:50:13.077841+00	2021-01-15 22:50:13.077841+00	1672	2733
1149	2021-01-15 22:50:13.086094+00	2021-01-15 22:50:13.086094+00	1672	2763
1150	2021-01-15 22:50:13.106114+00	2021-01-15 22:50:13.106114+00	1673	2728
1151	2021-01-15 22:50:13.111266+00	2021-01-15 22:50:13.111266+00	1673	2723
1152	2021-01-15 22:50:13.119385+00	2021-01-15 22:50:13.119385+00	1673	2716
1153	2021-01-15 22:50:13.137314+00	2021-01-15 22:50:13.137314+00	1674	2719
1154	2021-01-15 22:50:13.144939+00	2021-01-15 22:50:13.144939+00	1674	2763
1155	2021-01-15 22:50:13.161589+00	2021-01-15 22:50:13.161589+00	1675	2728
1156	2021-01-15 22:50:13.169309+00	2021-01-15 22:50:13.169309+00	1675	2723
1157	2021-01-15 22:50:13.178164+00	2021-01-15 22:50:13.178164+00	1675	2716
1158	2021-01-15 22:50:13.194649+00	2021-01-15 22:50:13.194649+00	1676	2723
1159	2021-01-15 22:50:13.211611+00	2021-01-15 22:50:13.211611+00	1677	2723
1160	2021-01-15 22:50:13.219557+00	2021-01-15 22:50:13.219557+00	1677	2717
1161	2021-01-15 22:50:13.236487+00	2021-01-15 22:50:13.236487+00	1678	2719
1162	2021-01-15 22:50:13.244564+00	2021-01-15 22:50:13.244564+00	1678	2763
1163	2021-01-15 22:50:13.261672+00	2021-01-15 22:50:13.261672+00	1679	2728
1164	2021-01-15 22:50:13.270379+00	2021-01-15 22:50:13.270379+00	1679	2723
1165	2021-01-15 22:50:13.278286+00	2021-01-15 22:50:13.278286+00	1679	2716
1166	2021-01-15 22:50:13.32006+00	2021-01-15 22:50:13.32006+00	1680	2741
1167	2021-01-15 22:50:13.327815+00	2021-01-15 22:50:13.327815+00	1680	2723
1168	2021-01-15 22:50:13.336295+00	2021-01-15 22:50:13.336295+00	1680	2719
1169	2021-01-15 22:50:13.353016+00	2021-01-15 22:50:13.353016+00	1681	2741
1170	2021-01-15 22:50:13.361578+00	2021-01-15 22:50:13.361578+00	1681	2723
1171	2021-01-15 22:50:13.369821+00	2021-01-15 22:50:13.369821+00	1681	2719
1172	2021-01-15 22:50:13.38663+00	2021-01-15 22:50:13.38663+00	1682	2719
1173	2021-01-15 22:50:13.394694+00	2021-01-15 22:50:13.394694+00	1682	2733
1174	2021-01-15 22:50:13.406502+00	2021-01-15 22:50:13.406502+00	1682	2773
1175	2021-01-15 22:50:13.419628+00	2021-01-15 22:50:13.419628+00	1683	2735
1176	2021-01-15 22:50:13.42785+00	2021-01-15 22:50:13.42785+00	1683	2719
1177	2021-01-15 22:50:13.436389+00	2021-01-15 22:50:13.436389+00	1683	2763
1178	2021-01-15 22:50:13.453193+00	2021-01-15 22:50:13.453193+00	1684	2723
1179	2021-01-15 22:50:13.461219+00	2021-01-15 22:50:13.461219+00	1684	2719
1180	2021-01-15 22:50:13.470035+00	2021-01-15 22:50:13.470035+00	1684	2726
1181	2021-01-15 22:50:13.486503+00	2021-01-15 22:50:13.486503+00	1685	2735
1182	2021-01-15 22:50:13.494573+00	2021-01-15 22:50:13.494573+00	1685	2718
1183	2021-01-15 22:50:13.503233+00	2021-01-15 22:50:13.503233+00	1685	2719
1184	2021-01-15 22:50:13.522451+00	2021-01-15 22:50:13.522451+00	1686	2733
1185	2021-01-15 22:50:13.528348+00	2021-01-15 22:50:13.528348+00	1686	2763
1186	2021-01-15 22:50:13.537767+00	2021-01-15 22:50:13.537767+00	1686	2727
1187	2021-01-15 22:50:13.553251+00	2021-01-15 22:50:13.553251+00	1687	2719
1188	2021-01-15 22:50:13.561544+00	2021-01-15 22:50:13.561544+00	1687	2720
1189	2021-01-15 22:50:13.578578+00	2021-01-15 22:50:13.578578+00	1688	2719
1190	2021-01-15 22:50:13.586475+00	2021-01-15 22:50:13.586475+00	1688	2727
1191	2021-01-15 22:50:13.603841+00	2021-01-15 22:50:13.603841+00	1689	2719
1192	2021-01-15 22:50:13.611866+00	2021-01-15 22:50:13.611866+00	1689	2726
1193	2021-01-15 22:50:13.619733+00	2021-01-15 22:50:13.619733+00	1689	2775
1194	2021-01-15 22:50:13.636684+00	2021-01-15 22:50:13.636684+00	1690	2723
1195	2021-01-15 22:50:13.644896+00	2021-01-15 22:50:13.644896+00	1690	2719
1196	2021-01-15 22:50:13.652996+00	2021-01-15 22:50:13.652996+00	1690	2773
1197	2021-01-15 22:50:13.670055+00	2021-01-15 22:50:13.670055+00	1691	2718
1198	2021-01-15 22:50:13.67862+00	2021-01-15 22:50:13.67862+00	1691	2719
1199	2021-01-15 22:50:13.695238+00	2021-01-15 22:50:13.695238+00	1692	2718
1200	2021-01-15 22:50:13.703345+00	2021-01-15 22:50:13.703345+00	1692	2719
1201	2021-01-15 22:50:13.712009+00	2021-01-15 22:50:13.712009+00	1692	2733
1202	2021-01-15 22:50:13.728477+00	2021-01-15 22:50:13.728477+00	1693	2719
1203	2021-01-15 22:50:13.737082+00	2021-01-15 22:50:13.737082+00	1693	2733
1204	2021-01-15 22:50:13.753493+00	2021-01-15 22:50:13.753493+00	1694	2735
1205	2021-01-15 22:50:13.761757+00	2021-01-15 22:50:13.761757+00	1694	2716
1206	2021-01-15 22:50:13.76978+00	2021-01-15 22:50:13.76978+00	1694	2719
1207	2021-01-15 22:50:15.038989+00	2021-01-15 22:50:15.038989+00	1549	2716
1208	2021-01-15 22:50:15.070081+00	2021-01-15 22:50:15.070081+00	1549	2717
1209	2021-01-15 22:50:15.079553+00	2021-01-15 22:50:15.079553+00	1550	2718
1210	2021-01-15 22:50:15.086817+00	2021-01-15 22:50:15.086817+00	1550	2719
1211	2021-01-15 22:50:15.095067+00	2021-01-15 22:50:15.095067+00	1550	2720
1212	2021-01-15 22:50:15.104433+00	2021-01-15 22:50:15.104433+00	1551	2718
1213	2021-01-15 22:50:15.111952+00	2021-01-15 22:50:15.111952+00	1551	2719
1214	2021-01-15 22:50:15.120396+00	2021-01-15 22:50:15.120396+00	1552	2723
1215	2021-01-15 22:50:15.136673+00	2021-01-15 22:50:15.136673+00	1552	2716
1216	2021-01-15 22:50:15.146271+00	2021-01-15 22:50:15.146271+00	1553	2719
1217	2021-01-15 22:50:15.153048+00	2021-01-15 22:50:15.153048+00	1553	2726
1218	2021-01-15 22:50:15.162333+00	2021-01-15 22:50:15.162333+00	1553	2727
1219	2021-01-15 22:50:15.170583+00	2021-01-15 22:50:15.170583+00	1554	2728
1220	2021-01-15 22:50:15.178669+00	2021-01-15 22:50:15.178669+00	1554	2716
1221	2021-01-15 22:50:15.186468+00	2021-01-15 22:50:15.186468+00	1554	2730
1222	2021-01-15 22:50:15.19629+00	2021-01-15 22:50:15.19629+00	1555	2718
1223	2021-01-15 22:50:15.203296+00	2021-01-15 22:50:15.203296+00	1555	2719
1224	2021-01-15 22:50:15.212774+00	2021-01-15 22:50:15.212774+00	1556	2733
1225	2021-01-15 22:50:15.219891+00	2021-01-15 22:50:15.219891+00	1556	2727
1226	2021-01-15 22:50:15.231173+00	2021-01-15 22:50:15.231173+00	1557	2735
1227	2021-01-15 22:50:15.236465+00	2021-01-15 22:50:15.236465+00	1557	2716
1228	2021-01-15 22:50:15.246982+00	2021-01-15 22:50:15.246982+00	1557	2719
1229	2021-01-15 22:50:15.254184+00	2021-01-15 22:50:15.254184+00	1558	2723
1230	2021-01-15 22:50:15.261786+00	2021-01-15 22:50:15.261786+00	1558	2730
1231	2021-01-15 22:50:15.273561+00	2021-01-15 22:50:15.273561+00	1558	2717
1232	2021-01-15 22:50:15.279922+00	2021-01-15 22:50:15.279922+00	1559	2741
1233	2021-01-15 22:50:15.286781+00	2021-01-15 22:50:15.286781+00	1559	2723
1234	2021-01-15 22:50:15.311767+00	2021-01-15 22:50:15.311767+00	1559	2719
1235	2021-01-15 22:50:15.329254+00	2021-01-15 22:50:15.329254+00	1560	2718
1236	2021-01-15 22:50:15.336751+00	2021-01-15 22:50:15.336751+00	1560	2719
1237	2021-01-15 22:50:15.346381+00	2021-01-15 22:50:15.346381+00	1561	2718
1238	2021-01-15 22:50:15.353643+00	2021-01-15 22:50:15.353643+00	1561	2719
1239	2021-01-15 22:50:15.361783+00	2021-01-15 22:50:15.361783+00	1561	2727
1240	2021-01-15 22:50:15.370517+00	2021-01-15 22:50:15.370517+00	1562	2728
1241	2021-01-15 22:50:15.378422+00	2021-01-15 22:50:15.378422+00	1562	2723
1242	2021-01-15 22:50:15.386774+00	2021-01-15 22:50:15.386774+00	1562	2716
1243	2021-01-15 22:50:15.397398+00	2021-01-15 22:50:15.397398+00	1563	2741
1244	2021-01-15 22:50:15.403587+00	2021-01-15 22:50:15.403587+00	1563	2718
1245	2021-01-15 22:50:15.412112+00	2021-01-15 22:50:15.412112+00	1563	2719
1246	2021-01-15 22:50:15.420644+00	2021-01-15 22:50:15.420644+00	1564	2728
1247	2021-01-15 22:50:15.429019+00	2021-01-15 22:50:15.429019+00	1564	2719
1248	2021-01-15 22:50:15.436796+00	2021-01-15 22:50:15.436796+00	1564	2730
1249	2021-01-15 22:50:15.446035+00	2021-01-15 22:50:15.446035+00	1565	2758
1250	2021-01-15 22:50:15.462401+00	2021-01-15 22:50:15.462401+00	1565	2733
1251	2021-01-15 22:50:15.470077+00	2021-01-15 22:50:15.470077+00	1565	2727
1252	2021-01-15 22:50:15.479152+00	2021-01-15 22:50:15.479152+00	1566	2723
1253	2021-01-15 22:50:15.487087+00	2021-01-15 22:50:15.487087+00	1566	2719
1254	2021-01-15 22:50:15.495316+00	2021-01-15 22:50:15.495316+00	1566	2763
1255	2021-01-15 22:50:15.504064+00	2021-01-15 22:50:15.504064+00	1567	2718
1256	2021-01-15 22:50:15.512155+00	2021-01-15 22:50:15.512155+00	1567	2719
1257	2021-01-15 22:50:15.520737+00	2021-01-15 22:50:15.520737+00	1568	2735
1258	2021-01-15 22:50:15.528596+00	2021-01-15 22:50:15.528596+00	1568	2719
1259	2021-01-15 22:50:15.537377+00	2021-01-15 22:50:15.537377+00	1568	2720
1260	2021-01-15 22:50:15.546094+00	2021-01-15 22:50:15.546094+00	1569	2719
1261	2021-01-15 22:50:15.553273+00	2021-01-15 22:50:15.553273+00	1569	2727
1262	2021-01-15 22:50:15.563129+00	2021-01-15 22:50:15.563129+00	1570	2741
1263	2021-01-15 22:50:15.570154+00	2021-01-15 22:50:15.570154+00	1570	2723
1264	2021-01-15 22:50:15.578573+00	2021-01-15 22:50:15.578573+00	1570	2773
1265	2021-01-15 22:50:15.587351+00	2021-01-15 22:50:15.587351+00	1571	2719
1266	2021-01-15 22:50:15.595204+00	2021-01-15 22:50:15.595204+00	1571	2775
1267	2021-01-15 22:50:15.605385+00	2021-01-15 22:50:15.605385+00	1572	2716
1268	2021-01-15 22:50:15.612068+00	2021-01-15 22:50:15.612068+00	1572	2719
1269	2021-01-15 22:50:15.620282+00	2021-01-15 22:50:15.620282+00	1572	2763
1270	2021-01-15 22:50:15.629577+00	2021-01-15 22:50:15.629577+00	1573	2719
1271	2021-01-15 22:50:15.636839+00	2021-01-15 22:50:15.636839+00	1573	2780
1272	2021-01-15 22:50:15.646036+00	2021-01-15 22:50:15.646036+00	1574	2718
1273	2021-01-15 22:50:15.653505+00	2021-01-15 22:50:15.653505+00	1574	2719
1274	2021-01-15 22:50:15.662895+00	2021-01-15 22:50:15.662895+00	1574	2727
1275	2021-01-15 22:50:15.672725+00	2021-01-15 22:50:15.672725+00	1575	2719
1276	2021-01-15 22:50:15.678713+00	2021-01-15 22:50:15.678713+00	1575	2763
1277	2021-01-15 22:50:15.687558+00	2021-01-15 22:50:15.687558+00	1576	2716
1278	2021-01-15 22:50:15.695452+00	2021-01-15 22:50:15.695452+00	1576	2718
1279	2021-01-15 22:50:15.704139+00	2021-01-15 22:50:15.704139+00	1577	2718
1280	2021-01-15 22:50:15.712098+00	2021-01-15 22:50:15.712098+00	1577	2719
1281	2021-01-15 22:50:15.728888+00	2021-01-15 22:50:15.728888+00	1577	2727
1282	2021-01-15 22:50:15.737862+00	2021-01-15 22:50:15.737862+00	1578	2718
1283	2021-01-15 22:50:15.745262+00	2021-01-15 22:50:15.745262+00	1578	2719
1284	2021-01-15 22:50:15.754403+00	2021-01-15 22:50:15.754403+00	1579	2716
1285	2021-01-15 22:50:15.762311+00	2021-01-15 22:50:15.762311+00	1579	2718
1286	2021-01-15 22:50:15.771905+00	2021-01-15 22:50:15.771905+00	1580	2718
1287	2021-01-15 22:50:15.778741+00	2021-01-15 22:50:15.778741+00	1580	2719
1288	2021-01-15 22:50:15.789074+00	2021-01-15 22:50:15.789074+00	1580	2733
1289	2021-01-15 22:50:15.800533+00	2021-01-15 22:50:15.800533+00	1581	2733
1290	2021-01-15 22:50:15.803721+00	2021-01-15 22:50:15.803721+00	1581	2727
1291	2021-01-15 22:50:15.812937+00	2021-01-15 22:50:15.812937+00	1582	2719
1292	2021-01-15 22:50:15.820673+00	2021-01-15 22:50:15.820673+00	1582	2717
1293	2021-01-15 22:50:15.828806+00	2021-01-15 22:50:15.828806+00	1582	2775
1294	2021-01-15 22:50:15.83773+00	2021-01-15 22:50:15.83773+00	1583	2733
1295	2021-01-15 22:50:15.845614+00	2021-01-15 22:50:15.845614+00	1583	2727
1296	2021-01-15 22:50:15.854246+00	2021-01-15 22:50:15.854246+00	1584	2718
1297	2021-01-15 22:50:15.86233+00	2021-01-15 22:50:15.86233+00	1584	2719
1298	2021-01-15 22:50:15.87049+00	2021-01-15 22:50:15.87049+00	1584	2727
1299	2021-01-15 22:50:15.879253+00	2021-01-15 22:50:15.879253+00	1585	2719
1300	2021-01-15 22:50:15.886916+00	2021-01-15 22:50:15.886916+00	1585	2809
1301	2021-01-15 22:50:15.896519+00	2021-01-15 22:50:15.896519+00	1586	2716
1302	2021-01-15 22:50:15.903625+00	2021-01-15 22:50:15.903625+00	1586	2717
1303	2021-01-15 22:50:15.912165+00	2021-01-15 22:50:15.912165+00	1586	2763
1304	2021-01-15 22:50:15.921236+00	2021-01-15 22:50:15.921236+00	1587	2719
1305	2021-01-15 22:50:15.929409+00	2021-01-15 22:50:15.929409+00	1587	2814
1306	2021-01-15 22:50:15.93975+00	2021-01-15 22:50:15.93975+00	1587	2763
1307	2021-01-15 22:50:15.94597+00	2021-01-15 22:50:15.94597+00	1588	2718
1308	2021-01-15 22:50:15.953644+00	2021-01-15 22:50:15.953644+00	1588	2719
1309	2021-01-15 22:50:15.962086+00	2021-01-15 22:50:15.962086+00	1588	2733
1310	2021-01-15 22:50:15.972152+00	2021-01-15 22:50:15.972152+00	1589	2735
1311	2021-01-15 22:50:15.978815+00	2021-01-15 22:50:15.978815+00	1589	2719
1312	2021-01-15 22:50:15.98737+00	2021-01-15 22:50:15.98737+00	1589	2821
1313	2021-01-15 22:50:16.004448+00	2021-01-15 22:50:16.004448+00	1590	2716
1314	2021-01-15 22:50:16.013367+00	2021-01-15 22:50:16.013367+00	1591	2719
1315	2021-01-15 22:50:16.021844+00	2021-01-15 22:50:16.021844+00	1592	2719
1316	2021-01-15 22:50:16.029626+00	2021-01-15 22:50:16.029626+00	1593	2728
1317	2021-01-15 22:50:16.037047+00	2021-01-15 22:50:16.037047+00	1593	2716
1318	2021-01-15 22:50:16.045361+00	2021-01-15 22:50:16.045361+00	1593	2719
1319	2021-01-15 22:50:16.055973+00	2021-01-15 22:50:16.055973+00	1594	2719
1320	2021-01-15 22:50:16.062227+00	2021-01-15 22:50:16.062227+00	1594	2727
1321	2021-01-15 22:50:16.072439+00	2021-01-15 22:50:16.072439+00	1595	2719
1322	2021-01-15 22:50:16.079717+00	2021-01-15 22:50:16.079717+00	1596	2719
1323	2021-01-15 22:50:16.088629+00	2021-01-15 22:50:16.088629+00	1597	2716
1324	2021-01-15 22:50:16.095571+00	2021-01-15 22:50:16.095571+00	1597	2719
1325	2021-01-15 22:50:16.103693+00	2021-01-15 22:50:16.103693+00	1597	2773
1326	2021-01-15 22:50:16.112608+00	2021-01-15 22:50:16.112608+00	1598	2716
1327	2021-01-15 22:50:16.120782+00	2021-01-15 22:50:16.120782+00	1598	2719
1328	2021-01-15 22:50:16.128934+00	2021-01-15 22:50:16.128934+00	1598	2763
1329	2021-01-15 22:50:16.137885+00	2021-01-15 22:50:16.137885+00	1599	2716
1330	2021-01-15 22:50:16.145351+00	2021-01-15 22:50:16.145351+00	1599	2719
1331	2021-01-15 22:50:16.154479+00	2021-01-15 22:50:16.154479+00	1600	2723
1332	2021-01-15 22:50:16.162213+00	2021-01-15 22:50:16.162213+00	1600	2717
1333	2021-01-15 22:50:16.17115+00	2021-01-15 22:50:16.17115+00	1601	2719
1334	2021-01-15 22:50:16.361928+00	2021-01-15 22:50:16.361928+00	1601	2763
1335	2021-01-15 22:50:16.518012+00	2021-01-15 22:50:16.518012+00	1602	2719
1336	2021-01-15 22:50:16.581707+00	2021-01-15 22:50:16.581707+00	1602	2763
1337	2021-01-15 22:50:16.621344+00	2021-01-15 22:50:16.621344+00	1603	2719
1338	2021-01-15 22:50:16.689511+00	2021-01-15 22:50:16.689511+00	1604	2719
1339	2021-01-15 22:50:16.72081+00	2021-01-15 22:50:16.72081+00	1604	2763
1340	2021-01-15 22:50:16.729493+00	2021-01-15 22:50:16.729493+00	1604	2727
1341	2021-01-15 22:50:16.738017+00	2021-01-15 22:50:16.738017+00	1605	2809
1342	2021-01-15 22:50:16.745504+00	2021-01-15 22:50:16.745504+00	1605	2733
1343	2021-01-15 22:50:16.753996+00	2021-01-15 22:50:16.753996+00	1605	2727
1344	2021-01-15 22:50:16.762893+00	2021-01-15 22:50:16.762893+00	1606	2741
1345	2021-01-15 22:50:16.77064+00	2021-01-15 22:50:16.77064+00	1606	2723
1346	2021-01-15 22:50:16.779015+00	2021-01-15 22:50:16.779015+00	1606	2718
1347	2021-01-15 22:50:16.790179+00	2021-01-15 22:50:16.790179+00	1607	2728
1348	2021-01-15 22:50:16.795928+00	2021-01-15 22:50:16.795928+00	1607	2741
1349	2021-01-15 22:50:16.80402+00	2021-01-15 22:50:16.80402+00	1607	2723
1350	2021-01-15 22:50:16.813025+00	2021-01-15 22:50:16.813025+00	1608	2728
1351	2021-01-15 22:50:16.820672+00	2021-01-15 22:50:16.820672+00	1608	2723
1352	2021-01-15 22:50:16.829624+00	2021-01-15 22:50:16.829624+00	1608	2716
1353	2021-01-15 22:50:16.837944+00	2021-01-15 22:50:16.837944+00	1609	2735
1354	2021-01-15 22:50:16.845716+00	2021-01-15 22:50:16.845716+00	1609	2719
1355	2021-01-15 22:50:16.854836+00	2021-01-15 22:50:16.854836+00	1609	2726
1356	2021-01-15 22:50:16.863421+00	2021-01-15 22:50:16.863421+00	1610	2728
1357	2021-01-15 22:50:16.870967+00	2021-01-15 22:50:16.870967+00	1610	2723
1358	2021-01-15 22:50:16.878961+00	2021-01-15 22:50:16.878961+00	1610	2716
1359	2021-01-15 22:50:16.888169+00	2021-01-15 22:50:16.888169+00	1611	2728
1360	2021-01-15 22:50:16.895953+00	2021-01-15 22:50:16.895953+00	1611	2723
1361	2021-01-15 22:50:16.904123+00	2021-01-15 22:50:16.904123+00	1611	2716
1362	2021-01-15 22:50:16.913058+00	2021-01-15 22:50:16.913058+00	1612	2716
1363	2021-01-15 22:50:16.920705+00	2021-01-15 22:50:16.920705+00	1612	2718
1364	2021-01-15 22:50:16.929725+00	2021-01-15 22:50:16.929725+00	1613	2735
1365	2021-01-15 22:50:16.937364+00	2021-01-15 22:50:16.937364+00	1613	2719
1366	2021-01-15 22:50:16.946216+00	2021-01-15 22:50:16.946216+00	1614	2735
1367	2021-01-15 22:50:16.954014+00	2021-01-15 22:50:16.954014+00	1614	2719
1368	2021-01-15 22:50:16.962313+00	2021-01-15 22:50:16.962313+00	1614	2775
1369	2021-01-15 22:50:16.972459+00	2021-01-15 22:50:16.972459+00	1615	2723
1370	2021-01-15 22:50:16.979277+00	2021-01-15 22:50:16.979277+00	1615	2735
1371	2021-01-15 22:50:16.987392+00	2021-01-15 22:50:16.987392+00	1615	2719
1372	2021-01-15 22:50:16.997469+00	2021-01-15 22:50:16.997469+00	1616	2719
1373	2021-01-15 22:50:17.00411+00	2021-01-15 22:50:17.00411+00	1616	2763
1374	2021-01-15 22:50:17.012223+00	2021-01-15 22:50:17.012223+00	1616	2775
1375	2021-01-15 22:50:17.021393+00	2021-01-15 22:50:17.021393+00	1617	2735
1376	2021-01-15 22:50:17.029277+00	2021-01-15 22:50:17.029277+00	1617	2718
1377	2021-01-15 22:50:17.037479+00	2021-01-15 22:50:17.037479+00	1617	2719
1378	2021-01-15 22:50:17.046939+00	2021-01-15 22:50:17.046939+00	1618	2735
1379	2021-01-15 22:50:17.054095+00	2021-01-15 22:50:17.054095+00	1618	2718
1380	2021-01-15 22:50:17.062935+00	2021-01-15 22:50:17.062935+00	1618	2719
1381	2021-01-15 22:50:17.071281+00	2021-01-15 22:50:17.071281+00	1619	2718
1382	2021-01-15 22:50:17.079159+00	2021-01-15 22:50:17.079159+00	1619	2719
1383	2021-01-15 22:50:17.088177+00	2021-01-15 22:50:17.088177+00	1620	2735
1384	2021-01-15 22:50:17.104236+00	2021-01-15 22:50:17.104236+00	1620	2718
1385	2021-01-15 22:50:17.112503+00	2021-01-15 22:50:17.112503+00	1620	2719
1386	2021-01-15 22:50:17.121381+00	2021-01-15 22:50:17.121381+00	1621	2741
1387	2021-01-15 22:50:17.129402+00	2021-01-15 22:50:17.129402+00	1621	2723
1388	2021-01-15 22:50:17.137571+00	2021-01-15 22:50:17.137571+00	1621	2717
1389	2021-01-15 22:50:17.147656+00	2021-01-15 22:50:17.147656+00	1622	2741
1390	2021-01-15 22:50:17.155334+00	2021-01-15 22:50:17.155334+00	1622	2723
1391	2021-01-15 22:50:17.162841+00	2021-01-15 22:50:17.162841+00	1622	2717
1392	2021-01-15 22:50:17.171882+00	2021-01-15 22:50:17.171882+00	1623	2718
1393	2021-01-15 22:50:17.179179+00	2021-01-15 22:50:17.179179+00	1623	2719
1394	2021-01-15 22:50:17.18752+00	2021-01-15 22:50:17.18752+00	1623	2727
1395	2021-01-15 22:50:17.196513+00	2021-01-15 22:50:17.196513+00	1624	2741
1396	2021-01-15 22:50:17.204346+00	2021-01-15 22:50:17.204346+00	1624	2723
1397	2021-01-15 22:50:17.212355+00	2021-01-15 22:50:17.212355+00	1624	2717
1398	2021-01-15 22:50:17.221465+00	2021-01-15 22:50:17.221465+00	1625	2741
1399	2021-01-15 22:50:17.229275+00	2021-01-15 22:50:17.229275+00	1625	2723
1400	2021-01-15 22:50:17.237511+00	2021-01-15 22:50:17.237511+00	1625	2719
1401	2021-01-15 22:50:17.246215+00	2021-01-15 22:50:17.246215+00	1626	2719
1402	2021-01-15 22:50:17.254292+00	2021-01-15 22:50:17.254292+00	1626	2733
1403	2021-01-15 22:50:17.264124+00	2021-01-15 22:50:17.264124+00	1626	2727
1404	2021-01-15 22:50:17.271733+00	2021-01-15 22:50:17.271733+00	1627	2719
1405	2021-01-15 22:50:17.279445+00	2021-01-15 22:50:17.279445+00	1627	2763
1406	2021-01-15 22:50:17.313312+00	2021-01-15 22:50:17.313312+00	1628	2741
1407	2021-01-15 22:50:17.329502+00	2021-01-15 22:50:17.329502+00	1628	2723
1408	2021-01-15 22:50:17.337607+00	2021-01-15 22:50:17.337607+00	1628	2727
1409	2021-01-15 22:50:17.346395+00	2021-01-15 22:50:17.346395+00	1629	2728
1410	2021-01-15 22:50:17.354308+00	2021-01-15 22:50:17.354308+00	1629	2723
1411	2021-01-15 22:50:17.362662+00	2021-01-15 22:50:17.362662+00	1629	2730
1412	2021-01-15 22:50:17.372586+00	2021-01-15 22:50:17.372586+00	1630	2735
1413	2021-01-15 22:50:17.379299+00	2021-01-15 22:50:17.379299+00	1630	2716
1414	2021-01-15 22:50:17.387705+00	2021-01-15 22:50:17.387705+00	1630	2718
1415	2021-01-15 22:50:17.397182+00	2021-01-15 22:50:17.397182+00	1631	2741
1416	2021-01-15 22:50:17.404431+00	2021-01-15 22:50:17.404431+00	1631	2723
1417	2021-01-15 22:50:17.412614+00	2021-01-15 22:50:17.412614+00	1631	2717
1418	2021-01-15 22:50:17.421594+00	2021-01-15 22:50:17.421594+00	1632	2719
1419	2021-01-15 22:50:17.429275+00	2021-01-15 22:50:17.429275+00	1632	2758
1420	2021-01-15 22:50:17.437524+00	2021-01-15 22:50:17.437524+00	1632	2763
1421	2021-01-15 22:50:17.446611+00	2021-01-15 22:50:17.446611+00	1633	2716
1422	2021-01-15 22:50:17.454963+00	2021-01-15 22:50:17.454963+00	1634	2723
1423	2021-01-15 22:50:17.462875+00	2021-01-15 22:50:17.462875+00	1634	2716
1424	2021-01-15 22:50:17.471005+00	2021-01-15 22:50:17.471005+00	1634	2718
1425	2021-01-15 22:50:17.479965+00	2021-01-15 22:50:17.479965+00	1635	2723
1426	2021-01-15 22:50:17.487952+00	2021-01-15 22:50:17.487952+00	1635	2716
1427	2021-01-15 22:50:17.496132+00	2021-01-15 22:50:17.496132+00	1635	2773
1428	2021-01-15 22:50:17.504918+00	2021-01-15 22:50:17.504918+00	1636	2718
1429	2021-01-15 22:50:17.512563+00	2021-01-15 22:50:17.512563+00	1636	2719
1430	2021-01-15 22:50:17.521836+00	2021-01-15 22:50:17.521836+00	1637	2741
1431	2021-01-15 22:50:17.530265+00	2021-01-15 22:50:17.530265+00	1637	2723
1432	2021-01-15 22:50:17.537677+00	2021-01-15 22:50:17.537677+00	1637	2733
1433	2021-01-15 22:50:17.54673+00	2021-01-15 22:50:17.54673+00	1638	2741
1434	2021-01-15 22:50:17.554424+00	2021-01-15 22:50:17.554424+00	1638	2719
1435	2021-01-15 22:50:17.562637+00	2021-01-15 22:50:17.562637+00	1638	2727
1436	2021-01-15 22:50:17.572104+00	2021-01-15 22:50:17.572104+00	1639	2719
1437	2021-01-15 22:50:17.579205+00	2021-01-15 22:50:17.579205+00	1639	2773
1438	2021-01-15 22:50:17.587857+00	2021-01-15 22:50:17.587857+00	1639	2727
1439	2021-01-15 22:50:17.605301+00	2021-01-15 22:50:17.605301+00	1640	2716
1440	2021-01-15 22:50:17.61373+00	2021-01-15 22:50:17.61373+00	1640	2719
1441	2021-01-15 22:50:17.621135+00	2021-01-15 22:50:17.621135+00	1640	2763
1442	2021-01-15 22:50:17.630404+00	2021-01-15 22:50:17.630404+00	1641	2723
1443	2021-01-15 22:50:17.637859+00	2021-01-15 22:50:17.637859+00	1641	2730
1444	2021-01-15 22:50:17.647129+00	2021-01-15 22:50:17.647129+00	1641	2717
1445	2021-01-15 22:50:17.655818+00	2021-01-15 22:50:17.655818+00	1642	2735
1446	2021-01-15 22:50:17.662894+00	2021-01-15 22:50:17.662894+00	1642	2719
1447	2021-01-15 22:50:17.672208+00	2021-01-15 22:50:17.672208+00	1643	2741
1448	2021-01-15 22:50:17.679556+00	2021-01-15 22:50:17.679556+00	1643	2723
1449	2021-01-15 22:50:17.687872+00	2021-01-15 22:50:17.687872+00	1643	2773
1450	2021-01-15 22:50:17.697268+00	2021-01-15 22:50:17.697268+00	1644	2716
1451	2021-01-15 22:50:17.70437+00	2021-01-15 22:50:17.70437+00	1644	2718
1452	2021-01-15 22:50:17.71273+00	2021-01-15 22:50:17.71273+00	1644	2733
1453	2021-01-15 22:50:17.722497+00	2021-01-15 22:50:17.722497+00	1645	2719
1454	2021-01-15 22:50:17.730515+00	2021-01-15 22:50:17.730515+00	1645	2733
1455	2021-01-15 22:50:17.737779+00	2021-01-15 22:50:17.737779+00	1645	2763
1456	2021-01-15 22:50:17.747306+00	2021-01-15 22:50:17.747306+00	1646	2719
1457	2021-01-15 22:50:17.754636+00	2021-01-15 22:50:17.754636+00	1646	2773
1458	2021-01-15 22:50:17.763426+00	2021-01-15 22:50:17.763426+00	1647	2719
1459	2021-01-15 22:50:17.771049+00	2021-01-15 22:50:17.771049+00	1647	2727
1460	2021-01-15 22:50:17.782072+00	2021-01-15 22:50:17.782072+00	1648	2719
1461	2021-01-15 22:50:17.787875+00	2021-01-15 22:50:17.787875+00	1648	2775
1462	2021-01-15 22:50:17.801227+00	2021-01-15 22:50:17.801227+00	1649	2719
1463	2021-01-15 22:50:17.804376+00	2021-01-15 22:50:17.804376+00	1649	2763
1464	2021-01-15 22:50:17.821562+00	2021-01-15 22:50:17.821562+00	1649	2775
1465	2021-01-15 22:50:17.830043+00	2021-01-15 22:50:17.830043+00	1650	2735
1466	2021-01-15 22:50:17.837809+00	2021-01-15 22:50:17.837809+00	1650	2719
1467	2021-01-15 22:50:17.847293+00	2021-01-15 22:50:17.847293+00	1651	2735
1468	2021-01-15 22:50:17.854654+00	2021-01-15 22:50:17.854654+00	1651	2719
1469	2021-01-15 22:50:17.863221+00	2021-01-15 22:50:17.863221+00	1651	2763
1470	2021-01-15 22:50:17.871951+00	2021-01-15 22:50:17.871951+00	1652	2719
1471	2021-01-15 22:50:17.879514+00	2021-01-15 22:50:17.879514+00	1652	2763
1472	2021-01-15 22:50:17.888827+00	2021-01-15 22:50:17.888827+00	1653	2716
1473	2021-01-15 22:50:17.896569+00	2021-01-15 22:50:17.896569+00	1653	2719
1474	2021-01-15 22:50:17.905119+00	2021-01-15 22:50:17.905119+00	1654	2741
1475	2021-01-15 22:50:17.912775+00	2021-01-15 22:50:17.912775+00	1654	2719
1476	2021-01-15 22:50:17.921206+00	2021-01-15 22:50:17.921206+00	1654	2726
1477	2021-01-15 22:50:17.930273+00	2021-01-15 22:50:17.930273+00	1655	2719
1478	2021-01-15 22:50:17.937834+00	2021-01-15 22:50:17.937834+00	1655	2733
1479	2021-01-15 22:50:17.946333+00	2021-01-15 22:50:17.946333+00	1655	2727
1480	2021-01-15 22:50:17.95527+00	2021-01-15 22:50:17.95527+00	1656	2716
1481	2021-01-15 22:50:17.96297+00	2021-01-15 22:50:17.96297+00	1656	2719
1482	2021-01-15 22:50:17.972246+00	2021-01-15 22:50:17.972246+00	1657	2719
1483	2021-01-15 22:50:17.97982+00	2021-01-15 22:50:17.97982+00	1657	2763
1484	2021-01-15 22:50:17.988767+00	2021-01-15 22:50:17.988767+00	1658	2728
1485	2021-01-15 22:50:18.004768+00	2021-01-15 22:50:18.004768+00	1658	2723
1486	2021-01-15 22:50:18.046419+00	2021-01-15 22:50:18.046419+00	1658	2730
1487	2021-01-15 22:50:18.080651+00	2021-01-15 22:50:18.080651+00	1659	2719
1488	2021-01-15 22:50:18.12763+00	2021-01-15 22:50:18.12763+00	1659	2763
1489	2021-01-15 22:50:18.163765+00	2021-01-15 22:50:18.163765+00	1660	2716
1490	2021-01-15 22:50:18.171751+00	2021-01-15 22:50:18.171751+00	1660	2719
1491	2021-01-15 22:50:18.180067+00	2021-01-15 22:50:18.180067+00	1660	2763
1492	2021-01-15 22:50:18.189291+00	2021-01-15 22:50:18.189291+00	1661	2719
1493	2021-01-15 22:50:18.19717+00	2021-01-15 22:50:18.19717+00	1662	2718
1494	2021-01-15 22:50:18.20482+00	2021-01-15 22:50:18.20482+00	1662	2719
1495	2021-01-15 22:50:18.213822+00	2021-01-15 22:50:18.213822+00	1663	2735
1496	2021-01-15 22:50:18.221419+00	2021-01-15 22:50:18.221419+00	1663	2719
1497	2021-01-15 22:50:18.229731+00	2021-01-15 22:50:18.229731+00	1663	2727
1498	2021-01-15 22:50:18.239291+00	2021-01-15 22:50:18.239291+00	1664	2723
1499	2021-01-15 22:50:18.246351+00	2021-01-15 22:50:18.246351+00	1664	2719
1500	2021-01-15 22:50:18.254619+00	2021-01-15 22:50:18.254619+00	1664	2773
1501	2021-01-15 22:50:18.263734+00	2021-01-15 22:50:18.263734+00	1665	2716
1502	2021-01-15 22:50:18.271394+00	2021-01-15 22:50:18.271394+00	1665	2718
1503	2021-01-15 22:50:18.279773+00	2021-01-15 22:50:18.279773+00	1665	2727
1504	2021-01-15 22:50:18.307147+00	2021-01-15 22:50:18.307147+00	1666	2723
1505	2021-01-15 22:50:18.321476+00	2021-01-15 22:50:18.321476+00	1666	2719
1506	2021-01-15 22:50:18.329972+00	2021-01-15 22:50:18.329972+00	1666	2727
1507	2021-01-15 22:50:18.33882+00	2021-01-15 22:50:18.33882+00	1667	2728
1508	2021-01-15 22:50:18.346363+00	2021-01-15 22:50:18.346363+00	1667	2723
1509	2021-01-15 22:50:18.354861+00	2021-01-15 22:50:18.354861+00	1667	2716
1510	2021-01-15 22:50:18.364894+00	2021-01-15 22:50:18.364894+00	1668	2718
1511	2021-01-15 22:50:18.379936+00	2021-01-15 22:50:18.379936+00	1668	2727
1512	2021-01-15 22:50:18.389355+00	2021-01-15 22:50:18.389355+00	1669	2723
1513	2021-01-15 22:50:18.396498+00	2021-01-15 22:50:18.396498+00	1669	2716
1514	2021-01-15 22:50:18.405803+00	2021-01-15 22:50:18.405803+00	1669	2719
1515	2021-01-15 22:50:18.413571+00	2021-01-15 22:50:18.413571+00	1670	2728
1516	2021-01-15 22:50:18.421234+00	2021-01-15 22:50:18.421234+00	1670	2723
1517	2021-01-15 22:50:18.430551+00	2021-01-15 22:50:18.430551+00	1670	2716
1518	2021-01-15 22:50:18.439073+00	2021-01-15 22:50:18.439073+00	1671	2741
1519	2021-01-15 22:50:18.446353+00	2021-01-15 22:50:18.446353+00	1671	2716
1520	2021-01-15 22:50:18.454701+00	2021-01-15 22:50:18.454701+00	1671	2718
1521	2021-01-15 22:50:18.46371+00	2021-01-15 22:50:18.46371+00	1672	2719
1522	2021-01-15 22:50:18.471688+00	2021-01-15 22:50:18.471688+00	1672	2733
1523	2021-01-15 22:50:18.47978+00	2021-01-15 22:50:18.47978+00	1672	2763
1524	2021-01-15 22:50:18.489195+00	2021-01-15 22:50:18.489195+00	1673	2728
1525	2021-01-15 22:50:18.496437+00	2021-01-15 22:50:18.496437+00	1673	2723
1526	2021-01-15 22:50:18.504838+00	2021-01-15 22:50:18.504838+00	1673	2716
1527	2021-01-15 22:50:18.513669+00	2021-01-15 22:50:18.513669+00	1674	2719
1528	2021-01-15 22:50:18.521268+00	2021-01-15 22:50:18.521268+00	1674	2763
1529	2021-01-15 22:50:18.531207+00	2021-01-15 22:50:18.531207+00	1675	2728
1530	2021-01-15 22:50:18.53826+00	2021-01-15 22:50:18.53826+00	1675	2723
1531	2021-01-15 22:50:18.546453+00	2021-01-15 22:50:18.546453+00	1675	2716
1532	2021-01-15 22:50:18.555493+00	2021-01-15 22:50:18.555493+00	1676	2723
1533	2021-01-15 22:50:18.563777+00	2021-01-15 22:50:18.563777+00	1677	2723
1534	2021-01-15 22:50:18.57185+00	2021-01-15 22:50:18.57185+00	1677	2717
1535	2021-01-15 22:50:18.581236+00	2021-01-15 22:50:18.581236+00	1678	2719
1536	2021-01-15 22:50:18.588058+00	2021-01-15 22:50:18.588058+00	1678	2763
1537	2021-01-15 22:50:18.597209+00	2021-01-15 22:50:18.597209+00	1679	2728
1538	2021-01-15 22:50:18.605076+00	2021-01-15 22:50:18.605076+00	1679	2723
1539	2021-01-15 22:50:18.613373+00	2021-01-15 22:50:18.613373+00	1679	2716
1540	2021-01-15 22:50:18.621982+00	2021-01-15 22:50:18.621982+00	1680	2741
1541	2021-01-15 22:50:18.629794+00	2021-01-15 22:50:18.629794+00	1680	2723
1542	2021-01-15 22:50:18.638187+00	2021-01-15 22:50:18.638187+00	1680	2719
1543	2021-01-15 22:50:18.647486+00	2021-01-15 22:50:18.647486+00	1681	2741
1544	2021-01-15 22:50:18.66337+00	2021-01-15 22:50:18.66337+00	1681	2723
1545	2021-01-15 22:50:18.671648+00	2021-01-15 22:50:18.671648+00	1681	2719
1546	2021-01-15 22:50:18.682009+00	2021-01-15 22:50:18.682009+00	1682	2719
1547	2021-01-15 22:50:18.689292+00	2021-01-15 22:50:18.689292+00	1682	2733
1548	2021-01-15 22:50:18.696724+00	2021-01-15 22:50:18.696724+00	1682	2773
1549	2021-01-15 22:50:18.705584+00	2021-01-15 22:50:18.705584+00	1683	2735
1550	2021-01-15 22:50:18.713533+00	2021-01-15 22:50:18.713533+00	1683	2719
1551	2021-01-15 22:50:18.721469+00	2021-01-15 22:50:18.721469+00	1683	2763
1552	2021-01-15 22:50:18.731131+00	2021-01-15 22:50:18.731131+00	1684	2723
1553	2021-01-15 22:50:18.73841+00	2021-01-15 22:50:18.73841+00	1684	2719
1554	2021-01-15 22:50:18.746629+00	2021-01-15 22:50:18.746629+00	1684	2726
1555	2021-01-15 22:50:18.75533+00	2021-01-15 22:50:18.75533+00	1685	2735
1556	2021-01-15 22:50:18.763712+00	2021-01-15 22:50:18.763712+00	1685	2718
1557	2021-01-15 22:50:18.771636+00	2021-01-15 22:50:18.771636+00	1685	2719
1558	2021-01-15 22:50:18.780654+00	2021-01-15 22:50:18.780654+00	1686	2733
1559	2021-01-15 22:50:18.788822+00	2021-01-15 22:50:18.788822+00	1686	2763
1560	2021-01-15 22:50:18.796917+00	2021-01-15 22:50:18.796917+00	1686	2727
1561	2021-01-15 22:50:18.805893+00	2021-01-15 22:50:18.805893+00	1687	2719
1562	2021-01-15 22:50:18.813525+00	2021-01-15 22:50:18.813525+00	1687	2720
1563	2021-01-15 22:50:18.822339+00	2021-01-15 22:50:18.822339+00	1688	2719
1564	2021-01-15 22:50:18.830126+00	2021-01-15 22:50:18.830126+00	1688	2727
1565	2021-01-15 22:50:18.839017+00	2021-01-15 22:50:18.839017+00	1689	2719
1566	2021-01-15 22:50:18.846778+00	2021-01-15 22:50:18.846778+00	1689	2726
1567	2021-01-15 22:50:18.855058+00	2021-01-15 22:50:18.855058+00	1689	2775
1568	2021-01-15 22:50:18.865862+00	2021-01-15 22:50:18.865862+00	1690	2723
1569	2021-01-15 22:50:18.871696+00	2021-01-15 22:50:18.871696+00	1690	2719
1570	2021-01-15 22:50:18.88021+00	2021-01-15 22:50:18.88021+00	1690	2773
1571	2021-01-15 22:50:18.889442+00	2021-01-15 22:50:18.889442+00	1691	2718
1572	2021-01-15 22:50:18.905312+00	2021-01-15 22:50:18.905312+00	1691	2719
1573	2021-01-15 22:50:18.914342+00	2021-01-15 22:50:18.914342+00	1692	2718
1574	2021-01-15 22:50:18.921775+00	2021-01-15 22:50:18.921775+00	1692	2719
1575	2021-01-15 22:50:18.930196+00	2021-01-15 22:50:18.930196+00	1692	2733
1576	2021-01-15 22:50:18.93947+00	2021-01-15 22:50:18.93947+00	1693	2719
1577	2021-01-15 22:50:18.946918+00	2021-01-15 22:50:18.946918+00	1693	2733
1578	2021-01-15 22:50:18.955974+00	2021-01-15 22:50:18.955974+00	1694	2735
1579	2021-01-15 22:50:18.96364+00	2021-01-15 22:50:18.96364+00	1694	2716
1580	2021-01-15 22:50:18.971842+00	2021-01-15 22:50:18.971842+00	1694	2719
\.


--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 202
-- Name: grenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: movies
--

SELECT pg_catalog.setval('public.grenres_id_seq', 3463, true);


--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 204
-- Name: moviesGenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: movies
--

SELECT pg_catalog.setval('public."moviesGenres_id_seq"', 1580, true);


--
-- TOC entry 2982 (class 0 OID 0)
-- Dependencies: 200
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: movies
--

SELECT pg_catalog.setval('public.movies_id_seq', 1840, true);


--
-- TOC entry 2831 (class 2606 OID 16444)
-- Name: genres genres_genre_genre1_key; Type: CONSTRAINT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_genre_genre1_key UNIQUE (genre) INCLUDE (genre);


--
-- TOC entry 2833 (class 2606 OID 16406)
-- Name: genres grenres_pkey; Type: CONSTRAINT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT grenres_pkey PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 16416)
-- Name: moviesGenres moviesGenres_pkey; Type: CONSTRAINT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public."moviesGenres"
    ADD CONSTRAINT "moviesGenres_pkey" PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 16395)
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 16471)
-- Name: movies movies_title_title1_key; Type: CONSTRAINT; Schema: public; Owner: movies
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_title_title1_key UNIQUE (title) INCLUDE (title);


-- Completed on 2021-01-15 18:01:24 EST

--
-- PostgreSQL database dump complete
--

