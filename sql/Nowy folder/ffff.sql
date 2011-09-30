drop function if exists update_users_cinemas();
CREATE FUNCTION update_users_cinemas() RETURNS void AS $$
declare cins xml;

BEGIN
	
	FOR j IN 1.. count(*) from users LOOP

		cins=null;
		FOR i IN 1.. count(*) from cinemas LOOP
			cins=xmlconcat(cins, xmlelement(
				name cinema, xmlattributes((select name from cinemas where id=i) as name, (select id from cinemas where id=i) as id), 
					(select count(*) from 
						tickets join seances on seances.id=tickets.seance_id
						join cinema_films on seances.cinema_film_id=cinema_films.id
						where user_id=j and cinema_id=i)
						)
				);
		end loop;
		cins=xmlelement(name cinemas, cins);
		
		UPDATE users SET about = 
		xmlelement(name root, cins, xmlconcat(s1.films[1], s2.cities[1], s3.settings[1]) )
		FROM 

			(select 
				xpath('/root/films', (select about from users where id=j) 
				)  as films
			) as s1,
			
			(select 
				xpath('/root/cities', (select about from users where id=j)  
				)as cities
			) as s2,
			(select 
				xpath('/root/settings', (select about from users where id=j)  
				)as settings
			) as s3     
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------------------------------------------
drop function if exists update_users_cities();
CREATE FUNCTION update_users_cities() RETURNS void AS $$
declare cits xml;

BEGIN
	FOR j IN 1.. count(*) from users LOOP

		cits=null;
		FOR i IN 1.. count(*) from cities LOOP
			cits=xmlconcat(cits, xmlelement(
				name city, xmlattributes((select name from cities where id=i) as name, (select id from cities where id=i) as id), 
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
		xmlelement(name root, cits, xmlconcat(s1.films[1], s2.cinemas[1], s3.settings[1]) )
		FROM 
			(select 
				xpath('/root/films', (select about from users where id=j) 
				)  as films
			) as s1,
			
			(select 
				xpath('/root/cinemas', (select about from users where id=j)  
				)as cinemas
			) as s2,
			(select 
				xpath('/root/settings', (select about from users where id=j)  
				)as settings
			) as s3   
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;
-----------------------------------------------------------------------------------------------------------------------
drop function if exists update_users_films();
CREATE FUNCTION update_users_films() RETURNS void AS $$
declare cats xml;

BEGIN
	FOR j IN 1.. count(*) from users LOOP

		cats=null;
		FOR i IN 1.. count(*) from categories LOOP
			cats=xmlconcat(cats, xmlelement(
				name category, xmlattributes((select name from categories where id=i) as genre, (select id from categories where id=i) as id), 
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
		xmlelement(name root, cats, xmlconcat(s1.cinemas[1], s2.cities[1], s3.settings[1]) ) 
		FROM 
			(select 
				xpath('/root/cinemas', (select about from users where id=j) 
				)  as cinemas
			) as s1,
			
			(select 
				xpath('/root/cities', (select about from users where id=j)  
				)as cities
			) as s2,
		(select 
				xpath('/root/settings', (select about from users where id=j)  
				)as settings
			) as s3   
			
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------------------------------
drop function if exists update_users_settings();
CREATE FUNCTION update_users_settings() RETURNS void AS $$
declare sum xml;
	best_cats xml; x xml[];
	best_cities xml; y xml[];
	best_cinemas xml; z xml[]; 
	
BEGIN
	FOR j IN 1.. count(*) from users LOOP


		sum=xmlelement(name sum, (select count(*) from tickets where user_id=j) );


		
		x[1]=( xpath('/root/films/category[1]', (select about from users where id=j)))[1];
		
		--for k in 1.. 3 loop
			for i in 1.. cast( xmlserialize(content (xpath('/root/films/category[last()]/@id', (select about from users where id=j)))[1] as text) as numeric) loop

				if cast ( xmlserialize(content ( xpath('/root/films/category[' || i ||']/text()', (select about from users where id=j)) )[1] as text) as numeric)
				> 
				cast ( xmlserialize(content (xpath('/', x[1]) )[1] as text) as numeric)
				then x[1] = ( xpath('/root/films/category[' || i ||']', (select about from users where id=j)) )[1];

				end if;

			end loop;
		--end loop;

		y[1]=( xpath('/root/cities/city[1]', (select about from users where id=j)))[1];
		
		--for k in 1.. 3 loop
			for i in 1.. cast( xmlserialize(content (xpath('/root/cities/city[last()]/@id', (select about from users where id=j)))[1] as text) as numeric) loop

				if cast ( xmlserialize(content ( xpath('/root/cities/city[' || i ||']/text()', (select about from users where id=j)) )[1] as text) as numeric)
				> 
				cast ( xmlserialize(content (xpath('/', y[1]) )[1] as text) as numeric)
				then y[1] = ( xpath('/root/cities/city[' || i ||']', (select about from users where id=j)) )[1];

				end if;

			end loop;
		--end loop;

		z[1]=( xpath('/root/cinemas/cinema[1]', (select about from users where id=j)))[1];
		
		--for k in 1.. 3 loop
			for i in 1.. cast( xmlserialize(content (xpath('/root/cinemas/cinema[last()]/@id', (select about from users where id=j)))[1] as text) as numeric) loop

				if cast ( xmlserialize(content ( xpath('/root/cinemas/cinema[' || i ||']/text()', (select about from users where id=j)) )[1] as text) as numeric)
				> 
				cast ( xmlserialize(content (xpath('/', z[1]) )[1] as text) as numeric)
				then z[1] = ( xpath('/root/cinemas/cinema[' || i ||']', (select about from users where id=j)) )[1];

				end if;

			end loop;
		--end loop;




		best_cats=xmlelement( name best_categories, x[1] );
		best_cities=xmlelement( name best_cities, y[1] );
		best_cinemas=xmlelement( name best_cinemas, z[1] );
		
		
		UPDATE users SET about = 
		xmlelement(name root, 
				xmlconcat(s1.cinemas[1], s2.cities[1], s3.films[1]), 
				xmlelement(name settings, sum, best_cats, best_cities, best_cinemas)
				) 
		FROM 
			(select 
				xpath('/root/cinemas', (select about from users where id=j) 
				)  as cinemas
			) as s1,
			
			(select 
				xpath('/root/cities', (select about from users where id=j)  
				)as cities
			) as s2,
		(select 
				xpath('/root/films', (select about from users where id=j)  
				)as films
			) as s3   
			
		where id=j;
	END LOOP;

END;
$$
LANGUAGE plpgsql;

-------------------------------------------------------------------------------------------
drop function if exists main();
CREATE FUNCTION main() RETURNS void AS $$
begin
	perform * from update_users_films();
	perform * from update_users_cities();
	perform * from update_users_cinemas();
	perform * from update_users_settings();
	--select about from users;
END;
$$
LANGUAGE plpgsql;
