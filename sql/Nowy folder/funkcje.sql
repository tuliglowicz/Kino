drop function if exists update_users_cinemas();
CREATE FUNCTION update_users_cinemas() RETURNS void AS $$
declare cins xml;

BEGIN
	
	FOR j IN 1.. count(*) from users LOOP

		cins=null;
		FOR i IN 1.. count(*) from cinemas LOOP
			cins=xmlconcat(cins, xmlelement(
				name cinema, xmlattributes((select name from cinemas where id=i) as name), 
					(select count(*) from 
						tickets join seances on seances.id=tickets.seance_id
						join cinema_films on seances.cinema_film_id=cinema_films.id
						where user_id=j and cinema_id=i)
				)
				);
		end loop;
		cins=xmlelement(name cinemas, cins);
		
		UPDATE users SET about = 
		xmlelement(name root, cins, xmlconcat(s1.films[1], s2.cities[1]) )
		FROM 

			(select 
				xpath('/root/films', (select about from users where id=j) 
				)  as films
			) as s1,
			
			(select 
				xpath('/root/cities', (select about from users where id=j)  
				)as cities
			) as s2   
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;

drop function if exists update_users_cities();
CREATE FUNCTION update_users_cities() RETURNS void AS $$
declare cits xml;

BEGIN
	
	FOR j IN 1.. count(*) from users LOOP

		cits=null;
		FOR i IN 1.. count(*) from cities LOOP
			cits=xmlconcat(cits, xmlelement(
				name city, xmlattributes((select name from cities where id=i) as name), 
					(select count(*) from 
						tickets join seances on seances.id=tickets.seance_id
						join cinema_films on seances.cinema_film_id=cinema_films.id
						join cinemas on cinema_films.cinema_id=cinemas.id
						where user_id=j and city_id=i)
				)
				);
		end loop;
		cits=xmlelement(name cities, cits);
		
		UPDATE users SET about = 
		xmlelement(name root, cits, xmlconcat(s1.films[1], s2.cinemas[1]) )
		FROM 
			(select 
				xpath('/root/films', (select about from users where id=j) 
				)  as films
			) as s1,
			
			(select 
				xpath('/root/cinemas', (select about from users where id=j)  
				)as cinemas
			) as s2  
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;

drop function if exists update_users_films();
CREATE FUNCTION update_users_films() RETURNS void AS $$
declare cats xml;

BEGIN
	
	FOR j IN 1.. count(*) from users LOOP

		cats=null;
		FOR i IN 1.. count(*) from categories LOOP
			cats=xmlconcat(cats, xmlelement(
				name film, xmlattributes((select name from categories where id=i) as genre), 
					(select count(*) from 
						tickets join seances on seances.id=tickets.seance_id
						join cinema_films on seances.cinema_film_id=cinema_films.id
						join films on cinema_films.film_id=films.id
						where user_id=j and category_id=i)
				)
				);
		end loop;
		cats=xmlelement(name films, cats);
		
		UPDATE users SET about = 
		xmlelement(name root, cats, xmlconcat(s1.cinemas[1], s2.cities[1]) ) 
		FROM 
			(select 
				xpath('/root/cinemas', (select about from users where id=j) 
				)  as cinemas
			) as s1,
			
			(select 
				xpath('/root/cities', (select about from users where id=j)  
				)as cities
			) as s2  
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;