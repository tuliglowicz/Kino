
CREATE or replace VIEW "view" AS  
	select * 
	from 
		xmlelement(name users, ( select xmlagg(about) from users) )  as y;