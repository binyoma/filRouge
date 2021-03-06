
CREATE TABLE Posts(
   pos_id INT NOT NULL,
   pos_libelle VARCHAR(50),
   PRIMARY KEY(pos_id)
);

CREATE TABLE categories(
   cat_id INT NOT NULL,
   cat_libelle VARCHAR(50),
   PRIMARY KEY(cat_id)
);

CREATE TABLE typeCustomer(
   typ_id INT NOT NULL ,
   typ_libelle VARCHAR(50) NOT NULL,
   PRIMARY KEY(typ_id)
);

CREATE TABLE countries(
   cou_id VARCHAR(2),
   cou_name VARCHAR(50),
   PRIMARY KEY(cou_id)
);

CREATE TABLE Employees(
   emp_id INT NOT NULL,
   emp_regNumber INT NOT NULL,
   emp_supervisor_id INT,
   emp_lastname VARCHAR(50) NOT NULL,
   emp_firstname VARCHAR(50) NOT NULL,
   emp_address VARCHAR(50),
   emp_zipcode VARCHAR(50),
   emp_city VARCHAR(50) NOT NULL,
   emp_mail VARCHAR(100) NOT NULL,
   emp_phone INT NOT NULL,
   emp_salary VARCHAR(50),
   emp_enrty_date DATE NOT NULL,
   emp_children INT NOT NULL,
   emp_gender VARCHAR(2) NOT NULL,
   pos_id INT NOT NULL,
   PRIMARY KEY(emp_id),
   FOREIGN KEY(emp_supervisor_id) REFERENCES Employees(emp_id),
   FOREIGN KEY(pos_id) REFERENCES Posts(pos_id)
);

CREATE TABLE customers(
   cus_id INT NOT NULL,
   cus_ref VARCHAR(12) NOT NULL,
   cus_birthday DATE,
   cus_lastname VARCHAR(50) NOT NULL,
   cus_firstname VARCHAR(50) NOT NULL,
   cus_address VARCHAR(50) NOT NULL,
   cus_zipcode VARCHAR(50) NOT NULL,
   cus_city VARCHAR(50) NOT NULL,
   cus_mail VARCHAR(200),
   cus_discount INT NOT NULL,
   cus_phone INT NOT NULL,
   cus_add_date DATE,
   cus_update DATE,
   cou_id VARCHAR(2) NOT NULL,
   emp_id INT NOT NULL,
   typ_id INT NOT NULL,
   PRIMARY KEY(cus_id),
   FOREIGN KEY(cou_id) REFERENCES countries(cou_id),
   FOREIGN KEY(emp_id) REFERENCES Employees(emp_id),
   FOREIGN KEY(typ_id) REFERENCES typeCustomer(typ_id)
);

CREATE TABLE orders(
   ord_id INT,
   ord_ref VARCHAR(12),
   ord_date DATE NOT NULL,
   ord_payment DATE,
   ord_ship DATE,
   ord_reception DATE,
   ord_status VARCHAR(50),
   cus_id INT NOT NULL,
   PRIMARY KEY(ord_id),
   FOREIGN KEY(cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE suppliers(
   sup_id INT,
   sup_ref INT NOT NULL,
   sup_name VARCHAR(50) NOT NULL,
   sup_address VARCHAR(100),
   sup_zipcode VARCHAR(10),
   sup_city VARCHAR(50) NOT NULL,
   sup_phone INT NOT NULL,
   sup_mail VARCHAR(100),
   cou_id VARCHAR(2) NOT NULL,
   PRIMARY KEY(sup_id),
   FOREIGN KEY(cou_id) REFERENCES countries(cou_id)
);

CREATE TABLE Products(
   pro_id INT,
   pro_ref VARCHAR(10) NOT NULL,
   pro_ean INT NOT NULL,
   pro_name VARCHAR(50) NOT NULL,
   pro_price DECIMAL NOT NULL,
   pro_stock INT NOT NULL,
   pro_stock_alert INT NOT NULL,
   pro_color VARCHAR(50) NOT NULL,
   pro_description VARCHAR(1000),
   pro_publish INT NOT NULL,
   pro_picture VARCHAR(10) NOT NULL,
   pro_add DATE NOT NULL,
   pro_update DATE,
   sup_id INT NOT NULL,
   cat_id INT NOT NULL,
   PRIMARY KEY(pro_id),
   FOREIGN KEY(sup_id) REFERENCES suppliers(sup_id),
   FOREIGN KEY(cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE order_details(
   ode_id INT,
   ode_quantity INT NOT NULL,
   ode_discount INT NOT NULL,
   pro_id INT NOT NULL,
   ord_id INT NOT NULL,
   PRIMARY KEY(ode_id),
   FOREIGN KEY(pro_id) REFERENCES Products(pro_id),
   FOREIGN KEY(ord_id) REFERENCES orders(ord_id)
);



/* création des utilisateurs 

CREATE USER 'visitor'@'%' IDENTIFIED BY 'user01';
CREATE USER 'customer'@'%' IDENTIFIED BY 'user02';
CREATE USER 'manager'@'%' IDENTIFIED BY 'user03';
CREATE USER 'admin'@'%' IDENTIFIED BY 'user04';

 affectation des privilèges 
GRANT ALL PRIVILEGES ON filRouge.* TO 'admin'@'%' 
	
IDENTIFIED BY 'user04';

GRANT SELECT ON filRouge.products TO 'visitor'@'%' 
	
IDENTIFIED BY 'user01';

GRANT SELECT ON filRouge.* TO 'customer'@'%' 
	
IDENTIFIED BY 'user02';

GRANT INSERT ON filRouge.orders TO 'customer'@'%';
GRANT UPDATE ON filRouge.orders TO 'customer'@'%';
GRANT INSERT ON  filRouge.customers TO 'customer'@'%' ;
GRANT UPDATE ON  filRouge.customers TO 'customer'@'%' ;

GRANT SELECT,UPDATE,INSERT ON filRouge.* TO 'manager'@'%';*

/*insertion des donnéés*/
INSERT INTO `posts`(`pos_id`,`pos_libelle`) 
VALUES (1,'Directeur'),(2,'RH'),(3,'Comptable'),
 (4,'Directeur commercial'),(5,'Commercial'),
 (6,'Community manager'),(7,'Chargé de la clientèle');

 INSERT INTO `categories` (`cat_id`,`cat_libelle`) 
 VALUES (1,"ac"),(2,"vulputate"),(3,"penatibus"),
 (4,"bibendum"),(5,"libero."),(6,"lobortis"),
 (7,"nec,"),(8,"odio."),(9,"euismod"),(10,"pede,");

INSERT INTO `typecustomer`(`typ_id`,`typ_libelle`) 
VALUES (1,'professionnel'),(2,'particulier');

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');


INSERT INTO `employees` (`emp_id`,`emp_regNumber`,`emp_supervisor_id`,`emp_lastname`,`emp_firstname`,`emp_address`,`emp_zipcode`,`emp_city`,`emp_mail`,`emp_phone`,`emp_entry_date`,`emp_children`,`emp_gender`,`emp_birthday`,`pos_id`) 
VALUES (1,"564203",NULL,"Caesar","Holman","P.O. Box 951, 164 Nec, Ave","50284","Baltasound","mauris@magna.edu","06 10 75 30 04","2020-12-13 03:21:03",2,"M","1969-12-31 16:00:00",1);

INSERT INTO `employees` (`emp_id`,`emp_regNumber`,`emp_supervisor_id`,`emp_lastname`,`emp_firstname`,`emp_address`,`emp_zipcode`,`emp_city`,`emp_mail`,`emp_phone`,`emp_entry_date`,`emp_children`,`emp_gender`,`emp_birthday`,`pos_id`) 
VALUES (2,"564204",1,"Dexter","Scott","P.O. Box 659, 2036 Dis Av.","29981","Skovorodino","lectus@etarcu.ca",0499699416,"2021-03-01 02:28:12",2,"F","1969-12-31 16:00:00",2),
(3,"564205",1,"Beverly","Sparks","2176 Orci Avenue","01785","Luik","arcu.Aliquam@diamluctuslobortis.org",0455823469,"2020-07-21 07:34:38",0,"M","1969-12-31 16:00:00",3),
(4,"564206",1,"Aladdin","Lopez","505-980 Donec Street","55896","Isla de Maipo","Nulla@lacinia.net",0290142899,"2019-09-22 20:33:04",2,"F","1969-12-31 16:00:00",4);

INSERT INTO `employees` (`emp_id`,`emp_regNumber`,`emp_supervisor_id`,`emp_lastname`,`emp_firstname`,`emp_address`,`emp_zipcode`,`emp_city`,`emp_mail`,`emp_phone`,`emp_entry_date`,`emp_children`,`emp_gender`,`emp_birthday`,`pos_id`) 
VALUES(5,"564207",4,"Sage","Olson","3346 Senectus St.","03120","Olen","amet.risus@euodioPhasellus.edu",0395133693,"2019-12-02 07:13:40",2,"F","1985-12-31 16:00:00",6),
(6,"564208",4,"Baker","Horne","6494 Ipsum. Avenue","56638","Marche-les-Dames","mus.Proin.vel@Vivamusmolestiedapibus.edu",0378618925,"2020-01-21 11:59:32",1,"M","1990-12-31 16:00:00",7),
(7,"564209",4,"Graiden","Macdonald","9491 Convallis Av.","17332","Meerdonk","metus.Aliquam.erat@loremfringilla.ca",0873412202,"2021-03-28 21:32:45",0,"F","2000-12-31 16:00:00",5),
(8,"564210",4,"Regina","Simon","2440 Praesent Avenue","20695","Wetaskiwin","sodales.purus@semperduilectus.org",0198740304,"2020-08-15 02:55:38",3,"M","1979-12-31 16:00:00",5),
(9,"564211",4,"Josiah","Pearson","193-1179 Nostra, St.","06235","Castello Tesino","sed@felispurus.net",0445369111,"2021-04-24 02:13:53",1,"F","2002-12-31 16:00:00",5),
(10,"564212",4,"Xandra","Sellers","Ap #793-3919 Fringilla Rd.","94544","Vaux-sous-ChŽvremont","In.nec@dictummagnaUt.com",0102133110,"2019-10-13 08:13:12",2,"M","1993-12-31 16:00:00",5),
(11,"564213",4,"Linus","Walter","Ap #990-7424 Sed Rd.","57668","Dumbarton","vulputate.lacus.Cras@antedictummi.net",0614857803,"2019-10-29 01:19:34",3,"F","1999-12-31 16:00:00",5),
(12,"564214",4,"Darrel","Crawford","2119 Dolor. Av.","54283","Mondolfo","Mauris.ut@sed.co.uk",0403658770,"2019-06-18 12:09:24",1,"M","1996-12-31 16:00:00",5),
(13,"564215",4,"Arthur","Erickson","2933 Lacus, Rd.","40024","Rocourt","mus@diamloremauctor.org",0249995431,"2021-04-14 18:14:14",1,"F","2003-12-31 16:00:00",5),
(14,"564216",4,"Amy","Richards","P.O. Box 627, 1797 Quis, Rd.","46271","Westlock","eget@magna.ca",0312180581,"2020-06-29 07:07:12",0,"M","1987-12-31 16:00:00",5),
(15,"564217",4,"Clayton","Santana","578-1012 Hymenaeos. Rd.","65034","Mainz","tellus.Phasellus.elit@non.com",0604453851,"2019-06-08 23:49:47",3,"F","1990-12-31 16:00:00",5),
(16,"564218",4,"Steven","Fernandez","312-2920 Nullam Ave","85617","Arkhangelsk","ut@eusemPellentesque.ca",0292439349,"2020-09-17 14:41:21",1,"M","1988-12-31 16:00:00",5),
(17,"564219",4,"Susan","Howe","723-6048 Sit Street","79708","Chía","non@augueutlacus.edu",0363177632,"2019-06-12 20:20:33",1,"F","2004-12-31 16:00:00",5);

INSERT INTO `customers` (`cus_id`,`cus_ref`,`cus_birthday`,`cus_lastname`,`cus_firstname`,`cus_address`,`cus_zipcode`,`cus_city`,`cus_mail`,`cus_phone`,`cus_discount`,`cus_add_date`,`cou_id`,`emp_id`,`typ_id`) 
VALUES (1,"71879566399","1996-03-12 00:23:08","Walker","Harding","P.O. Box 529, 2691 Mauris St.","31730","Pariaman","Duis.dignissim.tempor@Maurisvestibulum.edu",0510980593,9,"2002-03-09 09:24:59","GB",11,1),
(2,"84304857099","1975-07-14 03:42:50","Amelia","Perry","Ap #240-3938 Vel Street","25440","Soissons","eu.lacus.Quisque@metusfacilisis.edu",0639997962,8,"2009-05-18 12:09:30","FR",9,2),
(3,"87247846599","1974-07-14 18:49:17","Hunter","Shelton","837-5282 Dictum Road","25755","Narbolia","Vivamus.euismod@justo.ca",0425933049,8,"1989-10-02 03:58:44","KE",9,2),
(4,"95591790499","1968-09-15 09:18:44","Avram","Byers","Ap #904-2852 Blandit Av.","95288","Spokane","magna.sed@Cras.org",0972883888,10,"1988-08-27 21:02:48","CA",13,1),
(5,"02608544599","2010-10-05 14:57:56","Neville","Workman","P.O. Box 554, 4718 Gravida Rd.","82960","Londerzeel","eros.non.enim@venenatislacus.edu",0447410630,5,"1996-05-08 14:09:10","US",7,1),
(6,"82705981599","1974-01-29 22:24:06","Kessie","Conley","364-1765 Eget St.","37028","Gambolò","auctor.nunc.nulla@ametconsectetuer.co.uk",0587280067,10,"1990-07-25 11:47:23","GB",12,1),
(7,"37439451299","1944-12-22 20:14:37","Xanthus","Perkins","P.O. Box 315, 5491 Fames Road","48252","Nelson","lectus.Nullam.suscipit@auctorMauris.edu",0362574572,12,"2016-02-13 00:50:28","GM",10,2),
(8,"28404771799","1948-07-17 07:27:33","Yetta","Bruce","P.O. Box 507, 6462 A, Av.","96707","Sivry-Rance","porttitor.tellus@egetlaoreetposuere.com",0556119186,13,"1986-10-28 13:16:06","FR",17,1),
(9,"75388346099","1962-01-26 08:51:16","Addison","Goodwin","P.O. Box 960, 1741 Amet Avenue","83514","Taltal","mauris.ipsum@duiaugueeu.co.uk",0682804311,15,"1989-03-06 01:47:19","GB",16,1),
(10,"01202269299","1978-08-29 06:54:06","Inga","Haynes","7022 Ultrices Ave","23951","Bhir","nulla.Integer.vulputate@lectus.org",0961370304,11,"1998-03-28 01:21:42","FR",14,2),
(11,"36423574399","1959-08-18 04:33:47","Portia","Rosario","P.O. Box 283, 2645 Sagittis Rd.","97621","Tomsk","tortor.Nunc@nislelementumpurus.co.uk",0236956555,25,"2000-01-30 08:13:48","FR",13,2),
(12,"00352122799","1982-05-06 03:19:13","Uriel","Terrell","Ap #552-4157 Velit. Rd.","75414","Morrinsville","In@nonegestasa.ca",0969863896,76,"1990-11-21 18:55:24","FR",17,2),
(13,"80773150699","1991-09-15 09:02:46","Meredith","Flores","P.O. Box 909, 682 Arcu St.","15141","Armidale","mus.Proin@scelerisque.edu",0559948737,58,"1991-01-21 11:25:19","FR",9,2),
(14,"16413987899","1976-11-11 22:10:28","Uriah","Conrad","8630 Mauris Avenue","08914","Malgesso","dolor.elit@Pellentesque.edu",0283459348,18,"2015-01-05 08:09:55","FR",12,2),
(15,"64971955899","1951-02-04 22:57:14","Madeson","Roman","Ap #714-3234 Euismod Av.","67985","Rves","semper.et@tortorIntegeraliquam.edu",0648764484,15,"1986-11-10 06:30:35","FR",8,1),
(16,"66850171799","1972-03-01 16:39:55","Driscoll","Gilmore","P.O. Box 520, 467 Amet Ave","64144","Jaboatão dos Guararapes","sodales.elit.erat@disparturient.net",0387482469,17,"2002-12-02 02:44:23","FR",8,2),
(17,"07854527499","1949-09-29 10:20:36","Francis","Garner","P.O. Box 174, 3074 Lacus. St.","16604","Nevers","Curabitur.massa@aliquam.org",0610359621,10,"1993-04-11 02:11:49","FR",7,2),
(18,"70293763199","1961-06-14 14:56:24","Ferris","Conrad","Ap #642-6318 Varius Rd.","28656","Kota","primis@liberodui.com",0134228546,14,"2012-09-07 04:13:59","FR",12,1),
(19,"78283129799","1950-07-15 22:26:48","Ruth","Lawrence","861-521 Vitae, Road","70757","Valéncia","elementum.sem@convallisconvallis.net",0584642021,15,"1993-02-24 04:14:45","FR",16,1),
(20,"57857846299","1973-05-28 16:15:19","Jack","Cote","P.O. Box 684, 4069 Lorem St.","02985","Darwin","Cum@ametornare.org",0188034368,18,"2005-04-29 14:33:48","FR",7,2);


INSERT INTO `suppliers` (`sup_id`,`sup_ref`,`sup_birthday`,`sup_name`,`sup_address`,`sup_zipcode`,`sup_city`,`sup_mail`,`sup_phone`,`cou_id`)
 VALUES (1,"95253422099","1987-03-16 02:23:46","Honorato G. Valdez","P.O. Box 977, 7297 Sed Rd.","24672","Saltcoats","Duis.at@lobortis.ca",0406518327,"CA"),
 (2,"18848527199","1940-12-20 20:23:23","Clark E. Carver","3758 Et, Road","75739","Épernay","mi.pede.nonummy@egetodio.net",0755683269,"FR"),
 (3,"47227834899","1990-05-29 14:39:53","Jenna P. Todd","2888 Tristique Rd.","24440","Mostazal","consectetuer.adipiscing@eget.edu",0250555148,"GB"),
 (4,"70681968199","1958-07-01 04:50:47","Keane Y. Bowman","P.O. Box 886, 5407 Fringilla Street","24984","Groenlo","Mauris.vestibulum@musDonecdignissim.ca",0812233729,"CA"),
 (5,"51628603699","1947-01-09 06:46:33","Uta W. George","5419 Vel Av.","63380","Sangerhausen","tempus.lorem@non.ca",0817056290,"FR"),
 (6,"83509079599","1997-09-20 07:39:22","Haviva W. Fields","P.O. Box 990, 8735 Erat Av.","19123","Ranchi","justo@velitPellentesque.net",0648587578,"FR"),
 (7,"80365565099","1939-08-14 05:06:11","Bruno D. Roman","9151 Amet Rd.","50390","Biggleswade","Nam.nulla.magna@Nullasemper.org",0565641875,"US"),
 (8,"22387507999","1980-12-11 10:03:22","Hilary R. Moreno","8735 Cras Avenue","96508","Los Vilos","erat@fames.co.uk",0588436074,"GB"),
 (9,"97542091399","1960-12-30 06:29:25","Lucy O. Chandler","P.O. Box 369, 4318 Eu, Av.","82422","Santipur","fermentum.metus.Aenean@afelis.co.uk",0490438765,"GB"),
 (10,"15247084299","2010-02-11 18:11:25","Barry X. Patton","Ap #852-489 Sed, Av.","07072","Ratlam","sociis.natoque.penatibus@ut.edu",0817377169,"US"),
 (11,"10912539099","1956-12-31 01:59:00","Christian V. Carver","695-9715 Montes, Rd.","84503","Wood Buffalo","eu@placeratorcilacus.com",0253890046,"RU"),
 (12,"07899772099","1970-03-26 01:46:49","Elvis N. Carey","337-8903 Natoque St.","39109","Coreglia Antelminelli","tempus@dolordolortempus.edu",0469086509,"FR"),
 (13,"17303774699","1985-10-09 10:21:36","Catherine P. Keller","Ap #907-4738 Scelerisque St.","31484","Halle","molestie.arcu@lacus.ca",0793871543,"FR"),
 (14,"61997661199","1943-02-12 14:42:53","Maisie D. Dillard","289-5539 Porttitor Road","97358","Hillsboro","Proin.velit@in.org",0117158170,"KE"),
 (15,"40660317299","2014-04-02 04:56:43","Garrett F. Kidd","6669 Imperdiet Ave","66268","Merksem","aliquet.Proin.velit@Nuncmaurissapien.co.uk",0980499234,"US"),
 (16,"03693628099","1976-10-24 22:55:28","Uriah P. York","321-3479 Auctor St.","18449","Clare","dui@volutpatornare.edu",0824996105,"FR"),
 (17,"10958993399","2015-06-10 12:16:53","Ava V. Vincent","Ap #404-7408 Neque. Road","72136","Bergerac","et@gravidasitamet.com",0351605724,"FR"),
 (18,"54628842299","1985-08-18 21:00:24","Emily N. Gamble","Ap #943-623 Urna Road","27508","Midlands","in.aliquet.lobortis@Donecvitaeerat.co.uk",0274943463,"FR"),
 (19,"45515769799","1972-10-13 04:13:00","Zahir V. Mayo","7751 Feugiat. St.","17355","Quenast","adipiscing@placerataugue.net",0340829239,"FR"),
 (20,"12592451799","1958-10-23 23:16:32","Zorita Z. Mcleod","233-3265 Nulla Ave","22765","Armento","sit.amet@afeugiattellus.ca",0889052916,"FR");

 INSERT INTO `orders` (`ord_id`,`ord_ref`,`ord_date`,`ord_payment`,`ord_ship`,`ord_reception`,`ord_status`,`cus_id`)
 VALUES (1,"06216447699","2017-04-13 11:29:06","2017-06-11 07:29:00","2017-08-10 22:46:32","2017-08-17 13:57:35","soldée",4),
 (2,"64294893399","2017-03-12 08:58:06","2017-03-12 08:58:06","2017-03-12 08:58:06","2017-03-12 08:58:06","soldée",10),
 (3,"47304744899","2018-03-30 23:22:36","2019-06-01 02:41:10","2019-11-08 13:18:16","2019-09-01 08:57:28","soldée",9),
 (4,"76468606099","2020-01-20 23:55:29","2020-01-20 23:55:29","2020-01-20 23:55:29","2020-01-20 23:55:29","soldée",13),
 (5,"25843463299","2018-07-22 22:16:24","2018-07-22 22:16:24","2018-07-22 22:16:24","2018-07-22 22:16:24","soldée",20),
 (6,"97744951399","2018-05-27 23:17:23","2018-06-12 23:07:05","2018-09-07 11:28:26","2019-03-18 11:59:30","soldée",9),
 (7,"22268421099","2020-02-06 23:09:22","2020-05-04 14:41:46","2020-06-30 09:17:55","2020-07-09 03:54:32","préparation",15),
 (8,"40347695899","2013-09-13 23:30:57","2014-04-20 08:23:25","2020-07-13 10:18:36","2020-08-07 09:31:43","préparation",4),
 (9,"75539552999","2020-02-10 01:33:32","2020-11-13 17:08:37","2021-01-31 00:30:50","2021-08-05 07:11:38","préparation",18),
 (10,"36284828899","2017-06-30 20:43:27","2017-06-30 19:35:12","2017-08-23 10:57:31","2017-08-02 18:48:29","soldée",20),
 (11,"31641701699","2020-01-05 07:54:36",NULL,NULL,NULL,"annulée",14),
 (12,"18959737899","2017-09-07 18:02:08","2017-09-07 18:02:08","2017-09-07 18:02:08","2017-09-07 18:02:08","soldée",2),
 (13,"14708021399","2020-05-16 14:51:19","2020-05-16 14:51:19","2020-05-16 14:51:19","2020-05-16 14:51:19","soldée",2),
 (14,"84746530399","2014-08-22 09:01:42","2014-08-22 09:01:42","2014-08-22 09:01:42","2014-08-22 09:01:42","soldée",11),
 (15,"86578862899","2017-12-21 17:50:39","2017-12-21 17:50:39","2017-12-21 17:50:39","2017-12-21 17:50:39","soldée",14),
 (16,"08899219099","2015-02-28 17:07:35",NULL,NULL,NULL,"annulée",19),
 (17,"88776712799","2017-04-12 08:32:25","2017-08-02 15:56:18","2018-06-03 10:36:46","2018-06-05 16:55:45","soldée",18),
 (18,"48651227099","2019-04-12 17:13:21","2019-07-12 06:35:38","2021-05-15 08:30:06","2021-06-12 21:38:50","retard",11),
 (19,"73743193799","2017-10-07 18:40:42","2019-07-17 19:05:07","2019-10-17 09:43:44","2019-10-21 01:51:52","soldée",10),
 (20,"31645951799","2014-02-07 06:29:01","2017-06-18 12:39:49","2018-09-12 10:27:28","2019-09-11 21:31:11","soldée",10);


 INSERT INTO `products` (`pro_id`,`pro_ref`,`pro_ean`,`pro_name`,`pro_price`,`pro_stock`,`pro_stock_alert`,`pro_color`,`pro_publish`,`pro_picture`,`pro_add`,`sup_id`,`cat_id`)
 VALUES (1,"62342435099","162804219406","Nunc","92.30",57,20,"Vivamus molestie",0,"interdum","2014-03-08 08:19:17",18,5),
 (2,"77256522099","164501072567","gravida.","44.02",50,23,"molestie. Sed",1,"facilisis","2019-06-11 20:57:23",11,5),
 (3,"45553583699","165502180713","turpis.","91.41",73,20,"dapibus ligula.",1,"libero","2015-11-25 09:27:00",20,1),
 (4,"70935797599","163011246877","lobortis.","60.91",34,26,"eu erat",0,"euismod","2018-10-31 10:33:13",10,9),
 (5,"76326526799","165804198678","Nullam","364.81",82,23,"elit, pellentesque",1,"elit","2017-04-24 02:38:33",18,10),
 (6,"03621834499","163001057276","risus.","632.88",31,25,"iaculis odio.",1,"Donec","2014-02-08 04:04:52",4,3),
 (7,"92230539399","163109020853","Morbi","70.41",70,29,"eu tellus",1,"ut","2014-04-11 16:02:45",4,3),
 (8,"02360672299","163708060920","vitae","280.02",85,23,"risus. Donec",1,"elit.","2015-01-24 01:14:49",20,9),
 (9,"72384864899","161607212105","Donec","129.16",24,24,"dictum ultricies",0,"a","2014-03-28 19:16:45",13,8),
 (10,"96238237499","166606074448","fringilla","192.55",51,20,"Curabitur dictum.",1,"mauris","2014-12-01 12:10:51",3,2),
 (11,"72904062899","167704191670","Nullam","048.28",77,22,"Morbi non",1,"senectus","2019-02-21 08:48:33",16,4),
 (12,"16713251199","160304290273","Cras","526.39",89,24,"Aliquam auctor,",1,"Donec","2014-08-21 03:33:14",9,6),
 (13,"84486566799","169207146029","vel,","625.47",77,26,"luctus felis",0,"lorem.","2019-04-03 05:05:19",6,1),
 (14,"79697930399","164410148391","eget","438.55",72,20,"Quisque imperdiet,",1,"adipiscing","2016-04-24 00:17:07",20,10),
 (15,"88321110499","166110093264","diam.","913.10",56,20,"molestie tellus.",0,"enim.","2017-12-03 08:27:16",15,7),
 (16,"36902427899","168201108662","sapien,","201.11",90,30,"pretium aliquet,",0,"libero","2015-07-19 13:27:38",14,2),
 (17,"39302308799","162501228908","Curabitur","920.25",27,21,"est, vitae",0,"nisl.","2017-11-25 22:29:17",12,9),
 (18,"07408447599","169109134305","eu","671.33",92,24,"Curabitur massa.",0,"Curabitur","2017-08-03 23:11:35",11,1),
 (19,"91623262599","161710088665","pharetra.","748.19",92,22,"Phasellus libero",0,"Aliquam","2015-10-08 03:52:17",3,10),
 (20,"20819560699","160503036857","Lorem","105.39",11,26,"diam lorem,",0,"eleifend,","2019-08-18 11:05:36",3,5);


 INSERT INTO `order_details` (`ode_id`,`ode_quantity`,`ode_discount`,`pro_id`,`ord_id`) 
VALUES (1,7,9,14,18),(2,10,16,18,5),(3,1,8,20,16),(4,5,0,11,12),(5,6,9,10,6),(6,2,11,2,10),
(7,5,11,10,1),(8,8,4,12,8),(9,5,2,16,15),(10,2,13,8,14),(11,6,19,12,6),(12,7,11,16,8),
(13,4,10,6,20),(14,10,3,7,7),(15,4,17,19,4),(16,1,4,5,20),(17,5,7,17,13),(18,1,5,10,16),
(19,7,9,10,18),(20,4,16,10,5);