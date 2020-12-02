USE School

INSERT INTO Education VALUES
	('datamatiker'),
	('multimediedesign'),
	('laborant'),
	('milj�teknologi'),
	('webudvikling')

INSERT INTO Exam VALUES

--Eksamener tilknyttet datamatiker
	('datamatiker','Systemudvikling 1'),
	('datamatiker', 'Programmering 1'),
	('datamatiker', 'Forretning og IT 1'),

--Eksamener tilknyttet multimediedesign
	('multimediedesign', 'Design og programmering 1'),
	('multimediedesign', 'Design og programmering 2'),
	('multimediedesign', 'Frontend design'),

--Eksamener tilknyttet laborant
	('laborant', 'Mikrobiologi'),
	('laborant', 'Organisk kemi'),
	('laborant', 'Bioteknologi'),

--Eksamener tilknyttet milj�teknologi
	('milj�teknologi', 'Vand og milj�forst�else'),
	('milj�teknologi', 'Ressourcer'),
	('milj�teknologi', 'Arbejdsmilj� og kommunikation'),

--Eksamener tilknyttet webudvikling
	('webudvikling', 'Backend- eller frontendprogramming'),
	('webudvikling', 'Databaser'),
	('webudvikling', 'Interfacedesign')

INSERT INTO Student VALUES
--Studerende tilknyttet datamatiker
('datamatiker', 'Samantha Mikelson'),
('datamatiker', 'Markita Silvestri'),
('datamatiker', 'Alison Gowans'),
('datamatiker', 'Thu Lampman'),
('datamatiker', 'Myrl Lorusso'),

--Studerende tilknyttet multimediedesign
('multimediedesign', 'Bertie Manriquez'),
('multimediedesign', 'Maxine Schilling'),
('multimediedesign', 'Elva Rollings'),
('multimediedesign', 'Verdie Childress'),
('multimediedesign', 'Nikole Platter'),

--Studerende tilknyttet laborant
('laborant', 'Valarie Lapeyrouse'),
('laborant', 'Deonna Steinke'),
('laborant', 'Tonya Seago'),
('laborant', 'Cleora Nazzaro'),
('laborant', 'Erma Raffield'),

--Studerende tilknyttet milj�teknologi
('milj�teknologi', 'Geraldine Tingle'),
('milj�teknologi', 'Corliss Nevarez'),
('milj�teknologi', 'Brian Burciaga'),
('milj�teknologi', 'Taylor Sandor'),
('milj�teknologi', 'Solange Gutowski'),

--Studerende tilknyttet webudvikling
('webudvikling', 'Jennette Malick'),
('webudvikling', 'Mirian Siguenza'),
('webudvikling', 'Vikki Eads'),
('webudvikling', 'Nisha Hooser'),
('webudvikling', 'Carlota Circl')

INSERT INTO ExamResult VALUES
--Resultater for Systemudvikling 1 (exam_id = 1)
(1, 1, -3),
(1, 2, 0),
(1, 1, 4),
(1, 2, 4),
(1, 3, 10),
(1, 4, 12),
(1, 5, 7),

--Resultater for Programmering 1 (exam_id = 2)
(2, 1, 4),
(2, 2, 10),
(2, 3, 7)