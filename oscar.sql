CREATE TABLE Studio(
        id serial,
        nome           VARCHAR(30),
        local         VARCHAR(70),
        PRIMARY KEY (id)
    );
    
    CREATE TABLE Realizador(
        id serial,
        nome           VARCHAR(50),
        categoria      CHAR(1),           
        PRIMARY KEY (id)
    );
    
    CREATE TABLE Filme(
        id serial,
        nome           VARCHAR(50),
        ano            INTEGER,
        duracao        INTEGER,
        studio_id    INTEGER,
        realizador_id INTEGER,
        PRIMARY KEY (id),
        FOREIGN KEY (studio_id) REFERENCES Studio(id),
        FOREIGN KEY (realizador_id) REFERENCES Realizador(id)
    );
    
    CREATE TABLE Ator(
        id serial,
        nome           VARCHAR(50),
        local         VARCHAR(70),
        sexo           CHAR(1),
        dataNascimento DATE,
        PRIMARY KEY (id)
    );
    
    CREATE TABLE Participa(
        filme_id      INTEGER,
        ator_id       INTEGER,
        data integer,
        PRIMARY KEY (filme_id,ator_id),
        FOREIGN KEY (filme_id) REFERENCES Filme(id),
        FOREIGN KEY (ator_id) REFERENCES Ator(id)
    );

    



  
    INSERT INTO Studio VALUES (1, 'Fox'             , '101 Embarcadero, Los Angeles');
    INSERT INTO Studio VALUES (2, 'Disney'          , '56 Yankee Boulevard, Los Angeles');
    INSERT INTO Studio VALUES (3, 'Paramount'       , '44 Pine St., Los Angeles');
    INSERT INTO Studio VALUES (4, 'Universal'       , '23 Universal Studies Dr., Los Angeles');
    INSERT INTO Studio VALUES (5, 'Warner Brothers' , '71 Parkway Dr., San Diego');
    

    INSERT INTO Realizador VALUES (1, 'George Lucas'         , 'A');
    INSERT INTO Realizador VALUES (2, 'Steven Spielberg'     , 'A');
    INSERT INTO Realizador VALUES (3, 'Kevin Costner'        , 'B');
    INSERT INTO Realizador VALUES (4, 'Irvin Kershner'       , 'B');
    INSERT INTO Realizador VALUES (5, 'Richard Marquand'     , 'A');
    INSERT INTO Realizador VALUES (6, 'Stephen Herek'        , 'A');
    INSERT INTO Realizador VALUES (7, 'Penelope Spheeris'    , 'A');
    INSERT INTO Realizador VALUES (8, 'Roger Allers'         , 'A');
    INSERT INTO Realizador VALUES (9, 'Mike Gabriel'         , 'A');
    INSERT INTO Realizador VALUES (10, 'Clint Eastwood'       , 'A');
    INSERT INTO Realizador VALUES (11, 'Barry Sonnenfeld'     , 'A');
    INSERT INTO Realizador VALUES (12, 'Merian Cooper'        , 'A');
    INSERT INTO Realizador VALUES (13, 'John Guillermin'      , 'A');
    INSERT INTO Realizador VALUES (14, 'Victor Fleming'       , 'C');
    INSERT INTO Realizador VALUES (15, 'Paul Verhoeven'       , 'B');
    INSERT INTO Realizador VALUES (16, 'Andrew Davies'        , 'B');
    INSERT INTO Realizador VALUES (17, 'Tim Burton'           , 'A');
    INSERT INTO Realizador VALUES (18, 'Tony Scott'           , 'A');
    INSERT INTO Realizador VALUES (19, 'Stanley Kubrik'       , 'A');
    INSERT INTO Realizador VALUES (20, 'Baz Luhrmann'         , 'A');
    INSERT INTO Realizador VALUES (21, 'Oliver Stone'         , 'A');

    
    INSERT INTO Filme VALUES (1, 'Star Wars'                 , 1977, 124, 1, 1);
    INSERT INTO Filme VALUES (2, 'Empire Strikes Back'       , 1980, 143, 1, 4);
    INSERT INTO Filme VALUES (3, 'Return of the Jedi'        , 1983, 165, 1, 5);
    INSERT INTO Filme VALUES (4, 'Mighty Ducks'              , 1991, 104, 2, 6);
    INSERT INTO Filme VALUES (5, 'Wayne''s World'            , 1992,  95, 3, 7);
    INSERT INTO Filme VALUES (6, 'Lion King'                 , 1994, 122, 2, 8);
    INSERT INTO Filme VALUES (7, 'Pocahontas'                , 1995, 115, 2, 9);
    INSERT INTO Filme VALUES (8, 'Addams Family'             , 1991, 102, 3, 11);
    INSERT INTO Filme VALUES (9, 'King Kong'                 , 1933, NULL,4, 12);
    INSERT INTO Filme VALUES (10,'King Kong'                 , 1976, 130, 4, 13);
    INSERT INTO Filme VALUES (11,'Gone With the Wind'        , 1939, 181, 3, 14);
    INSERT INTO Filme VALUES (12,'Basic Instinct'            , 1986, 100, 3, 15);
    INSERT INTO Filme VALUES (13,'Total Recall'              , 1990, 110, 1, 15);
    INSERT INTO Filme VALUES (14,'Indiana Jones'             , 1981, 130, 4, 2);
    INSERT INTO Filme VALUES (15,'The Fugitive'              , 1993, 120, 4, 16);
    INSERT INTO Filme VALUES (16,'Bridges of Madison County' , 1995, 147, 4, 10);
    INSERT INTO Filme VALUES (17,'Batman Returns'            , 1992, 122, 5, 17);
    INSERT INTO Filme VALUES (18,'Top Gun'                   , 1986, 145, 1, 18);
    INSERT INTO Filme VALUES (19,'Eyes Wide Shut'            , 1999, 148, 3, 19);
    INSERT INTO Filme VALUES (20,'Moulin Rouge'              , 2001, 124, 1, 20);
    INSERT INTO Filme VALUES (21,'JFK'                       , 1996, 130, 1, 21);
    INSERT INTO Filme VALUES (22, 'Dances with Wolves'        , 1990, 132, 1, 3);
    
    
    INSERT INTO Ator VALUES (1, 'Carrie Fisher'         , '123 Maple St., Hollywood'          ,'f', '1955-11-07');
    INSERT INTO Ator VALUES (2, 'Mark Hamill'           , '456 Oak Rd., Brentwood'            ,'m', '1950-02-23');
    INSERT INTO Ator VALUES (3, 'Harrison Ford'         , '789 Palm Dr., Beverly Hills'       ,'m', '1944-07-13');
    INSERT INTO Ator VALUES (4, 'Emilio Estevez'        , '201 California St., Mountain View' ,'m', '1960-03-22');
    INSERT INTO Ator VALUES (5, 'Dana Carvey'           , '700 El Camino, Beverly Hills'      ,'f', '1944-04-04');
    INSERT INTO Ator VALUES (6, 'Mike Meyers'           , '880 Elm St., Santa Barbara'        ,'m', '1935-06-04');
    INSERT INTO Ator VALUES (7, 'Sharon Stone'          , '550 Elm St., Santa Barbara'        ,'f', '1970-05-14');
    INSERT INTO Ator VALUES (8, 'Tom Cruise'            , '26 Palm Dr., Hollywood'            ,'m', '1967-08-20');
    INSERT INTO Ator VALUES (9, 'Arnold Schwarzenegger' , '83 Lincoln Av., Las Vegas'         ,'m', '1967-08-19');
    INSERT INTO Ator VALUES (10,'Kim Basinger'          , '101 Sprinfield, Santa Monica'      ,'f', '1967-08-12');
    INSERT INTO Ator VALUES (11,'Alec Baldwin'          , '101 Sprinfield, Santa Monica'      ,'m', '1964-01-26');
    INSERT INTO Ator VALUES (12,'Michael Keaton'        , '32 Palm Beach, Santa Monica'       ,'m', '1958-03-02');
    INSERT INTO Ator VALUES (13,'Danny DeVito'          , '18 Rodeo Dr., Beverly Hills'       ,'m', '1946-04-08');
    INSERT INTO Ator VALUES (14,'Michelle Pfeiffer'     , 'Via Venetto 4, Hollywood'          ,'f', '1969-11-14');
    INSERT INTO Ator VALUES (15,'Nicole Kidman'         , '26 Palm Dr., Hollywood'            ,'f', '1969-11-14');
    INSERT INTO Ator VALUES (16,'Meryl Streep'          , 'Meryl House, Beverly Hills'        ,'f', '1961-06-21');
    INSERT INTO Ator VALUES (17,'Kevin Costner'         , '88 Palm Dr., Hollywood'            ,'m', '1965-01-30');
    INSERT INTO Ator VALUES (18,'Clint Eastwood'        , '12 Presley Dr., Beverly Hills'     ,'m', '1946-01-25');
    			    
    INSERT INTO Participa VALUES (1,1, 1977);
    INSERT INTO Participa VALUES (1,2, 1977);
    INSERT INTO Participa VALUES (1,3, 1977);
    INSERT INTO Participa VALUES (4,4, 1991);
    INSERT INTO Participa VALUES (5,5, 1992);
    INSERT INTO Participa VALUES (5,6, 1992);
    INSERT INTO Participa VALUES (2,1, 1980);
    INSERT INTO Participa VALUES (3,1, 1983);
    INSERT INTO Participa VALUES (12,7, 1986);
    INSERT INTO Participa VALUES (13,9, 1990);
    INSERT INTO Participa VALUES (13,7, 1990);
    INSERT INTO Participa VALUES (15,3, 1993);
    INSERT INTO Participa VALUES (14,3, 1981);
    INSERT INTO Participa VALUES (17,12, 1992);
    INSERT INTO Participa VALUES (17,13, 1992);
    INSERT INTO Participa VALUES (17,14, 1992);
    INSERT INTO Participa VALUES (19,15, 1999);
    INSERT INTO Participa VALUES (19,8, 1999);
    INSERT INTO Participa VALUES (18,8, 1986);
    INSERT INTO Participa VALUES (20,15, 2001);
    INSERT INTO Participa VALUES (22,17, 1990);
    INSERT INTO Participa VALUES (21,17, 1996);
    INSERT INTO Participa VALUES (16,18, 1995);
    INSERT INTO Participa VALUES (16,16, 1995);

