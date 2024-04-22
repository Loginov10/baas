Create Database LoginovProcedure;
Use LoginovProcedure;

create table film(
filmId int Primary key identity(1,1),
filmnumetus varchar(50),
kestvus int,
rezisoor varchar(50),
v_aasta int);
select * from film;
--mockaroo.com
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Jeopardy (a.k.a. A Woman in Jeopardy)', 286, 'Michaela Krahl', 2008);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('One Percent, The', 264, 'Luis Kremer', 1994);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Butcher, The (Boucher, Le)', 103, 'Doris Cranna', 2002);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Fellini: I''m a Born Liar (Fellini: Je Suis um Grand Menteur)', 244, 'Hillel Opy', 1996);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Monster Squad, The', 171, 'Jessey Livesay', 2003);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Fear Me Not (Den du frygter)', 162, 'Hubert Hunte', 2005);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Holy Girl, The (Niña santa, La)', 290, 'Jillie Basezzi', 2010);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Two Friends', 154, 'Mirabelle Roussel', 1995);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Lemon Tree', 152, 'Billie Dillestone', 2008);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Torment', 200, 'Germayne Longmead', 1979);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Four Flies on Grey Velvet', 252, 'Otto Loughney', 1989);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Chain Lightning', 300, 'Corette Rouse', 1994);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Storm Over Asia (Potomok Chingis-Khana)', 267, 'Clarine Rossetti', 2008);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Nuts', 140, 'Elyse Doel', 2009);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Faces of Death 2', 293, 'Benedicta Roxby', 1992);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Tarzan', 105, 'Kippie Fosserd', 2006);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Assassination of Richard Nixon, The', 135, 'Magdalene Garnul', 2002);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Man from Utah, The', 300, 'Arlena Ellicock', 2005);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Star Is Born, A', 257, 'Gerry McKeachie', 2009);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Ulysses'' Gaze (To Vlemma tou Odyssea)', 214, 'Carrie Skedge', 1986);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Chato''s Land', 126, 'Gabbi Phillips', 2011);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Our Modern Maidens', 130, 'Andrej Rotherforth', 2005);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Room for Romeo Brass, A', 236, 'Antonius Clague', 1998);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Warrendale', 158, 'Herculie Tassell', 2005);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('The Seven-Ups', 258, 'Brittani Bentick', 1994);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Bee Season', 296, 'Christoforo Moxsom', 1989);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Masseurs and a Woman, The (Anma to onna)', 249, 'Monroe Rotham', 2009);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Twilight People, The', 116, 'Joelle Bome', 2012);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Forty Shades of Blue', 275, 'Tammie Whitley', 2000);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Incruste, L'' (a.k.a. L''Incruste, fallait pas le laisser entrer!)', 137, 'Audry Conigsby', 1995);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Godzilla vs. The Sea Monster (Gojira-Ebira-Mosura: Nankai no daiketto)', 200, 'Gabriellia Monget', 1997);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Cats & Dogs', 226, 'Courtnay Barribal', 2012);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Quiet as a Mouse (Muxmäuschenstill)', 268, 'Clemens Juris', 2001);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Game of Chance (Onnenpeli)', 180, 'Karole Yaus', 2005);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Running With Scissors', 131, 'Vivi Hellmer', 2003);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Geographer Drank His Globe Away, The (Geograf globus propil)', 149, 'Toddie Shackleton', 1999);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Private War of Major Benson, The', 233, 'Waylen Rudgley', 1993);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Ruby Gentry', 264, 'Kimberlee Teece', 1994);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Sniper, The', 223, 'Perry Beddon', 2004);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Star Wars: Episode IV - A New Hope', 163, 'Rickard Bewlay', 2009);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Bride Wore Black, The (La mariée était en noir)', 220, 'Marsh Strutton', 1995);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Hello Ladies: The Movie', 153, 'Leila Heikkinen', 2003);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('The Heart Machine', 230, 'Winonah Gionettitti', 1995);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Scandal (Shubun)', 245, 'Bernarr Metzke', 1998);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Bachelor Mother', 207, 'Ariel Fero', 1981);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Moonstruck', 121, 'Martha Bartholomew', 1988);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Changeling', 294, 'Jonell Kemitt', 2004);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('It Could Happen to You', 178, 'Ringo Poupard', 2004);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Overboard', 139, 'Mollie Greenhead', 2010);
insert into film (filmnumetus, kestvus, rezisoor, v_aasta) values ('Detour', 100, 'Bibbye Teague', 2007);

--filmiNimetuse otsing esimesed tähe järgi 
Create Procedure otsing1Taht
@taht char(1)
AS
Begin
	Select * from film
	Where filmnumetus Like CONCAT (@taht, '%');
End;

--käivitamine 
EXEC otsing1Taht 'J';

--protseduur mis kustutab sisestatud id järgi 
Create procedure kustutaFilm
@id int
AS
Begin
Select * from film;
Delete from film Where filmId=@id;
Select * from film;
End;

Exec kustutaFilm 42;
