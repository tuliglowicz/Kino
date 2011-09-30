-- SEANCE
DROP TABLE IF EXISTS "seances";
CREATE TABLE "seances" (
	   		 		   	id serial unique primary key,
						cinema_film_id int not null,
						room_id int not null,
						date_from date,
						time_from time without time zone,
						--date_untill i time_untill nie są potrzebne
						--date_untill date,
						--time_untill time without time zone,
						created_at timestamp without time zone,
						updated_at timestamp without time zone
						);
--kwiecien lalka social network
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (15,1,'2011-09-30','2011-09-30 20:00:00 UTC'); 

--kino 5d hary poter
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (7,7,'2011-10-30','2011-10-30 20:00:00 UTC'); 


--kino 5d avatar
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (8,8,'2011-10-30','2011-10-30 20:00:00 UTC'); 


--helios erratum
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (9,9,'2011-10-30','2011-10-30 20:00:00 UTC'); 


--helios ghost writer
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (10,10,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--helios thor maj
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (11,11,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--thor korona maj
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (4,5,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--hary korona maj
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (5,6,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--ghost maj dworcowe
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (3,3,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--thor maj dworcowe
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-04','2011-10-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-05','2011-10-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-06','2011-10-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-07','2011-10-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-08','2011-10-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-09','2011-10-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-10','2011-10-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-11','2011-10-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-12','2011-10-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-13','2011-10-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-14','2011-10-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-15','2011-10-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-16','2011-10-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-17','2011-10-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-18','2011-10-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-19','2011-10-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-20','2011-10-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-21','2011-10-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-22','2011-10-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-23','2011-10-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-24','2011-10-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-25','2011-10-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-26','2011-10-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-27','2011-10-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-28','2011-10-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-29','2011-10-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-30','2011-10-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-04','2011-10-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-05','2011-10-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-06','2011-10-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-07','2011-10-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-08','2011-10-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-09','2011-10-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-10','2011-10-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-11','2011-10-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-12','2011-10-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-13','2011-10-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-14','2011-10-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-15','2011-10-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-16','2011-10-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-17','2011-10-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-18','2011-10-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-19','2011-10-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-20','2011-10-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-21','2011-10-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-22','2011-10-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-23','2011-10-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-24','2011-10-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-25','2011-10-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-26','2011-10-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-27','2011-10-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-28','2011-10-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-29','2011-10-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-30','2011-10-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-04','2011-10-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-05','2011-10-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-06','2011-10-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-07','2011-10-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-08','2011-10-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-09','2011-10-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-10','2011-10-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-11','2011-10-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-12','2011-10-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-13','2011-10-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-14','2011-10-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-15','2011-10-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-16','2011-10-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-17','2011-10-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-18','2011-10-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-19','2011-10-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-20','2011-10-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-21','2011-10-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-22','2011-10-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-23','2011-10-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-24','2011-10-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-25','2011-10-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-26','2011-10-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-27','2011-10-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-28','2011-10-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-29','2011-10-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-30','2011-10-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-04','2011-10-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-05','2011-10-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-06','2011-10-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-07','2011-10-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-08','2011-10-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-09','2011-10-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-10','2011-10-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-11','2011-10-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-12','2011-10-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-13','2011-10-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-14','2011-10-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-15','2011-10-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-16','2011-10-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-17','2011-10-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-18','2011-10-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-19','2011-10-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-20','2011-10-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-21','2011-10-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-22','2011-10-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-23','2011-10-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-24','2011-10-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-25','2011-10-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-26','2011-10-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-27','2011-10-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-28','2011-10-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-29','2011-10-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (6,4,'2011-10-30','2011-10-30 20:00:00 UTC'); 

--kwiecien 5d incepcja
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (12,7,'2011-09-30','2011-09-30 20:00:00 UTC'); 

--kwiecien korona prawdzwie męstwo
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (13,5,'2011-09-30','2011-09-30 20:00:00 UTC'); 

--kwiecien korona fighter
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (14,6,'2011-09-30','2011-09-30 20:00:00 UTC'); 

--kwiecien helios avatar
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (1,9,'2011-09-30','2011-09-30 20:00:00 UTC'); 

--kwiecien helios ghost
INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-04','2011-09-04 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-05','2011-09-05 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-06','2011-09-06 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-07','2011-09-07 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-08','2011-09-08 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-09','2011-09-09 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-10','2011-09-10 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-11','2011-09-11 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-12','2011-09-12 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-13','2011-09-13 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-14','2011-09-14 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-15','2011-09-15 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-16','2011-09-16 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-17','2011-09-17 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-18','2011-09-18 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-19','2011-09-19 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-20','2011-09-20 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-21','2011-09-21 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-22','2011-09-22 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-23','2011-09-23 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-24','2011-09-24 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-25','2011-09-25 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-26','2011-09-26 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-27','2011-09-27 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-28','2011-09-28 10:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-29','2011-09-29 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-30','2011-09-30 10:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-04','2011-09-04 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-05','2011-09-05 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-06','2011-09-06 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-07','2011-09-07 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-08','2011-09-08 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-09','2011-09-09 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-10','2011-09-10 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-11','2011-09-11 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-12','2011-09-12 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-13','2011-09-13 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-14','2011-09-14 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-15','2011-09-15 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-16','2011-09-16 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-17','2011-09-17 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-18','2011-09-18 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-19','2011-09-19 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-20','2011-09-20 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-21','2011-09-21 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-22','2011-09-22 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-23','2011-09-23 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-24','2011-09-24 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-25','2011-09-25 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-26','2011-09-26 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-27','2011-09-27 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-28','2011-09-28 14:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-29','2011-09-29 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-30','2011-09-30 14:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-04','2011-09-04 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-05','2011-09-05 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-06','2011-09-06 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-07','2011-09-07 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-08','2011-09-08 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-09','2011-09-09 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-10','2011-09-10 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-11','2011-09-11 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-12','2011-09-12 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-13','2011-09-13 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-14','2011-09-14 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-15','2011-09-15 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-16','2011-09-16 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-17','2011-09-17 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-18','2011-09-18 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-19','2011-09-19 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-20','2011-09-20 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-21','2011-09-21 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-22','2011-09-22 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-23','2011-09-23 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-24','2011-09-24 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-25','2011-09-25 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-26','2011-09-26 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-27','2011-09-27 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-28','2011-09-28 17:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-29','2011-09-29 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-30','2011-09-30 17:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-04','2011-09-04 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-05','2011-09-05 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-06','2011-09-06 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-07','2011-09-07 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-08','2011-09-08 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-09','2011-09-09 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-10','2011-09-10 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-11','2011-09-11 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-12','2011-09-12 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-13','2011-09-13 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-14','2011-09-14 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-15','2011-09-15 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-16','2011-09-16 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-17','2011-09-17 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-18','2011-09-18 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-19','2011-09-19 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-20','2011-09-20 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-21','2011-09-21 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-22','2011-09-22 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-23','2011-09-23 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-24','2011-09-24 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-25','2011-09-25 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-26','2011-09-26 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-27','2011-09-27 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-28','2011-09-28 20:15:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-29','2011-09-29 20:00:00 UTC'); 

INSERT INTO "seances"(cinema_film_id, room_id, date_from, time_from)
VALUES (2,10,'2011-09-30','2011-09-30 20:00:00 UTC'); 

-- CINEMAS_FILMS
DROP TABLE IF EXISTS "cinema_films";
CREATE TABLE "cinema_films" (
	   		 				  id serial unique primary key,
							  cinema_id int not null,
							  film_id int not null,
							  date_from date not null,
							  date_untill date
							  );

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (2, 2, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (2, 4, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (3, 4, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (3, 5, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (3, 8, '2011-09-01', '2011-09-30'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (3, 11, '2011-09-01', '2011-09-30'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (4, 1, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (4, 5, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (4, 9, '2011-09-01', '2011-09-30'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (5, 1, '2011-09-01', '2011-09-30'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (5, 2, '2011-09-01', '2011-09-30'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (5, 2, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (5, 4, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (5, 6, '2011-10-01', '2011-10-31'); 

INSERT INTO "cinema_films"(cinema_id, film_id, date_from, date_untill)
VALUES (1, 10, '2011-09-01', '2011-09-30'); 


-- ROOM
DROP TABLE IF EXISTS "rooms";
CREATE TABLE rooms (
	   		 	   	id serial unique primary key,
					cinema_id int not null,
					"number" smallint not null,
					size smallint	 --liczba miejsc
					);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(1,1, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(1,2, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(2,1, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(2,2, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(3,1,200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(3,2, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(4,1, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(4,2, 200);

INSERT INTO "rooms" (cinema_id, number,  size)
VALUES(5,1, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(5,2, 200);

INSERT INTO "rooms" (cinema_id, number, size)
VALUES(5,3, 200);

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

INSERT INTO "cinemas" (city_id, name, address, phone)
VALUES(12, 'Lalka', 'ul. B. Prusa 32', 717924405);

INSERT INTO "cinemas" (city_id, name, address)
VALUES(12, 'Kino ACF Dworcowe', 'ul. Piłsudskiego 105');

INSERT INTO "cinemas" (city_id, name, address, phone)
VALUES(12, 'Cinema City Korona', 'ul. Krzywoustego 126 C', 713236000);

INSERT INTO "cinemas" (city_id, name, address, phone)
VALUES(12, 'Kino 5D Extreme', 'ul. Legnicka 58', 713385284);

INSERT INTO "cinemas" (city_id, name, address, phone)
VALUES(11, 'Helios', 'ul. Jesionowa 18', 567098284);




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
VALUES ('janek1945','d801d44ef2e12006d1f15c987e9a5ec299f7830c','janek1945@wuj.pl','Jan','Malina', 123654789, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kazik123','3e0f6ff269d7c6126fb63373c767a51b0bb0ba8a','kazik44@gt.pl','Kazimierz','Stonoga', 994034904, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('martusia','eabefb9963420517dd6a622a7dfc26f36f0447a1','marta22@rt.pl','Marta','Marecka', 894758263, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('ala22f','a87b877e94143d8997748f33aa6161e207bfceb1','alka55@ww.pl','Alicja','Fik', 435789432, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('Olka','76ce26c45890f345cb4a4fcea195be41273629d2','olkaK@ff.pl','Aleksandra','Kaczmarczyk', 904785236, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('seba','9c7550cc418b76f1e63634d174a39d6cfe063f61','seba@dd.pl','Sebastian','Sikorski', 901575831, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('sebax','9c7550cc418b76f1e63634d174a39d6cfe063f61','sebax@dd.pl','Sebastian','Sikora', 501575831, '<root><films></films><cities></cities><settings></settings></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kaska','45aed31126ecbfa48d96c8291faba1b6d1e3f953','kaskakk@gg.pl','Katarzyna','Pajdowska', 123098654, '<root><films></films><cities></cities><settings></settings></root>');  
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
					  description TEXT,
					  poster varchar(50)
					  );

INSERT INTO "films" (title, director, year, category_id, trailer,
length, description, poster)
VALUES('Avatar','James Cameron',2009, 16,
'http://www.youtube.com/watch?v=lh-EoXYjB9g', 162, '"Avatar" opowiada
historię sparaliżowanego byłego komandosa, który dostaje szansę
odzyskaniaa zdrowego ciała. Musi jednak wziąć udział w specjalnym
programie militarnym o nazwie Avatar.', '/avatar.jpeg');
INSERT INTO "films" (title, director, year, category_id, trailer,
length, description, poster)
VALUES('Ghost Writer', 'Roman Polański', 2010, 2,
'http://www.youtube.com/watch?v=L_AerBW0EcI', 128, 'Bohaterem filmu
jest "Ghostwriter" - pisarz, który za pieniądze tworzy dla innych,
oddając prawa do swego dzieła. Zostaje zaangażowany do napisania w
imieniu byłego premiera Wielkiej Brytanii pamiętników. W trakcie prac
nad książką, odkrywa sekrety, przez które znajduje się w śmiertelnym
zagrożeniu.', '/ghost_writer.jpeg');
INSERT INTO "films" (title, director, year, category_id, trailer,
length, description, poster)
VALUES('Gladiator', 'Ridley Scott', 2000, 5,
'http://www.youtube.com/watch?v=ol67qo3WhJk', 155, 'Generał Maximus,
jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się,
że umierający cesarz Marek Aureliusz chce uczynić go swoim następcą na
tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi, który
postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z cała
rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie
zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje coraz
większą popularność, a na jego występy zaczyna przychodzi coraz więcej
ludzi. Maximus jako gladiator wraca do Rzymu, by pomścić zamordowanie
swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza
jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym
bohaterem Imperium.', '/gladiator.jpeg');

INSERT INTO "films" (title, director, year, category_id, trailer, length, description, poster)
VALUES('Thor','Kenneth Branagh',2011, 1,
'http://www.youtube.com/watch?v=JOddp-nlNvQ', 93, 
'Zrealizowany na podstawie kultowego komiksu film, opowiada przygody nordyckiego boga Thora, władcy
 piorunów - syna Odyna który zostaje wygnany z Asgardu do świata ludzi. Na ziemi zostaje pozbawiony
 swoich boskich mocy, przez co staje się zwykłym śmiertelnikiem o nazwisku dr Donald Blake, przez 
swoje zesłanie ma nauczyć się pokory. Brak mocy to jeden z wielu problemów boga, po wygnaniu stracił 
on całą swoją pamięć. Dopiero po ujrzeniu Mjöllnira - swojego magicznego młota, wykutego z nieznanego
 metalu przypomina sobie o swojej prawdziwej tożsamości. Po przywróceniu pamięci zaczyna on swoją
 walkę o bezpieczeństwo ludzkiego gatunku.', '/thor.jpeg');

INSERT INTO "films" (title, director, year, category_id, trailer, length, description, poster)
VALUES('Harry Potter i Insygnia Śmierci. Część I','David Yates', 2010, 9,
'http://www.youtube.com/watch?v=mq9ePp9tcmw&feature=fvst', 146,
 'Harry, Ron i Hermiona wyruszają na niebezpieczną podróż, w celu poszukiwania Horkruksów. Nie mają pojęcia,
 gdzie mogą być, lecz nikt im nie może pomóc - zdani są tylko na siebie.
Voldemort przejął kontrolę nad Ministerstwem Magii. Jego poplecznicy – Śmierciożercy – terroryzują wszystkich,
 którzy sprzeciwiają się Czarnemu Panu. Harry ściga się z czasem. ', '/hp7a.jpeg');

INSERT INTO "films" (title, director, year, category_id, trailer, length, description, poster)
VALUES('Erratum','Marek Lechki', 2011, 7,
'http://www.youtube.com/watch?v=KrcApGRSjbw', 99,
 'Michał jedzie do miasta swojego urodzenia, aby załatwić sprawę o którą prosi go szef i od razu wracać. 
Sprawy przybierają jednak inny obrót. Michał musi pozostać tu parę dni dłużej. Chodząc po mieście spotyka bliskie
 mu niegdyś osoby, natrafia na znajome miejsca. Powoli odzywa się w nim coś, o czym dawno zapomniał.', '/erratum.jpeg');

INSERT INTO "films"(title, director, year, category_id, trailer, length,description, poster)
VALUES ('Jak zostać królem','Tom Hooper',2010,7,'http://www.youtube.com/watch?v=-aS4hoOSlzo',118,'Fascynująca opowieść
 o człowieku, który uratował królestwo i w przełomowym momencie historii mężnie poprowadził Anglików w walce przeciwko
 najeźdźcy. Po szokującej abdykacji Edwarda VIII książę Albert musi, mimo wielkich oporów, zasiąść na tronie Anglii jako
 Jerzy VI. Ogromną przeszkodą w wypełnianiu monarszych obowiązków jest dla niego... problem z wysławianiem się. Jedyną 
osobą, która może pomóc Jerzemu w odnalezieniu własnego głosu i stawieniu czoła groźbie inwazji hitlerowskiej, okazuje 
się australijski specjalista o wielce nieortodoksyjnych metodach pracy nad wymową. Wkrótce rodzi się przyjaźń, która 
odmieni życie dwóch niezwykłych ludzi i zadecyduje o losach największej z wojen.', '/jak_zostac_krolem.jpeg'); 

INSERT INTO "films"(title, director, year, category_id, trailer, length,description, poster)
VALUES ('Prawdziwe męstwo','Joel Coen, Ethan Coen',2010,19,'http://www.youtube.com/watch?v=6njGNLPATAw',110,
'Czternastoletnia wieśniaczka Mattie Ross (Hailee Steinfeld) zrobi wszystko, aby dopaść mordercę swojego ojca.
 Zatrudniony przez nią najtwardszy szeryf w Stanach Zjednoczonych, człowiek o prawdziwie mocnym charakterze - 
Reuben J. "Rooster" Cogburn (Jeff Bridges) ma jej w tym pomóc. Nie zważając na jego lenistwo, zatwardziałość w 
grzechu i pijaństwo, bezwzględnie wierzy w powodzenie misji. Nieustannie nalega, aby towarzyszyć mu w poszukiwaniach
 zabójcy. Mimo początkowego sprzeciwu "Koguta", udaje się jej go przekonać i wyrusza z nim w niebezpieczną podróż 
śladami zbrodniarza. Dołącza do nich tajemniczy LaBoeuf (Matt Damon), obieżyświat z Teksasu, przekonany, że uda mu
 się wykorzystać Cogburna dla własnych interesów. Trop wiedzie w sam środek ziem Indian, gdzie niezwykłe trio napotka 
wiele przygód i niespodzianek, testując swój charakter, pokazując prawdziwe męstwo...', '/pmestwo.jpeg'); 

INSERT INTO "films"(title, director, year, category_id, trailer, length,description, poster)
VALUES ('Incepcja','Christopher Nolan',2010,16,'http://www.youtube.com/watch?v=vZC9VuuoLEc',148,
'Film opowiada o możliwościach ingerowania w ludzki umysł dzięki zaawansowanej technologii umożliwiającej
 wpływ na marzenia senne. Głównym bohaterem filmu jest Cobb (Leonardo DiCaprio) − szef zespołu specjalizującego
 się w dokonywaniu włamań do snów innych osób. Dzięki tej możliwości może zarówno pozyskiwać informacje, jak i
 wprowadzać nowe dane. Najważniejszym i ostatnim zadaniem zespołu Cobba jest uzyskanie wpływu na umysł następcy 
właściciela ogólnoświatowego koncernu. Zadanie wymaga wielopiętrowego zagłębienia się w meandry umysłu ofiary 
(sen we śnie) a przeszkodą jest projekcja podświadomości Cobba, w postaci jego żony imieniu Mal (być może od malice 
- złośliwość) o której śmierć się obwinia.', '/incepcja.jpeg'); 

INSERT INTO "films"(title, director, year, category_id, trailer, length,description, poster)
VALUES ('The Social Network','David Fincher',2010,6,'http://www.youtube.com/watch?v=lB95KLmpLR4',121,
'W październiku 2003 Mark, po zerwaniu z dziewczyną, włamuje się do uniwersyteckiej sieci komputerowej.
 Tworzy stronę internetową, która jest bazą studentek Harvardu. Następnie umieszcza zdjęcia studentek -
 użytkownicy witryny wybierają (z dwóch zdjęć umieszczonych obok siebie), która dziewczyna jest atrakcyjniejsza.
 Strona nazwana Facemash stała się bardzo popularna i kontrowersyjna. Mark zostaje oskarżony o celowe złamania
 zabezpieczeń, naruszenie prywatności i praw autorskich. Rodzi się początkowy zarys serwisu Facebook, następnie Mark
 tworzy stronę thefacebook.com, która staje się najpopularniejszym serwisem społecznościowym.', '/socialn.jpeg'); 

INSERT INTO "films"(title, director, year, category_id, trailer, length,description, poster)
VALUES ('Fighter','David O. Russell',2010,7,'http://www.youtube.com/watch?v=Hwv7kT9P0mg',115,'Dicky Eklund (Christian Bale), 
był niegdyś dobrze zapowiadającym się bokserem, jednak przegrana walka doprowadziła go na skraj przepaści psychicznej i
 odsiadki w więzieniu. Utrzymanie rodziny spada więc na barki młodszego brata przyrodniego Dickyego − Mickyego (Mark 
Wahlberg), który sukcesywnie dzięki ciężkiej pracy i uporowi, stał się mistrzem bokserskim. Dicky po zwolnieniu z więzienia,
 zostaje trenerem młodszego brata, pomagając mu wywalczyć najważniejszy tytuł.', '/fighter.jpeg'); 
-- Prices
DROP TABLE IF EXISTS "prices";
CREATE TABLE "prices" (
	   		 			 id serial unique primary key,
						 price decimal(4, 2),
					 	description varchar(255),
						 created_at timestamp without time zone,
						 updated_at timestamp without time zone
						 );

INSERT INTO "prices"(price, description, created_at, updated_at)
VALUES (30.0,'film w technologii 5D','2011-10-07 19:46:20 UTC','2011-10-07 19:46:20 UTC'); 

INSERT INTO "prices"(price, description, created_at, updated_at)
VALUES (27.0,'film w technologii 3D','2011-10-07 19:46:41 UTC','2011-10-07 19:46:41 UTC'); 

INSERT INTO "prices"(price, description, created_at, updated_at)
VALUES (24.0,'zwykły film','2011-10-07 19:47:18 UTC','2011-10-07 19:47:18 UTC'); 

-- dicsounts
DROP TABLE IF EXISTS "discounts";
CREATE TABLE "discounts" (
	   		 			 id serial unique primary key,
						 discount decimal(4, 2),
					 	description varchar(255),
						 created_at timestamp without time zone,
						 updated_at timestamp without time zone
						 );

INSERT INTO "discounts"(discount, description, created_at, updated_at)
VALUES (33.0,'ulga studencka','2011-10-07 19:43:58 UTC','2011-10-07 19:43:58 UTC'); 

INSERT INTO "discounts"(discount, description, created_at, updated_at)
VALUES (33.0,'ulga uczniowska','2011-10-07 19:43:08 UTC','2011-10-07 19:44:13 UTC'); 

INSERT INTO "discounts"(discount, description, created_at, updated_at)
VALUES (20.0,'ulga dla grupy pow. 10 osób','2011-10-07 19:45:04 UTC','2011-10-07 19:45:04 UTC'); 

drop table if exists "tickets";
CREATE TABLE tickets(
  id serial unique primary key,
  seance_id integer NOT NULL,
  seat_id integer,
  user_id integer,
  cancelled boolean,
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
VALUES ('janek1945','d801d44ef2e12006d1f15c987e9a5ec299f7830c','janek1945@wuj.pl','Jan','Malina', 123654789, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kazik123','3e0f6ff269d7c6126fb63373c767a51b0bb0ba8a','kazik44@gt.pl','Kazimierz','Stonoga', 994034904, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('martusia','eabefb9963420517dd6a622a7dfc26f36f0447a1','marta22@rt.pl','Marta','Marecka', 894758263, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('ala22f','a87b877e94143d8997748f33aa6161e207bfceb1','alka55@ww.pl','Alicja','Fik', 435789432, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('Olka','76ce26c45890f345cb4a4fcea195be41273629d2','olkaK@ff.pl','Aleksandra','Kaczmarczyk', 904785236, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('seba','9c7550cc418b76f1e63634d174a39d6cfe063f61','seba@dd.pl','Sebastian','Sikorski', 901575831, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('sebax','9c7550cc418b76f1e63634d174a39d6cfe063f61','sebax@dd.pl','Sebastian','Sikora', 501575831, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('kaska','45aed31126ecbfa48d96c8291faba1b6d1e3f953','kaskakk@gg.pl','Katarzyna','Pajdowska', 123098654, '<root><films/><cinemas/><cities/><settings/></root>');  

INSERT INTO "users"(login, hashed_password, email,first_name, last_name, phone, about)
VALUES ('user','054e822ba7bbd507d19cbcabe9044c0620414183','kaskkk@gg.pl','Bolek','Lenin', 123098654, '<root><films/><cinemas/><cities/><settings/></root>');  

--select about from users;
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
---  PRACOWNICY
INSERT INTO "workers" (cinema_id, status_id, login, hashed_password, first_name, last_name, phone, email)
Values (3,0,'gadmin','054e822ba7bbd507d19cbcabe9044c0620414183','Jan','Brzechwa',888456789,'klhasj2@wp.pl');

INSERT INTO "workers" (cinema_id, status_id, login, hashed_password, first_name, last_name, phone, email)
Values (3,1,'ladmin','054e822ba7bbd507d19cbcabe9044c0620414183','Jan','Brzechwa',888456789,'klhasj20@wp.pl');
	
	
--==================================Potrzebne dla servisu z platnosciami
DROP TABLE IF EXISTS "results";
CREATE TABLE results
(
  accepted boolean
)
WITH (
  OIDS=FALSE
);
ALTER TABLE results OWNER TO postgres;