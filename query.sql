CREATE TABLE company(
						companyId INT PRIMARY KEY,
						companyName VARCHAR(40),
						employees INT,
						companyLocation VARCHAR(45)
					);

CREATE TABLE information(
						id INT IDENTITY(1,1),
						material VARCHAR(25),
						brand VARCHAR(40),
						amount INT,
						stock INT,
						market VARCHAR(45)
					);

INSERT INTO company(companyId, companyName, employees, companyLocation) 
					VALUES (1, 'Eti', 4000, 'İstanbul'), (2, 'Ülker', 3500, 'İstanbul'), (3, 'Şölen', 3000, 'İzmir'),
					(4, 'Bosch', 2000, 'Adana'), (5, 'Duracell', 4000, 'İstanbul'), (6, 'Nestle', 580, 'Çorum'),
					(7, 'Duru', 253, 'Sinop'), (8, 'Bingo', 1250, 'Ankara'), (9, 'Peros', 3000, 'Antalya'),
					(10, 'Sony', 690, 'Gaziantep'), (11, 'Samsung', 3500, 'Muğla'), (12, 'Dimes', 2000, 'Samsun'),
					(13, 'Bizim', 200, 'Çankırı'), (14, 'Komili', 1460, 'Kırıkkale'), (15, 'Yudum', 1350, 'Antalya'),
					(16, 'Kent', 700, 'Çanakkale'), (17, 'Sek', 1890, 'Afyonkarahisar'), (18, 'Pınar', 2000, 'Uşak'),
					(19, 'Sütaş', 700, 'Van'), (20, 'Torku', 1890, 'Mardin'), (21, 'Loreal Paris', 2000, 'İstanbul');

INSERT INTO information(material, brand, amount, stock, market) 
					VALUES ('chocolate', 'Eti', 500, 1000, 'Migros'), ('shampoo', 'Loreal Paris', 300, 500, 'Yunus Market'),
					('wafer', 'Şölen', 350, 790, 'A101'), ('oil', 'Bizim', 153, 20, 'Kipa'),
					('olive oil', 'Komili', 120, 0, 'Carrefour'), ('milk', 'Sek', 300, 100, 'A101'),
					('battery', 'Sony', 160, 50, 'İsmar'), ('ice cream', 'Nestle', 400, 125, 'Kipa'),
					('detergent', 'Bingo', 58, 12, 'Şok'), ('telephone', 'Samsung', 5, 0, 'Bim'),
					('milk', 'Pınar', 305, 13, 'Migros'), ('orange juice', 'Dimes', 154, 30, 'Yunus Market'),
					('chips', 'Nestle', 100, 58, 'Metro'), ('apple juice', 'Nestle', 145, 30, 'Maxi'),
					('cake', 'Kent', 87, 13, 'Şok'), ('fabric softener', 'Bingo', 64, 12, 'Metro');

SELECT * FROM company;       --Retrieves the "company" table
SELECT COUNT(DISTINCT companyName) FROM company;      --Counts company names in the company table

SELECT DISTINCT brand FROM information;               --Counts brand names in the information table
SELECT * FROM information WHERE market='Migros';

--USE OR and AND 
SELECT * FROM information WHERE stock<80 AND material='milk';
SELECT * FROM company WHERE employees>2030 OR companyLocation='İstanbul';




