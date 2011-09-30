-- typ serial działa jak: integer NOT NULL AUTO_INCREMENT

-- Przy tworzeniu modeli na podstawie tabel:
-- rails g model <nazwa_tabeli_w_liczbie_pojedynczej>
-- zwykle wystarczy (podniesć pierwszą literę) i uciąć 's' z końca, ale są wyjątki:
-- tabela categories -> model Category
-- tabela cities -> model City
-- tabela statuses -> model Status
-- typy danych w PostgreSQL: http://www.postgresql.org/docs/8.4/static/datatype.html
--================================================================

-- TICKETS
DROP TABLE IF EXISTS "reservations";
DROP TABLE IF EXISTS "tickets";
CREATE TABLE "tickets" (
	   		 		   	id serial unique primary key, 
						seance_id int not null,
						seat_id int not null,
						user_id int,
						price_id int not null,
						discount_id int not null,
						bought boolean default false,
						cancelled boolean default false,
						created_at timestamp without time zone,
						updated_at timestamp without time zone
						);

-- SEATS
DROP TABLE IF EXISTS "seats";
CREATE TABLE "seats" (
	   		 		  id serial unique primary key,
					  room_id int not null,
					  row char(1) not null,
					  collumn smallint not null
					  );

-- SEANCE
DROP TABLE IF EXISTS "seances";
CREATE TABLE "seances" (
	   		 		   	id serial unique primary key,
						cinema_film_id int not null,
						room_id int not null,
						date_from date,
						time_from time without time zone,
						-- date_untill i time_untill nie są potrzebne
						--date_untill date,
						--time_untill time without time zone,
						created_at timestamp without time zone,
						updated_at timestamp without time zone
						);
	
-- cinema_films
DROP TABLE IF EXISTS "cinema_films";
CREATE TABLE "cinema_films" (
	   		 				  id serial unique primary key,
							  cinema_id int not null,
							  film_id int not null,
							  date_from date not null,
							  date_untill date
							  );

-- ROOM
DROP TABLE IF EXISTS "rooms";
CREATE TABLE rooms (
	   		 	   	id serial unique primary key,
					cinema_id int not null,
					"number" smallint not null,
					size smallint	 --liczba miejsc
					);

-- CINEMAS
DROP TABLE IF EXISTS "cinemas";
CREATE TABLE "cinemas" (
	   		 		   	id serial unique primary key,
						city_id int not null,
						name varchar(255) not null,
						address varchar(255),
						phone decimal(9,0),
						created_at timestamp without time zone,
						updated_at timestamp without time zone
						);
--INSERT INTO "cinemas" (id, city_id, name)
--Values (0, 0, "global")


-- WORKERS
DROP TABLE IF EXISTS "workers";
CREATE TABLE "workers" (
	   		 		   	id serial unique primary key,
						cinema_id int not null,
						status_id int not null,
						login varchar(12) not null unique,
						hashed_password char(40) null,
						first_name varchar(30) not null,
						last_name varchar(30) not null,
						phone decimal(9,0),
						email varchar(50) unique,
						created_at timestamp without time zone,
						updated_at timestamp without time zone
						);

-- USERS
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
	   		 		  id serial unique primary key,
					  login varchar(12) not null unique,
					  hashed_password char(40) null,	
					  email varchar(50) not null unique,					  	
					  first_name varchar(30),
					  last_name varchar(30),
					  phone decimal(9,0),
					  created_at timestamp without time zone,
					  updated_at timestamp without time zone
					  );
	
-- FILMS
DROP TABLE IF EXISTS "films";
CREATE TABLE "films" (
	   		 		  id serial unique primary key,
					  title varchar(100) not null,
					  director varchar(50) not null,
					  year smallint not null,
					  category_id int,
				  	  trailer varchar(75), -- link do trailera (youtube)
					  length smallint,
					  description TEXT
					  );

INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Avatar','James Cameron',2009, 16, 'http://www.youtube.com/watch?v=lh-EoXYjB9g', 162, '"Avatar" opowiada historię sparaliżowanego byłego komandosa, który dostaje szansę odzyskaniaa zdrowego ciała. Musi jednak wziąć udział w specjalnym programie militarnym o nazwie Avatar.');
INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Ghost Writer', 'Roman Polański', 2010, 2, 'http://www.youtube.com/watch?v=L_AerBW0EcI', 128, 'Bohaterem filmu jest "Ghostwriter" - pisarz, który za pieniądze tworzy dla innych, oddając prawa do swego dzieła. Zostaje zaangażowany do napisania w imieniu byłego premiera Wielkiej Brytanii pamiętników. W trakcie prac nad książką, odkrywa sekrety, przez które znajduje się w śmiertelnym zagrożeniu.');
INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Gladiator', 'Ridley Scott', 2000, 5, 'http://www.youtube.com/watch?v=ol67qo3WhJk', 155, 'Generał Maximus, jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi, który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z cała rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje coraz większą popularność, a na jego występy zaczyna przychodzi coraz więcej ludzi. Maximus jako gladiator wraca do Rzymu, by pomścić zamordowanie swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium.');

-- Prices
DROP TABLE IF EXISTS "prices";
CREATE TABLE "prices" (
	   		 			 id serial unique primary key,
						 price decimal(4, 2),
					 	description varchar(255),
						 created_at timestamp without time zone,
						 updated_at timestamp without time zone
						 );
						 
-- dicsounts
DROP TABLE IF EXISTS "discounts";
CREATE TABLE "discounts" (
	   		 			 id serial unique primary key,
						 discount decimal(4, 2),
					 	description varchar(255),
						 created_at timestamp without time zone,
						 updated_at timestamp without time zone
						 );
						 				 
-- STATUSES
DROP TABLE IF EXISTS "statuses";
CREATE TABLE "statuses" (
	   		 			 id serial unique primary key,
						 name varchar(25) not null
						 );
INSERT INTO "statuses" (id, name) VALUES (0, 'Admin Globalny');
INSERT INTO "statuses" (name) VALUES ('Admin Lokalny');
INSERT INTO "statuses" (name) VALUES ('Dyrektor');
INSERT INTO "statuses" (name) VALUES ('Manager');
INSERT INTO "statuses" (name) VALUES ('Kasjer');
	
-- CATEGORIES
DROP TABLE IF EXISTS "categories";
CREATE TABLE "categories" (
	   		 			   id serial unique primary key,
						   name varchar(25) not null
						   );
						   
INSERT INTO "categories" (name) VALUES ('Sensacyjny');
INSERT INTO "categories" (name) VALUES ('Przygodowy');
INSERT INTO "categories" (name) VALUES ('Animacja');
INSERT INTO "categories" (name) VALUES ('Komedia');
INSERT INTO "categories" (name) VALUES ('Kostiumowy');
INSERT INTO "categories" (name) VALUES ('Dokumentalny');
INSERT INTO "categories" (name) VALUES ('Dramat');
INSERT INTO "categories" (name) VALUES ('Familijny');
INSERT INTO "categories" (name) VALUES ('Fantasy');
INSERT INTO "categories" (name) VALUES ('Horror');
INSERT INTO "categories" (name) VALUES ('Niezależny');
INSERT INTO "categories" (name) VALUES ('Dla dzieci');
INSERT INTO "categories" (name) VALUES ('Musical');
INSERT INTO "categories" (name) VALUES ('Kryminał');
INSERT INTO "categories" (name) VALUES ('Romans');
INSERT INTO "categories" (name) VALUES ('Sci-Fi');
INSERT INTO "categories" (name) VALUES ('Triller');
INSERT INTO "categories" (name) VALUES ('Wojenny');
INSERT INTO "categories" (name) VALUES ('Western');

-- CITIES
DROP TABLE IF EXISTS "cities";
CREATE TABLE "cities" (
	   		 		   id serial unique primary key,
					   name varchar(25) not null
					   );

INSERT INTO "cities" (name) VALUES ('Białystok');
INSERT INTO "cities" (name) VALUES ('Bolesławiec');
INSERT INTO "cities" (name) VALUES ('Częstochowa');
INSERT INTO "cities" (name) VALUES ('Gdańsk');
INSERT INTO "cities" (name) VALUES ('Katowice');
INSERT INTO "cities" (name) VALUES ('Kraków');
INSERT INTO "cities" (name) VALUES ('Łódź');
INSERT INTO "cities" (name) VALUES ('Opole');
INSERT INTO "cities" (name) VALUES ('Poznań');
INSERT INTO "cities" (name) VALUES ('Szczecin');
INSERT INTO "cities" (name) VALUES ('Warszawa');
INSERT INTO "cities" (name) VALUES ('Wrocław');
INSERT INTO "cities" (name) VALUES ('Zielona Góra');

-- od Kamila
---  KINA
INSERT INTO "cinemas" (city_id, "name", address, phone)
VALUES(12, 'Lalka', 'ul. B. Prusa 32', 717924405);

INSERT INTO "cinemas" (city_id, "name", address, phone)
VALUES(12, 'Kino ACF Dworcowe', 'ul. Piłsudskiego 105', 888372987);

INSERT INTO "cinemas" (city_id, "name", address, phone)
VALUES(12, 'Cinema City Korona', 'ul. Krzywoustego 126 C', 713236000);

INSERT INTO "cinemas" (city_id, "name", address, phone)
VALUES(12, 'Kino 5D Extreme', 'ul. Legnicka 58', 713385284);


---  PRACOWNICY

INSERT INTO "workers" (cinema_id, status_id, login, first_name, last_name)
VALUES(1, 1, 'kf', 'Kamil', 'Frankiewicz');

INSERT INTO "workers" (cinema_id, status_id, login, first_name, last_name)
VALUES(1, 1, 'wt', 'Włodzimierz', 'Tuligłowicz');

INSERT INTO "workers" (cinema_id, status_id, login, first_name, last_name)
VALUES(1, 1, 'pz', 'Piotr', 'Zuzak');

INSERT INTO "workers" (cinema_id, status_id, login, first_name, last_name)
VALUES(1, 1, 'dj', 'Damian', 'Jaszczurowski');
	
INSERT INTO "workers" (cinema_id, status_id, login, hashed_password, first_name, last_name, phone, email)
(3,1,'jan','12b242e1f186a870f076b13298fecc8e68c31474','Jan','Brzechwa',888456789,'klhasj@wp.pl')

--- FILMY
INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Thor','Kenneth Branagh',2011, 1,
'http://www.youtube.com/watch?v=JOddp-nlNvQ', 93, 
'Zrealizowany na podstawie kultowego komiksu film, opowiada przygody nordyckiego boga Thora, władcy
 piorunów - syna Odyna który zostaje wygnany z Asgardu do świata ludzi. Na ziemi zostaje pozbawiony
 swoich boskich mocy, przez co staje się zwykłym śmiertelnikiem o nazwisku dr Donald Blake, przez 
swoje zesłanie ma nauczyć się pokory. Brak mocy to jeden z wielu problemów boga, po wygnaniu stracił 
on całą swoją pamięć. Dopiero po ujrzeniu Mjöllnira - swojego magicznego młota, wykutego z nieznanego
 metalu przypomina sobie o swojej prawdziwej tożsamości. Po przywróceniu pamięci zaczyna on swoją
 walkę o bezpieczeństwo ludzkiego gatunku.');

INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Harry Potter i Insygnia Śmierci. Część I','David Yates', 2010, 9,
'http://www.youtube.com/watch?v=mq9ePp9tcmw&feature=fvst', 146,
 'Harry, Ron i Hermiona wyruszają na niebezpieczną podróż, w celu poszukiwania Horkruksów. Nie mają pojęcia,
 gdzie mogą być, lecz nikt im nie może pomóc - zdani są tylko na siebie.
Voldemort przejął kontrolę nad Ministerstwem Magii. Jego poplecznicy – Śmierciożercy – terroryzują wszystkich,
 którzy sprzeciwiają się Czarnemu Panu. Harry ściga się z czasem. ');

INSERT INTO "films" (title, director, year, category_id, trailer, length, description)
VALUES('Erratum','Marek Lechki', 2011, 7,
'http://www.youtube.com/watch?v=KrcApGRSjbw', 99,
 'Michał jedzie do miasta swojego urodzenia, aby załatwić sprawę o którą prosi go szef i od razu wracać. 
Sprawy przybierają jednak inny obrót. Michał musi pozostać tu parę dni dłużej. Chodząc po mieście spotyka bliskie
 mu niegdyś osoby, natrafia na znajome miejsca. Powoli odzywa się w nim coś, o czym dawno zapomniał.');
 

--- KINO_FILM
INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 1, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 1, '2011-04-05');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 1, '2011-04-06');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 2, '2011-04-07');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 2, '2011-04-08');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 2, '2011-04-09');


INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 3, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 3, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 3, '2011-04-10');


INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 4, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 4, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 4, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 5, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 5, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 5, '2011-04-12');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 4, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 4, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(3, 6, '2011-04-22');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(1, 6, '2011-04-04');

INSERT INTO "cinema_films" (cinema_id, film_id, date_from)
VALUES(2, 6, '2011-04-30');



--- SALE
INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(3, 1, 200);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(3, 2, 200);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(3, 3, 300);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(3, 4, 300);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(2, 1, 300);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(1, 1, 300);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(4, 1, 200);

INSERT INTO "rooms" (cinema_id, "number", size)
VALUES(4, 2, 200);


--- SENASE

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(1, 1, '2011-04-15', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(2, 1, '2011-04-16', '15:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(3, 2, '2011-04-17', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(4, 2, '2011-04-18', '16:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(6, 1, '2011-04-15', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(5, 1, '2011-04-16', '15:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(6, 2, '2011-04-17', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(7, 2, '2011-04-18', '16:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(1, 2, '2011-04-15', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(2, 3, '2011-04-16', '15:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(3, 3, '2011-04-17', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(4, 3, '2011-04-18', '16:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(6, 3, '2011-04-15', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(5, 3, '2011-04-16', '15:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(6, 2, '2011-04-17', '12:00');

INSERT INTO "seances" (cinema_film_id, room_id, date_from, time_from)
VALUES(7, 2, '2011-04-18', '16:00');