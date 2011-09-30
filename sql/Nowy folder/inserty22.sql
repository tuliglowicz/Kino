drop table if exists "tickets";
CREATE TABLE tickets(
  id serial unique primary key,
  seance_id integer NOT NULL,
  seat_id integer,
  user_id integer,
  price_id integer,
  discount_id integer
);


INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,1);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,50);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,10);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (4,150);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (5,200);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (6,250);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (7,300);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (8,350);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,400);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,450);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,500);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (4,550);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (5,600);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (6,650);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (7,700);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (8,750);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,800);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,850);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,900);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (4,950);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (5,10);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (6,110);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (7,130);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (8,450);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,890);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,876);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,456);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (4,785);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (5,999);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (6,31);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (7,67);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (8,45);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,345);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,8);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,559);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (4,98);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (5,156);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (6,156);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (7,18);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (8,15);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (1,199);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (2,10);
INSERT INTO "tickets"(user_id, seance_id)
VALUES (3,100); 


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
					  updated_at timestamp without time zone,
					  about xml
					);

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('janek1945','d801d44ef2e12006d1f15c987e9a5ec299f7830c','janek1945@wuj.pl','Jan','Malina', 123654789, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kazik123','3e0f6ff269d7c6126fb63373c767a51b0bb0ba8a','kazik44@gt.pl','Kazimierz','Stonoga', 994034904, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('martusia','eabefb9963420517dd6a622a7dfc26f36f0447a1','marta22@rt.pl','Marta','Marecka', 894758263, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('ala22f','a87b877e94143d8997748f33aa6161e207bfceb1','alka55@ww.pl','Alicja','Fik', 435789432, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('Olka','76ce26c45890f345cb4a4fcea195be41273629d2','olkaK@ff.pl','Aleksandra','Kaczmarczyk', 904785236, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('seba','9c7550cc418b76f1e63634d174a39d6cfe063f61','seba@dd.pl','Sebastian','Sikorski', 901575831, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('sebax','9c7550cc418b76f1e63634d174a39d6cfe063f61','sebax@dd.pl','Sebastian','Sikora', 501575831, '<root><films/><cinemas/><cities/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kaska','45aed31126ecbfa48d96c8291faba1b6d1e3f953','kaskakk@gg.pl','Katarzyna','Pajdowska', 123098654, '<root><films/><cinemas/><cities/></root>');  

select about from users;