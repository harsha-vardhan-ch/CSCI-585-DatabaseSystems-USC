	
create extension POSTGIS;

CREATE TABLE MAPS (name varchar, geom geometry);

INSERT INTO MAPS VALUES
	('TaperHall','POINT(-118.284436 34.022533)'),
	('Bookstore','POINT(-118.286602 34.020537)'),
	('ParksideRest','POINT(-118.290871 34.018883)'),
	('ParksideApt','POINT(-118.289908 34.019234)'),
	('SGM','POINT(-118.289272 34.021288)'),
	('Gerontology','POINT(-118.290421 34.020105)'),
	('Architecture','POINT(-118.288286 34.019282)'),
	('EVK','POINT(-118.282229 34.021345)'),
	('LyonCentre','POINT(-118.287883 34.024235)'),
	('CinemalSchool','POINT(-118.286354 34.023572)'),
	('WidneyAlumni','POINT(-118.28289 34.019435)'),
	('Creditunion','POINT(-118.285212 34.025729)'),
	('Home','POINT(-118.279541 34.027979)');

SELECT name, ST_AsText(geom) from MAPS;


-- Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(geom))) from MAPS;



-- 4 Nearest Neighbours from Home
select name, ST_Astext(geom) as location, ST_Distance(geom,'POINT(-118.279541 34.027979)') as distance 
from Maps
where name<>'Home' 
order by ST_Distance(geom,'POINT(-118.279541 34.027979)') 
limit 4;