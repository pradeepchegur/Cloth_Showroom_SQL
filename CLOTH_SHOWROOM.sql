drop table owner cascade constraints;
drop table manager cascade constraints;
drop table clothshowroom cascade constraints;
drop table cloth cascade constraints;
drop table empl cascade constraints;
drop table customer cascade constraints;
drop table bill cascade constraints;
drop table supplier cascade constraints;
drop table mng_dependent cascade constraints;
drop table enquiredby cascade constraints;
drop table generate cascade constraints;

select * from owner;
select * from manager;
select * from clothshowroom;
select * from cloth;
select * from empl;
select * from customer;
select * from bill;
select * from supplier;
select * from mng_dependent;
select * from enquiredby;
select * from generate;

create table owner
(
o_id int primary key,
o_name varchar2(20),
o_ph int,
o_address varchar2(20),
o_dob date
);

insert into owner values(1,'Swagat',9972861930,'Vidyanagar','12-jan-85');
insert into owner values(2,'Naveen',8880586957,'Gokul','02-jun-86');
insert into owner values(3,'Praveen',9596327370,'KEC','10-feb-84');
insert into owner values(4,'Swagat',9908091950,'HDMC','25-may-80');
insert into owner values(5,'Sanjeev',9148352526,'Hosur','22-may-85');

create table manager
(
m_id int primary key,
m_name varchar2(20),
m_ph int,
m_address varchar2(20),
m_dob date,
salary int
);

insert into manager values(1,'Appu',8872861930,'Rampur','12-sep-90',30000);
insert into manager values(2,'Darshan',8286223119,'Dharwad','20-oct-89',32000);
insert into manager values(3,'Vittal',9536214756,'Belgaum','18-feb-85',28000);
insert into manager values(4,'Jeevan',897456235,'Bagalkot','01-jan-87',30000);
insert into manager values(5,'Dravid',8772861930,'Haveri','02-sep-90',35000);
insert into manager values(6,'Siddu',8372561900,'Gadag','15-nov-91',30000);
insert into manager values(7,'Bassu',8886223119,'Dharwad','20-oct-89',32000);
insert into manager values(8,'Vikram',8536214756,'Belgaum','18-feb-85',28000);
insert into manager values(9,'Jairam',890056235,'Hubballi','01-jan-87',30000);
insert into manager values(10,'Appu',7772861930,'Haveri','02-sep-90',35000);

create table clothshowroom
(
cs_id int primary key,
cs_name varchar2(20),
gst varchar2(20),
cs_address varchar2(10),
ow_id int references owner(o_id),
ma_id int references manager(m_id)
);

insert into clothshowroom values(1,'Max','24AAACC1206D1ZM','Hubballi',1,1);
insert into clothshowroom values(2,'Jee','24AAACC1206D1ZA','Hubballi',2,2);
insert into clothshowroom values(3,'Zero','24AAACC1206D1ZB','Dharwad',3,3);
insert into clothshowroom values(4,'Nano','24AAACC1206D1ZC','Hubballi',4,4);
insert into clothshowroom values(5,'Quality','24AAACC1206D1ZD','Belagavi',5,5);
insert into clothshowroom values(6,'Jabardasth','24AAACC1206D1ZE','Hubballi',1,6);
insert into clothshowroom values(7,'Shree','24AAACC1206D1ZF','Hubballi',2,7);
insert into clothshowroom values(8,'Metro','24AAACC1206D1ZG','Bangalore',3,8);
insert into clothshowroom values(9,'Mast','24AAACC1206D1ZH','Hubballi',4,9);
insert into clothshowroom values(10,'Super','24AAACC1206D1ZI','Bangalore',5,10);

create table cloth
(
c_id int primary key,
c_brand varchar2(20),
c_type varchar2(20),
c_size int,
c_price int,
c_availability int,
clsh_id int references clothshowroom(cs_id)
);

insert into cloth values(1,'Essa','Pant',26,400,5,1);
insert into cloth values(2,'lehenga','skirt',26,500,6,1);
insert into cloth values(3,'ramraj','shirt',26,600,2,2);
insert into cloth values(4,'cotton candy','t shirt',26,700,15,2);
insert into cloth values(5,'Ilkal','Saree',NULL,650,20,2);
insert into cloth values(6,'Salwar','Churidhar',54,700,15,3);
insert into cloth values(7,'ramraj','shirt',27,650,15,4);
insert into cloth values(8,'cotton candy','t shirt',27,705,5,4);
insert into cloth values(9,'Essa','Pant',28,655,6,5);
insert into cloth values(10,'Punjabi salwar','Churidhar',48,730,11,5);
insert into cloth values(11,'ramraj','shirt',28,520,15,5);
insert into cloth values(12,'cotton candy','t shirt',28,663,13,5);
insert into cloth values(13,'Essa','Pant',26,400,35,6);
insert into cloth values(14,'woen','dhoti',26,500,36,6);
insert into cloth values(15,'ramraj','shirt',26,600,22,7);
insert into cloth values(16,'cotton candy','t shirt',26,700,35,7);
insert into cloth values(17,'Nehru','Kurtha',27,650,28,8);
insert into cloth values(18,'Silk Saree','Saree',NULL,700,25,9);
insert into cloth values(19,'ramraj','shirt',27,650,45,10);
insert into cloth values(20,'cotton candy','t shirt',27,705,5,10);
insert into cloth values(21,'Nauvari','Saree',NULL,655,15,2);
insert into cloth values(22,'Silk','Lehenga',28,730,11,2);
insert into cloth values(23,'ramraj','shirt',28,520,15,2);
insert into cloth values(24,'cotton candy','t shirt',28,663,33,9);
insert into cloth values(25,'Essa','Pant',26,400,15,8);
insert into cloth values(26,'Anarkali','Anarkali',26,500,16,7);
insert into cloth values(27,'ramraj','shirt',26,600,12,6);
insert into cloth values(28,'cotton candy','t shirt',26,700,15,5);
insert into cloth values(29,'Essa','Pant',27,650,20,4);
insert into cloth values(30,'jea','coat',27,700,15,6);
insert into cloth values(31,'ramraj','shirt',27,650,25,7);
insert into cloth values(32,'cotton candy','t shirt',27,705,25,7);
insert into cloth values(33,'Essa','Pant',28,655,16,8);
insert into cloth values(34,'Silk Saree','Saree',NULL,730,11,9);
insert into cloth values(35,'ramraj','shirt',28,520,15,9);
insert into cloth values(36,'cotton candy','t shirt',28,663,13,10);
insert into cloth values(37,'Essa','Pant',26,400,25,1);
insert into cloth values(38,'Jessa','Frok',26,500,16,2);
insert into cloth values(39,'ramraj','shirt',26,600,22,2);
insert into cloth values(40,'cotton candy','t shirt',26,700,15,3);
insert into cloth values(41,'Essa','Pant',27,650,20,5);
insert into cloth values(42,'Jessa','Gown',27,700,25,6);
insert into cloth values(43,'ramraj','shirt',27,650,25,7);
insert into cloth values(44,'cotton candy','t shirt',27,705,28,8);
insert into cloth values(45,'Essa','Pant',28,655,26,8);
insert into cloth values(46,'Ilkal','Saree',NULL,730,21,9);
insert into cloth values(47,'ramraj','shirt',28,520,15,1);
insert into cloth values(48,'cotton candy','t shirt',28,663,33,1);
insert into cloth values(49,'Essa','Pant',26,400,35,2);
insert into cloth values(50,'Quality','Saree',NULL,500,16,3);
insert into cloth values(51,'ramraj','shirt',26,600,22,4);
insert into cloth values(52,'cotton candy','t shirt',26,700,15,4);
insert into cloth values(53,'Essa','Pant',27,650,30,5);
insert into cloth values(54,'Quality','Saree',NULL,700,35,7);
insert into cloth values(55,'ramraj','shirt',27,650,25,8);
insert into cloth values(56,'cotton candy','t shirt',27,705,15,9);
insert into cloth values(57,'Bubble','Saree',NULL,650,16,10);
insert into cloth values(58,'Casual','Churidhar',45,730,11,10);
insert into cloth values(59,'ramraj','shirt',28,520,15,1);
insert into cloth values(60,'cotton candy','t shirt',28,663,13,5);
insert into cloth values(61,'Essa','Pant',26,400,5,4);
insert into cloth values(62,'jee','Kameez',26,500,6,10);
insert into cloth values(63,'ramraj','shirt',26,600,2,6);
insert into cloth values(64,'cotton candy','t shirt',26,700,15,2);
insert into cloth values(65,'Essa','Pant',27,650,20,4);
insert into cloth values(66,'Women','Ghagra',27,700,15,2);
insert into cloth values(67,'ramraj','shirt',27,650,15,4);
insert into cloth values(68,'cotton candy','t shirt',27,705,5,6);
insert into cloth values(69,'Essa','Pant',28,655,6,7);
insert into cloth values(70,'Lam','Froks',28,730,11,8);
insert into cloth values(71,'ramraj','shirt',28,520,15,9);
insert into cloth values(72,'cotton candy','t shirt',28,663,13,10);
insert into cloth values(73,'Essa','Pant',26,400,5,1);
insert into cloth values(74,'SK','Skirts',26,500,6,2);
insert into cloth values(75,'ramraj','shirt',26,600,2,3);
insert into cloth values(76,'cotton candy','t shirt',26,700,15,4);
insert into cloth values(77,'Essa','Pant',27,650,20,5);
insert into cloth values(78,'jea','Saree',27,700,15,6);
insert into cloth values(79,'ramraj','shirt',27,650,15,7);
insert into cloth values(80,'cotton candy','t shirt',27,705,5,8);
insert into cloth values(81,'Essa','Pant',28,655,6,9);
insert into cloth values(82,'Palazzo','Kurtha',28,730,11,10);
insert into cloth values(83,'ramraj','shirt',28,520,15,1);
insert into cloth values(84,'cotton candy','t shirt',28,663,13,2);
insert into cloth values(85,'ramraj','shirt',28,520,15,1);
insert into cloth values(86,'Essa','Pant',26,400,5,3);
insert into cloth values(87,'Sahara','Dhoti',26,500,6,4);
insert into cloth values(88,'ramraj','shirt',26,600,2,5);
insert into cloth values(89,'cotton candy','t shirt',26,700,15,6);
insert into cloth values(90,'Essa','Pant',27,650,20,7);
insert into cloth values(91,'Sahara','Sharara',27,700,15,8);
insert into cloth values(92,'ramraj','shirt',27,650,15,9);
insert into cloth values(93,'cotton candy','t shirt',27,705,5,10);
insert into cloth values(94,'Essa','Pant',28,655,6,1);
insert into cloth values(95,'Sahara','Sharara',28,730,11,2);
insert into cloth values(96,'ramraj','shirt',28,520,15,3);
insert into cloth values(97,'cotton candy','t shirt',28,663,13,4);
insert into cloth values(98,'Essa','Pant',26,400,15,5);
insert into cloth values(99,'Silk Saree','Saree',NULL,500,16,6);
insert into cloth values(100,'ramraj','shirt',26,600,2,7);
insert into cloth values(101,'cotton candy','t shirt',26,700,15,8);
insert into cloth values(102,'Essa','Pant',27,650,20,9);
insert into cloth values(103,'Shree','Dhoti',27,700,15,10);
insert into cloth values(104,'ramraj','shirt',27,650,25,1);
insert into cloth values(105,'cotton candy','t shirt',27,705,5,2);
insert into cloth values(106,'Essa','Pant',28,655,6,3);
insert into cloth values(107,'jea','coat',28,730,31,4);
insert into cloth values(108,'ramraj','shirt',28,520,15,5);
insert into cloth values(109,'cotton candy','t shirt',28,663,43,6);
insert into cloth values(110,'Essa','Pant',26,400,11,7);
insert into cloth values(111,'jea','coat',26,500,18,8);
insert into cloth values(112,'ramraj','shirt',26,600,2,9);
insert into cloth values(113,'cotton candy','t shirt',26,700,5,10);
insert into cloth values(114,'Essa','Pant',27,650,29,1);
insert into cloth values(115,'jea','coat',27,700,27,2);
insert into cloth values(116,'ramraj','shirt',27,650,15,3);
insert into cloth values(117,'cotton candy','t shirt',27,705,5,4);
insert into cloth values(118,'Essa','Pant',28,655,6,5);
insert into cloth values(119,'jea','coat',28,730,21,6);
insert into cloth values(120,'ramraj','shirt',28,520,15,7);
insert into cloth values(121,'cotton candy','t shirt',28,663,6,8);
insert into cloth values(122,'Essa','Pant',28,655,6,9);
insert into cloth values(123,'Ilkal','Saree',NULL,730,31,10);

create table empl
(
e_id int primary key,
e_name varchar2(20),
e_ph int,
e_address varchar2(20),
e_dob date,
e_salary int,
clsho_id int references clothshowroom(cs_id),
mg_id int references manager(m_id)
);

insert into empl values(1,'Praveen',7772861930,'Dharwad','12-sep-97',5000,1,1);
insert into empl values(2,'Naveen',9772861830,'Hubblli','11-jan-98',5000,2,2);
insert into empl values(3,'Jubin',8972861931,'Dharwad','12-feb-99',5000,3,3);
insert into empl values(4,'Sonu',8772861938,'Haveri','12-march-97',5000,4,4);
insert into empl values(5,'Sakshi',7772861920,'Belgaum','18-apr-96',5000,5,5);
insert into empl values(6,'Priya',8882861110,'Davanagere','20-jan-97',6000,6,6);
insert into empl values(7,'Pradeep',9992861990,'Dakshin kannada','12-may-99',8000,7,7);
insert into empl values(8,'Veeresh',8872111985,'Miraj','20-jun-97',8500,8,8);
insert into empl values(9,'Netra',7232861999,'Chitradurga','11-july-90',9000,9,9);
insert into empl values(10,'Aparna',7772861911,'Dharwad','23-aug-91',9500,10,10);
insert into empl values(11,'Sachin',7772861988,'Bellari','24-sep-92',8000,1,1);
insert into empl values(12,'Shruthi',7712861285,'Bengaluru','7-oct-93',7000,2,2);
insert into empl values(13,'Prakash',7722881950,'Bannerugatta','8-sep-97',7500,3,3);
insert into empl values(14,'Manish',7732823950,'Bidar','7-aug-93',5500,4,4);
insert into empl values(15,'Rohit',7745861940,'Gulbarga','21-nov-94',5500,5,5);
insert into empl values(16,'Rakesh',7760861970,'Hospete','20-dec-93',5050,6,6);
insert into empl values(17,'Priyanka',7722861530,'Athani','22-sep-97',5600,7,7);
insert into empl values(18,'Sparsha',7782861929,'Chamarajanagar','10-oct-97',5700,8,8);
insert into empl values(19,'William',7792861933,'Gadag','12-sep-97',8800,9,9);
insert into empl values(20,'Sudeep',7702861935,'Hassan','02-sep-99',5200,10,10);
insert into empl values(21,'Rukmini',7111121930,'Bagalkot','5-sep-96',5050,1,1);
insert into empl values(22,'Raveena',8925136030,'Dharwad','4-feb-97',7200,2,2);
insert into empl values(23,'Aliya',7877887992,'Nagapur','10-mar-97',15000,3,3);
insert into empl values(24,'Ijaj',7222351520,'Ballari','20-jan-97',18000,4,4);
insert into empl values(25,'Jaggu',7772850010,'Koppal','10-feb-98',20000,5,5);
insert into empl values(26,'Raj',7150203930,'Dharwad','15-sep-99',5200,6,6);
insert into empl values(27,'Jayant',8111222930,'Dharwad','20-oct-97',5500,7,7);
insert into empl values(28,'Karthik',7772711930,'Koppal','12-sep-99',9000,8,8);
insert into empl values(29,'Krithi',7777415930,'Dharwad','10-nov-97',9900,9,9);
insert into empl values(30,'Pooja',8888861950,'Mysore','12-feb-95',9000,10,10);

create table customer
(
cu_id int primary key,
cu_name varchar2(20),
cu_ph int,
cu_address varchar2(20),
cu_bankname varchar2(20),
cu_payment varchar2(20)
);

insert into customer values(1,'Naveen',8856477130,'Belagavi','SBI','Credit');
insert into customer values(2,'Melisa',8856477130,'Badami','Bank of Baroda','DEBITCADR ');
insert into customer values(3,'Synthia',9522892856,'Ballari','Bank of India','NETBANKING ');
insert into customer values(4,'Rowena',9918363094,'Bangalore','Bank of Maharashtra','GPAY ');
insert into customer values(5,'Markita ',9753791416,'Belgavi','Canara Bank','PHONEPAY ');
insert into customer values(6,'Shay',9026011708,'Bhadravati','Bank of India','CASH');
insert into customer values(7,'anupam',9753791416,'Bidar','Indian Bank','CASH');
insert into customer values(8,'aabha',9535377024,'Bidar','Indian Overseas Bank','CASH');
insert into customer values(9,'aabharan',9026011708,'Chitradurga','Punjab National Bank','CASH');
insert into customer values(10,'aabheer',9535377024,'Davangere','Union Bank of India','CASH');
insert into customer values(11,'aachman',9110769750,'Halebid','Axis Bank','CASH');
insert into customer values(12,'aadarsh',9012292435,'Hassan','City Union Bank','CASH');
insert into customer values(13,'aadhira',9658306533,'Dharwad','ICICI Bank','CASH');
insert into customer values(14,'aadhishankar',9669180026,'Hubballi','HDFC Bank','CASH');
insert into customer values(15,'aadhunik',9923108254,'Kalaburagi','Federal Bank','CASH');
insert into customer values(16,'aadi',9379850304,'Kolar','DCB Bank','CREDITCARD ');
insert into customer values(17,'aadidev',9585302322,'Madikeri','SBI','CREDITCARD ');                                        
insert into customer values(18,'aadinath',9623135471,'Madikeri','SBI','CREDITCARD ');
insert into customer values(19,'aadit',9263986714,'Mandya','DCB Bank','CREDITCARD ');
insert into customer values(20,'aaditeya',9584530318,'Mangaluru','Karnataka bank','CREDITCARD ');
insert into customer values(21,'aaditya',9930414485,'Mysuru','Karnataka bank','CREDITCARD ');
insert into customer values(22,'aadya',9061458054,'Raichur','SBI','CREDITCARD ');
insert into customer values(23,'aafreen',9066752983,'Shivamogga','DCB Bank','CREDITCARD ');
insert into customer values(24,'aagam',9342122524,'Shravanabelagola','SBI','CREDITCARD ');
insert into customer values(25,'aagneya',9641528449,'Shrirangapattana','HDFC bank','NETBANKING ');                    
insert into customer values(26,'aahlaad',9592973477,'Tumkuru','DCB Bank','NETBANKING ');
insert into customer values(27,'aahlaadith',9991664185,'Ara','ICICI Bank','NETBANKING ');
insert into customer values(28,'aahva',9449189716,'Begusarai','SBI','NETBANKING ');
insert into customer values(29,'aakaash',9545617906,'Bettiah','Karnataka bank','NETBANKING ');
insert into customer values(30,'aakanksh',9924555731,'Bhagalpur','SBI','NETBANKING ');
insert into customer values(31,'aakar',9483893854,'Chapra','Karnataka bank','NETBANKING ');
insert into customer values(32,'aanand',9960323725,'Buxar','SBI','NETBANKING ');
insert into customer values(33,'aanandswarup',9367440681,'Darbhanga','ICICI Bank','NETBANKING ');
insert into customer values(34,'aandaleeb',9207494981,'Dehri','Karnataka bank','NETBANKING ');
insert into customer values(35,'aanjaneya',9937079867,'Gaya','ICICI Bank','GPAY ');
insert into customer values(36,'aapt',9736700687,'Hajipur','SBI','GPAY ');
insert into customer values(37,'aaradhak',9760854365,'Jamalpur','Karnataka bank','GPAY ');
insert into customer values(38,'aarnav',9945257233,'Katihar','DCB Bank','GPAY ');
insert into customer values(39,'naabhi',9272119387,'Balangir','Karnataka bank','GPAY ');
insert into customer values(40,'naag',9736396234,'Cherrapunji','Karnataka bank','GPAY ');
insert into customer values(41,'naagarjun',9878400137,'Kohima','Karnataka bank','GPAY ');
insert into customer values(42,'naagdhar',9152395887,'Mon','ICICI Bank','GPAY ');
insert into customer values(43,'naagendra',9003612520,'Phek','Karnataka bank','GPAY ');
insert into customer values(44,'naagesh',9381886305,'Wokha','Karnataka bank','GPAY ');
insert into customer values(45,'naagpati',9463117156,'Zunheboto','SBI','PHONEPAY ');
insert into customer values(46,'nandakishor',9924374919,'Balangir','ICICI Bank','PHONEPAY ');
insert into customer values(47,'nandakumar',9988190556,'Baleshwar','Karnataka bank','PHONEPAY ');
insert into customer values(48,'namit',9674020026,'Alappuzha','Karnataka bank','PHONEPAY ');
insert into customer values(49,'nalinikant',9797117789,'Badagara','HDFC bank','PHONEPAY ');
insert into customer values(50,'narhari',9428949807,'Idukki','SBI','PHONEPAY ');
insert into customer values(51,'narendranath',9665672668,'Kannur','Karnataka bank','PHONEPAY ');
insert into customer values(52,'narayana',9228648620,'Kochi','Karnataka bank','PHONEPAY ');
insert into customer values(53,'narinder',9810746998,'Kollam','SBI','PHONEPAY ');
insert into customer values(54,'narsimha',9199651963,'Kottayam','Karnataka bank','PHONEPAY ');
insert into customer values(55,'nartana',9477962603,'Kozhikode','SBI','PHONEPAY ');
insert into customer values(56,'nateshwar',9296339340,'Mattancheri','HDFC bank','PHONEPAY ');
insert into customer values(57,'nartana',9295028345,'Palakkad','Karnataka bank','PHONEPAY ');
insert into customer values(58,'nauka',9587011710,'Thalassery','DCB Bank','PHONEPAY ');
insert into customer values(59,'navaj',9354910002,'Thiruvananthapuram','HDFC bank','DEBITCADR ');
insert into customer values(60,'naval',9347775198,'Thrissur','Karnataka bank','DEBITCADR ');
insert into customer values(61,'navroz',9177078400,'Raichur','Karnataka bank','DEBITCADR ');
insert into customer values(62,'navratan',9396478285,'Shivamogga','HDFC bank','DEBITCADR ');
insert into customer values(63,'naveen',9532329354,'Madgaon','Karnataka bank','DEBITCADR ');
insert into customer values(64,'nilay',9922819727,'Mandsaur','SBI','DEBITCADR ');
insert into customer values(65,'nilesh',9906205791,'Mhow','HDFC bank','DEBITCADR ');
insert into customer values(66,'nimai',9094330157,'Narwar','SBI','DEBITCADR ');
insert into customer values(67,'nipun',9053818534,'Orchha','DCB Bank','GPAY ');
insert into customer values(68,'nishant',9491625970,'Nowgong','Karnataka bank','GPAY ');
insert into customer values(69,'obalesh',9107145935,'Rewa','ICICI Bank','GPAY ');
insert into customer values(70,'omanand',9972530760,'Narsinghgarh','ICICI Bank','GPAY ');
insert into customer values(71,'omesa',9864378379,'Hoshangabad','SBI','GPAY ');
insert into customer values(72,'panchal',9933742098,'Betul','Karnataka bank','GPAY ');
insert into customer values(73,'pavankumar',9184399049,'Bokaro','SBI','GPAY ');
insert into customer values(74,'pavanjit',9257644858,'Chaibasa','Karnataka bank','GPAY ');
insert into customer values(75,'poojit',9366626372,'Deoghar','Karnataka bank','PHONEPAY ');
insert into customer values(76,'piyali',9985404614,'Dhanbad','Karnataka bank','PHONEPAY ');
insert into customer values(77,'poornanand',9915129377,'Dumka','DCB Bank','PHONEPAY ');
insert into customer values(78,'poorv',9470474077,'Giridih','SBI','PHONEPAY ');
insert into customer values(79,'poorvaj',9866758109,'Hazaribag','SBI','PHONEPAY ');
insert into customer values(80,'Vibhaavasu',9591212006,'Jamshedpur','SBI','PHONEPAY ');
insert into customer values(81,'navroz',9177078400,'Raichur','Karnataka bank','DEBITCADR ');
insert into customer values(82,'navratan',9396478285,'Shivamogga','HDFC bank','DEBITCADR ');
insert into customer values(83,'naveen',9532329354,'Madgaon','Karnataka bank','DEBITCADR ');
insert into customer values(84,'nilay',9922819727,'Mandsaur','SBI','DEBITCADR ');
insert into customer values(85,'nilesh',9907205791,'Mhow','HDFC bank','DEBITCADR ');
insert into customer values(86,'nimai',9094330157,'Narwar','SBI','DEBITCADR ');
insert into customer values(87,'nipun',9053818534,'Orchha','DCB Bank','GPAY ');
insert into customer values(88,'nishant',9491625970,'Nowgong','Karnataka bank','GPAY ');
insert into customer values(89,'obalesh',9109145935,'Rewa','ICICI Bank','GPAY ');
insert into customer values(90,'omanand',9972530760,'Narsinghgarh','ICICI Bank','GPAY ');
insert into customer values(91,'omesa',9864978379,'Hoshangabad','SBI','GPAY ');
insert into customer values(92,'panchal',9933742098,'Betul','Karnataka bank','GPAY ');
insert into customer values(93,'pavankumar',8184399049,'Bokaro','SBI','GPAY ');
insert into customer values(94,'pavanjit',9257644858,'Chaibasa','Karnataka bank','GPAY ');
insert into customer values(95,'poojit',9366926372,'Deoghar','Karnataka bank','PHONEPAY ');
insert into customer values(96,'piyali',9985904614,'Dhanbad','Karnataka bank','PHONEPAY ');
insert into customer values(97,'poornanand',99325129377,'Dumka','DCB Bank','PHONEPAY ');
insert into customer values(98,'poorv',7870474077,'Giridih','SBI','PHONEPAY ');
insert into customer values(99,'poorvaj',9866758109,'Hazaribag','SBI','PHONEPAY ');
insert into customer values(100,'Vibhaavasu',9991112006,'Jamshedpur','SBI','PHONEPAY ');

create table bill
(
b_id int primary key,
totalcloths int,
totalamount int,
ct_id int references customer(cu_id),
emp_id int references empl(e_id),
mid int references manager(m_id)
);

insert into bill values(1,2,900,1,1,1);
insert into bill values(2,3,1950,2,2,2);
insert into bill values(3,1,700,3,3,3);
insert into bill values(4,2,1355,4,4,4);
insert into bill values(5,4,2568,5,5,5);
insert into bill values(6,2,900,6,6,6);
insert into bill values(7,2,1300,7,7,7);
insert into bill values(8,1,650,8,8,8);
insert into bill values(9,1,700,9,9,9);
insert into bill values(10,2,1355,10,11,10);
insert into bill values(11,3,1905,11,12,2);
insert into bill values(12,5,663,12,13,1);
insert into bill values(13,2,900,13,13,3);
insert into bill values(14,3,1950,14,14,4);
insert into bill values(15,1,663,15,15,5);
insert into bill values(16,1,700,16,16,6);
insert into bill values(17,2,1355,17,17,7);
insert into bill values(18,1,655,18,18,8);
insert into bill values(19,2,1250,19,19,9);
insert into bill values(20,1,663,20,20,10);
insert into bill values(21,1,400,21,21,1);
insert into bill values(22,2,1100,22,22,2);
insert into bill values(23,1,700,23,23,3);
insert into bill values(24,1,400,24,24,4);
insert into bill values(25,1,650,25,25,5);
insert into bill values(26,1,700,26,26,6);
insert into bill values(27,1,650,27,27,7);
insert into bill values(28,2,1355,28,28,8);
insert into bill values(29,1,730,29,29,9);
insert into bill values(30,1,500,30,30,10);
insert into bill values(31,2,1173,31,1,1);
insert into bill values(32,1,400,32,2,2);
insert into bill values(33,1,500,33,3,3);
insert into bill values(34,2,1300,34,4,4);
insert into bill values(35,1,650,35,5,5);
insert into bill values(36,1,600,36,6,6);
insert into bill values(37,1,700,37,7,6);
insert into bill values(38,1,650,38,8,7);
insert into bill values(39,1,705,39,9,8);
insert into bill values(40,2,1380,40,10,9);
insert into bill values(41,1,520,41,11,10);
insert into bill values(42,1,700,42,12,1);
insert into bill values(43,1,650,43,13,2);
insert into bill values(44,1,650,44,14,3);
insert into bill values(45,1,650,45,15,4);
insert into bill values(46,2,705,46,16,5);
insert into bill values(47,1,655,47,17,6);
insert into bill values(48,1,730,48,18,7);
insert into bill values(49,1,520,49,19,8);
insert into bill values(50,1,663,50,20,9);
insert into bill values(51,1,400,51,21,10);
insert into bill values(52,1,500,52,22,1);
insert into bill values(53,1,600,53,23,2);
insert into bill values(54,1,700,54,24,3);
insert into bill values(55,1,650,55,25,4);
insert into bill values(56,1,700,56,26,5);
insert into bill values(57,1,650,57,27,6);
insert into bill values(58,1,705,58,28,7);
insert into bill values(59,1,655,59,29,8);
insert into bill values(60,1,730,60,30,9);
insert into bill values(61,1,520,61,1,10);
insert into bill values(62,1,663,62,2,1);
insert into bill values(63,1,400,63,3,2);
insert into bill values(64,1,500,64,4,3);
insert into bill values(65,1,600,65,5,4);
insert into bill values(66,2,700,66,6,5);
insert into bill values(67,1,650,67,7,6);
insert into bill values(68,1,700,68,8,7);
insert into bill values(69,1,650,69,9,8);
insert into bill values(70,1,705,70,10,9);
insert into bill values(71,1,655,71,11,10);
insert into bill values(72,1,730,72,12,1);
insert into bill values(73,1,520,73,13,2);
insert into bill values(74,1,663,74,14,3);
insert into bill values(75,1,400,75,15,4);
insert into bill values(76,2,500,76,16,5);
insert into bill values(77,1,600,77,17,6);
insert into bill values(78,1,700,78,18,7);
insert into bill values(79,1,650,79,19,8);
insert into bill values(80,1,700,80,20,9);
insert into bill values(81,1,650,81,21,10);
insert into bill values(82,1,705,82,22,1);
insert into bill values(83,1,655,83,23,2);
insert into bill values(84,1,730,84,24,3);
insert into bill values(85,1,520,85,25,4);
insert into bill values(86,2,663,86,26,5);
insert into bill values(87,1,400,87,27,6);
insert into bill values(88,1,500,88,28,7);
insert into bill values(89,1,600,89,29,8);
insert into bill values(90,1,700,90,30,9);
insert into bill values(91,1,650,91,1,10);
insert into bill values(92,1,700,92,2,1);
insert into bill values(93,1,650,93,3,2);
insert into bill values(94,1,705,94,4,3);
insert into bill values(95,1,655,95,5,4);
insert into bill values(96,2,730,96,6,5);
insert into bill values(97,1,520,97,7,6);
insert into bill values(98,1,663,98,8,7);
insert into bill values(99,1,655,99,9,8);
insert into bill values(100,1,730,100,10,9);

create table supplier
(
s_id int primary key,
s_name varchar2(20),
s_ph int,
s_address varchar2(20),
s_dob date,
s_city varchar2(20),
s_salary int,
mr_id int references manager(m_id)
);

insert into supplier values(1,'Amrut',7556161930,'Ilkal','12-jun-1997','Mumbai',4000,1);
insert into supplier values(2,'Manoja',6985241930,'Babari','2-jun-1999','Goa',5000,2);
insert into supplier values(3,'Amar',7556159687,'Ingalagaon','20-jan-2000','Pune',7000,3);
insert into supplier values(4,'Ramu',9901635489,'Chegari','10-aug-2001','Bengaloore',6500,4);
insert into supplier values(5,'Raju',7899055663,'Patil','25-jul-1997','Mumbai',4000,5);
insert into supplier values(6,'Om',7556161560,'Patil','20-jun-1986','Madaras',5000,6);
insert into supplier values(7,'Nishal',6985241930,'Mali','20-may-2003','Chennai',4500,7);
insert into supplier values(8,'Nitish',5986159687,'Santi','15-feb-1960','Andrapradesh',8000,8);
insert into supplier values(9,'Soumya',9867635489,'Roa','11-aug-2001','Bengaloore',3500,9);
insert into supplier values(10,'Rajesh',9901355663,'Gorpade','21-sep-1995','Mysoore',6500,10);
insert into supplier values(11,'Ramulu',99019758641,'Kohli','10-jun-1998','Davanagere',4000,1);
insert into supplier values(12,'Maruti',6985248965,'Dhawn','22-may-1999','Keral',5000,2);
insert into supplier values(13,'Agasti',8652459687,'Ingalagaon','15-jan-2010','Haveri',7000,3);
insert into supplier values(14,'Omkar',6325415489,'Chegari','16-oct-2002','Bagevadi',6500,4);
insert into supplier values(15,'Parth',8808055663,'Patil','21-jul-97','Rajyastan',10000,5);
insert into supplier values(16,'Rachit',996861560,'D','20-may-1986','Goa',5000,6);
insert into supplier values(17,'Onveer',7895241930,'Desai','20-jul-1992','Bidar',4500,7);
insert into supplier values(18,'Narayan',9658159687,'Santoor','12-may-2002','Andra',8000,8);
insert into supplier values(19,'Sanjay',9867635568,'Ambani','05-dec-2000','Hasan',3500,9);
insert into supplier values(20,'Roopa',8088755663,'Ghulappanavar','21-nov-1997','Mandya',6500,10);
insert into supplier values(21,'Amrut',7556163598,'Gunjjigavi','12-jun-2000','Mumbai',4000,1);
insert into supplier values(22,'Manoja',6985245630,'Babar','13-feb-1999','Goa',8500,2);
insert into supplier values(23,'Amarendra',7556862687,'Tiwari','30-may-2000','Pune',7000,3);
insert into supplier values(24,'Seeta',9901623489,'Chirag','10-sep-2002','Bengaloore',6500,4);
insert into supplier values(25,'Geeta',7899965663,'Tandeli','26-jul-1997','Mumbai',4600,5);
insert into supplier values(26,'Om',7556168660,'Bahubali','28-jun-1986','Madaras',10000,6);
insert into supplier values(27,'Namita',9933241930,'R','15-may-2003','Chennai',4500,7);
insert into supplier values(28,'Rohini',9686159687,'Santi','15-aug-1960','Andrapradesh',8000,8);
insert into supplier values(29,'Soumya',3667635489,'Sarkar','11-nov-2001','Goa',3500,9);
insert into supplier values(30,'Bhushan',9801355663,'Kagi','21-sep-1995','Mandya',6500,10);
insert into supplier values(31,'Sagar',9689758641,'Haloor','10-jun-1998','Daroor',5500,1);
insert into supplier values(32,'Rajat',6985008965,'Patil','22-may-1999','Athani',5000,2);
insert into supplier values(33,'Sammed',7772459687,'DK','15-jan-2010','Harugeri',12000,3);
insert into supplier values(34,'Vrushabh',9685415489,'Walekar','16-oct-2002','Kittur',6500,4);
insert into supplier values(35,'Prashant',8808053263,'kD','21-jul-97','Nandani',10000,5);
insert into supplier values(36,'Anvita',996356560,'Sis','20-may-1986','Chikkamangalur',5000,6);
insert into supplier values(37,'Swagat',9099241930,'Kmd','20-jul-1992','Bagalakote',4500,7);
insert into supplier values(38,'Naru',6858159687,'Santi','12-may-2002','Rayachoor',8000,8);
insert into supplier values(39,'Sachin',9867630068,'Dada','05-dec-2000','Hukkeri',1350,9);
insert into supplier values(40,'Roopali',8203155663,'Girinad','21-nov-1997','Mayanmar',6500,10);
insert into supplier values(41,'Tejas',99018625641,'Kagawad','10-sep-1998','Davanagere',4000,1);
insert into supplier values(42,'Tanay',6900365265,'Dilli','22-may-1989','Keral',5000,2);
insert into supplier values(43,'Udant',8652452387,'Ingalagaon','15-jul-2010','Haveri',7000,3);
insert into supplier values(44,'Adarsh',6325960489,'Chegari','20-oct-1999','Bagevadi',6500,4);
insert into supplier values(45,'Akshata',776865630,'Delhi','20-jun-1997','Goa',10000,6);
insert into supplier values(46,'Raghu',996865630,'D','20-sep-1997','Goa',5000,6);
insert into supplier values(47,'Veeresh',7889601930,'Desai','25-jul-1992','Bidar',3250,7);
insert into supplier values(48,'Naganand',9655559687,'Sagii','23-may-2002','Andra',8500,8);
insert into supplier values(49,'Suresh',9867666568,'Neerubayi','05-oct-2000','Hasan',5620,9);
insert into supplier values(50,'Utkarsh',8088115663,'Ghulappanavar','21-dec-1997','Mandya',6750,10);
insert into supplier values(51,'Vishl',7556163598,'Ganesh','12-jun-1980','Mumbai',9500,1);
insert into supplier values(52,'Vraj',6985249990,'Nanne','13-aug-2001','Goa',8750,2);
insert into supplier values(53,'Mahesh',7556965687,'Nadaf','19-may-2000','Pune',17000,3);
insert into supplier values(54,'Wazir',99018965489,'CM','25-sep-2002','Bengaloore',16500,4);
insert into supplier values(55,'Warindar',7889965663,'Tandeli','26-jul-1990','Mumbai',4700,5);
insert into supplier values(56,'Mutturaj',9685168660,'Huli','28-jun-1980','Madaras',15000,6);
insert into supplier values(57,'Sillisidda',7833241930,'Pujari','15-feb-2003','Chennai',14500,7);
insert into supplier values(58,'Roshan',9686999687,'Yadur','15-aug-1975','Andrapradesh',16500,8);
insert into supplier values(59,'Yashin',3667895489,'Iyer','28-nov-2001','Goa',13500,9);
insert into supplier values(60,'Rohan',9801896663,'Kagi','30-sep-1995','Mandya',16500,10);
insert into supplier values(61,'Shivaraj',9333758641,'Haloor','10-may-1998','Daroor',15500,1);
insert into supplier values(62,'Kiran',6985632965,'Bagevadi','29-may-1999','Athani',5600,2);
insert into supplier values(63,'Sphoorti',7965459687,'DK','15-feb-2010','Harugeri',14200,3);
insert into supplier values(64,'Karan',9685423489,'banekar','16-oct-1986','Kittur',5200,4);
insert into supplier values(65,'Shanti',8800003263,'Kashi','21-jul-1987','Nandani',20000,5);
insert into supplier values(66,'Jayalalita',226356560,'Sirur','06-may-1986','Chikkamangalur',15000,6);
insert into supplier values(67,'Puneet',9096661930,'Kmd','20-aug-1992','Bagalakote',4550,7);
insert into supplier values(68,'Kabir',6858559687,'Shirasi','26-may-2002','Rayachoor',17500,8);
insert into supplier values(69,'Prema',9867639685,'Daddennavar','05-jan-2000','Hukkeri',12350,9);
insert into supplier values(70,'Chandrashekar',8205655663,'kagevadi','21-jul-1992','Mayanmar',12500,10);

create table mng_dependent
(
d_name varchar(10),
d_gender char,
d_dob date,
d_rel varchar(10),
ma_id int references manager(m_id),
primary key(ma_id)
);

insert into  mng_dependent values('Tanya','F','01-jul-1992','Wife',1);
insert into  mng_dependent values('tanvi','F','01-jan-1993','Wife',2);      
insert into  mng_dependent values('Anjali','F','21-aug-1987','Wife',3); 
insert into  mng_dependent values('Sneha','F','30-jul-1978','Wife',4);      
insert into  mng_dependent values('akash','M','15-may-2005','Son',5);      
insert into  mng_dependent values('Sam','M','17-nov-2003','Son',6);      
insert into  mng_dependent values('shivangi','F','18-dec-2004','Daughter',7); 
insert into  mng_dependent values('Isha','F','30-mar-1982','Wife',8);
insert into  mng_dependent values('kumar','M','19-dec-2006','Son',9); 
insert into  mng_dependent values('rakesh','M','21-jul-2000','Son',10);	

create table enquiredby
(
csr_id int references customer(cu_id),
ch_id int references cloth(c_id),
primary key(csr_id,ch_id)
);

insert into enquiredby values(1,1);
insert into enquiredby values(1,10);
insert into enquiredby values(2,17);
insert into enquiredby values(3,18);
insert into enquiredby values(4,110);
insert into enquiredby values(4,13);
insert into enquiredby values(4,19);
insert into enquiredby values(4,20);
insert into enquiredby values(5,107);
insert into enquiredby values(6,10);
insert into enquiredby values(7,6);
insert into enquiredby values(7,66);
insert into enquiredby values(7,67);
insert into enquiredby values(8,99);
insert into enquiredby values(9,77);
insert into enquiredby values(10,44);
insert into enquiredby values(11,41);
insert into enquiredby values(11,22);
insert into enquiredby values(11,49);
insert into enquiredby values(12,43);
insert into enquiredby values(13,122);
insert into enquiredby values(14,49);
insert into enquiredby values(15,67);
insert into enquiredby values(16,62);
insert into enquiredby values(17,107);
insert into enquiredby values(17,20);
insert into enquiredby values(18,23);
insert into enquiredby values(19,21);
insert into enquiredby values(20,24);
insert into enquiredby values(21,29);
insert into enquiredby values(22,30);
insert into enquiredby values(23,31);
insert into enquiredby values(24,32);
insert into enquiredby values(24,33);
insert into enquiredby values(24,11);
insert into enquiredby values(25,45);
insert into enquiredby values(26,99);
insert into enquiredby values(27,100);
insert into enquiredby values(28,19);
insert into enquiredby values(29,17);
insert into enquiredby values(30,77);
insert into enquiredby values(31,88);
insert into enquiredby values(32,90);
insert into enquiredby values(33,76);
insert into enquiredby values(33,9);
insert into enquiredby values(34,101);
insert into enquiredby values(35,52);
insert into enquiredby values(36,55);
insert into enquiredby values(37,78);
insert into enquiredby values(38,29);
insert into enquiredby values(39,22);
insert into enquiredby values(40,78);
insert into enquiredby values(41,77);
insert into enquiredby values(42,9);
insert into enquiredby values(43,3);
insert into enquiredby values(43,2);
insert into enquiredby values(43,1);
insert into enquiredby values(44,5);
insert into enquiredby values(45,106);
insert into enquiredby values(46,3);
insert into enquiredby values(47,56);
insert into enquiredby values(48,55);
insert into enquiredby values(49,90);
insert into enquiredby values(50,91);
insert into enquiredby values(51,11);
insert into enquiredby values(52,12);
insert into enquiredby values(53,16);
insert into enquiredby values(54,15);
insert into enquiredby values(55,10);
insert into enquiredby values(55,20);
insert into enquiredby values(56,110);
insert into enquiredby values(57,98);
insert into enquiredby values(58,17);
insert into enquiredby values(59,14);
insert into enquiredby values(60,1);
insert into enquiredby values(61,101);
insert into enquiredby values(62,82);
insert into enquiredby values(63,99);
insert into enquiredby values(64,93);
insert into enquiredby values(65,8);
insert into enquiredby values(65,37);
insert into enquiredby values(65,67);
insert into enquiredby values(66,81);
insert into enquiredby values(67,92);
insert into enquiredby values(68,99);
insert into enquiredby values(69,33);
insert into enquiredby values(70,13);
insert into enquiredby values(71,35);
insert into enquiredby values(72,63);
insert into enquiredby values(73,100);
insert into enquiredby values(74,99);
insert into enquiredby values(75,96);
insert into enquiredby values(76,63);
insert into enquiredby values(77,74);
insert into enquiredby values(78,77);
insert into enquiredby values(79,55);
insert into enquiredby values(80,66);
insert into enquiredby values(81,71);
insert into enquiredby values(82,11);
insert into enquiredby values(82,13);
insert into enquiredby values(82,14);
insert into enquiredby values(82,21);
insert into enquiredby values(83,21);
insert into enquiredby values(84,31);
insert into enquiredby values(85,101);
insert into enquiredby values(86,61);
insert into enquiredby values(87,51);
insert into enquiredby values(88,71);
insert into enquiredby values(89,81);
insert into enquiredby values(90,91);
insert into enquiredby values(91,100);
insert into enquiredby values(92,12);
insert into enquiredby values(93,13);
insert into enquiredby values(94,15);
insert into enquiredby values(95,16);
insert into enquiredby values(96,17);
insert into enquiredby values(97,18);
insert into enquiredby values(98,19);
insert into enquiredby values(99,30);
insert into enquiredby values(100,4);
insert into enquiredby values(100,40);
insert into enquiredby values(100,22);

create table generate
(
sl_id int references supplier(s_id),
bl_id int references bill(b_id),
primary key(sl_id,bl_id)
);

insert into generate values(1,1);
insert into generate values(2,2);
insert into generate values(3,3);
insert into generate values(4,4);
insert into generate values(5,5);
insert into generate values(6,6);
insert into generate values(7,7);
insert into generate values(8,8);
insert into generate values(9,9);
insert into generate values(10,10);
insert into generate values(11,11);
insert into generate values(12,12);
insert into generate values(13,13);
insert into generate values(14,14);
insert into generate values(15,15);
insert into generate values(16,16);
insert into generate values(17,17);
insert into generate values(18,18);
insert into generate values(19,19);
insert into generate values(20,20);
insert into generate values(21,21);
insert into generate values(22,22);
insert into generate values(23,23);
insert into generate values(24,24);
insert into generate values(25,25);
insert into generate values(26,26);
insert into generate values(27,27);
insert into generate values(28,28);
insert into generate values(29,29);
insert into generate values(30,30);
insert into generate values(31,31);
insert into generate values(32,32);
insert into generate values(33,33);
insert into generate values(34,34);
insert into generate values(35,35);
insert into generate values(36,36);
insert into generate values(37,37);
insert into generate values(38,38);
insert into generate values(39,39);
insert into generate values(40,40);
insert into generate values(41,41);
insert into generate values(42,42);
insert into generate values(43,43);
insert into generate values(44,44);
insert into generate values(45,45);
insert into generate values(46,46);
insert into generate values(47,47);
insert into generate values(48,48);
insert into generate values(49,49);
insert into generate values(50,50);
insert into generate values(51,51);
insert into generate values(52,52);
insert into generate values(53,53);
insert into generate values(54,54);
insert into generate values(55,55);
insert into generate values(56,56);
insert into generate values(57,57);
insert into generate values(58,58);
insert into generate values(59,59);
insert into generate values(60,60);
insert into generate values(61,61);
insert into generate values(62,62);
insert into generate values(63,63);
insert into generate values(64,64);
insert into generate values(65,65);
insert into generate values(66,66);
insert into generate values(67,67);
insert into generate values(68,68);
insert into generate values(69,69);
insert into generate values(70,70);
insert into generate values(1,71);
insert into generate values(3,72);
insert into generate values(7,73);
insert into generate values(9,74);
insert into generate values(10,75);
insert into generate values(12,76);
insert into generate values(15,77);
insert into generate values(18,78);
insert into generate values(19,79);
insert into generate values(22,80);
insert into generate values(7,81);
insert into generate values(45,82);
insert into generate values(51,83);
insert into generate values(31,84);
insert into generate values(10,85);
insert into generate values(13,86);
insert into generate values(44,87);
insert into generate values(45,88);
insert into generate values(67,89);
insert into generate values(70,90);
insert into generate values(43,91);
insert into generate values(39,92);
insert into generate values(41,93);
insert into generate values(22,94);
insert into generate values(44,95);
insert into generate values(54,96);
insert into generate values(31,97);
insert into generate values(60,98);
insert into generate values(50,99);
insert into generate values(21,100);

----------------------------------------------SQL Queries----------------------------------------------

--(1.Set theory operations)
--(A.Retrive details of customers who enquired cloths in either Shree showroom or Metro showrrom)      
select *
from customer,enquiredby
where csr_id=cu_id and ch_id in ((select c_id
                           from cloth,clothshowroom
                           where clsh_id=cs_id and cs_name='Shree')
                           union
                           (select c_id
                           from cloth,clothshowroom
                           where clsh_id=cs_id and cs_name='Metro')); 

--(B.Retrive id,name,salary of employees working in Zero showroom along with manager name and also employee having salary greater than 5000 in a single query)                        
select e_id,e_name,e_salary,cs_name,m_name
from empl,clothshowroom,manager
where clsho_id=cs_id and mg_id=m_id and cs_name='Zero'
union all
select e_id,e_name,e_salary,cs_name,m_name
from empl,clothshowroom,manager
where clsho_id=cs_id and mg_id=m_id and cs_name='Zero' and e_salary>5000;

--(C.Retrive id,name,salary of suppliers and manager name where supplier is from mumbai and salary is not equal to 4000) 
select s_id,s_name,s_salary,m_name
from supplier,manager
where mr_id=m_id and s_city='Mumbai'
minus
select s_id,s_name,s_salary,m_name
from supplier,manager
where mr_id=m_id and s_salary=4000;

--(D.Retrive id,brand,type,price of sarees and sarees from Mast Showroom)
select c_id,c_brand,c_type,c_price,cs_name
from cloth,clothshowroom
where clsh_id=cs_id and c_type='Saree'
intersect
select c_id,c_brand,c_type,c_price,cs_name
from cloth,clothshowroom
where clsh_id=cs_id and cs_name='Mast';

--(E.Retrive details of suppliers who generate bills under manager Appu or manager Bassu)      
select *
from supplier,generate
where sl_id=s_id and bl_id in ((select b_id
                           from bill,manager
                           where mid=m_id and m_name='Appu')
                           union 
                           (select b_id
                           from bill,manager
                           where mid=m_id and m_name='Bassu')); 
                           
--(2.Logical opearations)
--(A.Retrive details of owners whose id greater than 1 and name like '%ee%)
select *
from owner
where o_id>1 and o_name like '%ee%';

--(B.Retrive name of customer abd bill details between 1 to 20)
SELECT cu_name,b_id,totalcloths,totalamount
FROM customer,bill
WHERE b_id BETWEEN 1 AND 20 and ct_id=cu_id;

--(C.Retrive details of cloths either brand name is Essa or type is t shirt.
select *
from cloth
where c_brand='Essa' or c_type='t shirt';

--(D.Retrive details of manager dependents with name of managers having id 4 and 6)
select d_name,d_gender,d_rel,m_name
from mng_dependent,manager
where ma_id=m_id and ma_id in (4,6);

--(E.Retrive salary of all suppliers if salary of suppliers greater than 10000 exists)
select s_salary
from supplier
where exists (select s_salary 
              from supplier
              where s_salary>10000);
              
--(3.Equi join operations)
--(A.Retrive owner,manager and clothshowroom name where manager name consists of 'ram')
SELECT o_name,m_name,cs_name   
FROM owner,manager,clothshowroom
WHERE ow_id=o_id AND ma_id=m_id and m_name like '%ram%';

--(B.Retrive id,name,salary,phone number of a supplier and bill number issued by manager id 1 from suppliers)
SELECT sl_id,bl_id,s_name,s_salary,s_ph           
FROM generate,supplier,manager,bill
WHERE sl_id=s_id and mr_id=m_id and bl_id=b_id and m_id=1;

--(C.Retrive details of customers who enquire cloths in clothshowrooms situated in bangalore)
select *
from customer,enquiredby
where csr_id=cu_id and ch_id in (select c_id
                           from cloth,clothshowroom
                           where clsh_id=cs_id and cs_address='Bangalore');

--(D.Retrive id,name,date of birth of owner other than id 1 and name containing 'ee')
select o_id,o_name,o_dob
from owner
where o_id<>1 and o_name like '%ee%';

--(E.Retrive female dependent name,relation and name of manager to whom they depend) 
select d_name,d_rel,m_name
from mng_dependent,manager
where ma_id=m_id and d_gender='F';

--(4.Aggregate Functions)
--(A.Retrive details of all suppliers whose salary is more than the average salary of suppliers working under same manager)
SELECT *
FROM supplier e1
WHERE e1.s_salary > (SELECT AVG(e2.s_salary)
                FROM supplier e2
                WHERE e1.mr_id=e2.mr_id);

--(B.Retrive count of customers who enquired Saree)
select count(*)
from customer,enquiredby,cloth
where csr_id=cu_id and ch_id=c_id and c_type='Saree';

--(C.Retrive count of total bills generated by customers and also maximum and mimimum amount paid)
select max(totalamount),min(totalamount),count(cu_id)
from bill,customer
where ct_id=cu_id;

--(D.Retrive details of all employees whose salary is more than the average salary of all employees)                
SELECT *    
FROM empl
WHERE e_salary>(SELECT AVG(e_salary)
           FROM empl);

--(E.Retrive total number,total salary,average salary,maximum salary and minimum salary of all suppliers who supply stocks from Goa)        
select count(*),sum(s_salary),avg(s_salary),max(s_salary),min(s_salary)    
from supplier
WHERE s_city='Goa'; 

--(5.Group by clause)
--(A.Retrive showroom id,showroom name and number of employees working in each of the showrooms)
select cs_id,cs_name,count(*) 
from empl,clothshowroom                    
WHERE clsho_id=cs_id
group by cs_id,cs_name; 

--(B.Retrive id of cloth showrooms each of having cloth size 28)
select clsh_id,count(*)  
from cloth 
where c_size=28
group by clsh_id
order by clsh_id;

--(C.Retrive brand,type,size and number of cloths in each of the showrooms)
select c_brand,c_type,c_size,count(*)  
from cloth,clothshowroom
WHERE clsh_id=cs_id 
group by c_brand,c_type,c_size;

--(D.Retrive supplier name and number of managers managed by each of these suppliers)
select s_name,count(*)    
from supplier,manager
where mr_id=m_id
group by s_name; 

--(E.Retrive customer name and count of each customer containing 'ee' in their name)
select cu_name,count(*)
from customer 
where cu_name like '%ee%'
group by cu_name;

--(6.Having clause)
--(A.Retrive brand and type of cloth and number of cloths in each clothshowroom which has more than 1 cloth)
select c_brand,c_type,count(*)  
from cloth,clothshowroom
WHERE clsh_id=cs_id 
group by c_brand,c_type
having count(*)>1;

--(B.Retrive details of all employees who generate more than 3 bills)
SELECT *             
FROM empl
WHERE e_id IN (SELECT emp_id
               FROM bill
               GROUP BY emp_id
               HAVING COUNT(*)>3);

--(C.Retrive id of cloth showrooms and cloth brand each of having cloth type as pant which has more than 2 clothes in ascending order)               
select clsh_id,c_brand,count(*)  
from cloth 
where c_type='Pant'
group by clsh_id,c_brand
having count(*)>2
order by clsh_id;

--(D.Retrive customer name and count of each customer containing 'oo' in their name should be 2)
select cu_name,count(*)
from customer 
where cu_name like '%oo%'
group by cu_name
having count(*)=2;

--(E.Retrive supplier name and number of managers managed by each of these suppliers should be 2)
select s_name,count(*)    
from supplier,manager
where mr_id=m_id
group by s_name
having count(*)=2; 

--(7.Views)
--(A.Create a view to include name,id of showroom and number of employees in each showroom)
  --(From created view retrive id,name,salary of employees working in Zero showroom along with manager name and also employee having salary greater than 4000)
create view showroom_view as
select cs_name,cs_id,count(*) no_of_emp
from clothshowroom,empl
where clsho_id=cs_id
group by cs_name,cs_id;

select *from showroom_view;

select e_id,e_name,e_salary,cs_name,m_name
from empl,showroom_view,manager
where clsho_id=cs_id and mg_id=m_id and cs_name='Zero' and e_salary>4000;

--(B.Create a view to include name,id,address,birth date of manager and total number of suppliers working under each manager)
  --(From created view retrive id,name,salary,phone number of a supplier and bill number issued by manager id 5 from suppliers)
create view manager_view as
select m_name,m_id,m_address,m_dob,count(*) no_of_suppliers
from manager,supplier
where mr_id=m_id
group by m_name,m_id,m_address,m_dob;

select *from manager_view;

SELECT sl_id,bl_id,s_name,s_salary,s_ph           
FROM manager_view,generate,supplier,bill
WHERE sl_id=s_id and mr_id=m_id and bl_id=b_id and m_id=5;

--(C.Create a view to include name,id,gst,address of showroom and number of cloths in each showroom)
  --(From created view retrive detail of showroom present in hubli having more than 12 cloths)
create view cs_view as
select cs_name,cs_id,gst,cs_address,count(*) no_of_cloths
from cloth,clothshowroom
where clsh_id=cs_id
group by cs_name,cs_id,gst,cs_address;

select *from cs_view;

select *
from cs_view
where cs_address='Hubballi' and no_of_cloths>12;

--(D.Create a view to include name,id,phone number,address of manager and total number of bills issued by each manager)
  --(From created view retrive id,name,address of manager and their dependent name who issued 10 bills in increasing order of id)   
create view mg_view as
select m_name,m_id,m_ph,m_address,count(*) no_of_bills
from manager,bill
where mid=m_id
group by m_name,m_id,m_ph,m_address;

select *from mg_view;

select m_id,m_name,m_address,d_name
from mg_view,mng_dependent
where ma_id=m_id and no_of_bills=10
order by m_id;

--(E.Create a view to include name,id,phone number,salary of employee and total number of bills generated by each employee)
  --(From created view retrive number of all employees who generate more than 3 bills)

create view empl_view as
select e_name,e_id,e_ph,e_salary,count(*) nu_of_bills
from empl,bill
where emp_id=e_id
group by e_name,e_id,e_ph,e_salary;

select *from empl_view;

SELECT e_name,e_id,e_salary             
FROM empl_view
WHERE e_id IN (SELECT emp_id
               FROM bill
               GROUP BY emp_id
               HAVING nu_of_bills>3);
               
--(8.Single row,Multiple row and Correlated Operations)
--(A.Retrive details of all suppliers whose salary is less than the average salary of all suppliers)                
SELECT *    
FROM supplier
WHERE s_salary<(SELECT AVG(s_salary)
           FROM supplier);

--(B.Retrive details of all employees whose salary is more than the average salary of employees working under same manager)
SELECT *
FROM empl e1
WHERE e1.e_salary > (SELECT AVG(e2.e_salary)
                FROM empl e2
                WHERE e1.mg_id=e2.mg_id);

--(C.Retrive details of customers who enquire cloths in clothshowrooms situated in Belagavi)
select *
from customer,enquiredby
where csr_id=cu_id and ch_id in (select c_id
                                 from cloth,clothshowroom
                                 where clsh_id=cs_id and cs_address='Belagavi');                 

--(D.Retrive id,name,salary of all employees if salary of employees less than 2000 not exists)
select e_id,e_name,e_salary
from empl
where not exists (select e_salary 
              from empl
              where e_salary<2000);
              
--(E.Retrive details of manager who are managing the cloth showroom which has more than 12 cloths in each)
SELECT *                      
FROM manager
WHERE m_id IN (SELECT ma_id
              FROM clothshowroom
              WHERE cs_id IN (SELECT clsh_id
                             FROM cloth
                             GROUP BY clsh_id
                             HAVING COUNT(*)>12));

commit;                           

----------------------------------------------PL/SQL Programs----------------------------------------------
--(A.Functions) 
--(1.Create a function which read employee address from user and gives employee id as output)
create or replace function dis(city in string)
return number
as
id number;
begin
select e_id into id from empl where e_address=city;
return id;
end;   --function created

select dis('Miraj') from dual;     --query                        

--(2.Create a function to display total salary paid to suppliers)
create or replace function totalPaid
return integer
as
total integer:=0;
begin
select sum(s_salary) into total from supplier;
return total;
end;    --function created

declare
answer integer;
begin
answer:=totalPaid();
dbms_output.put_line('Total paid to suppliers is = '||answer);
end;    --query

--(B.Procedures)
--(1.Create a procedure to insert details of cloths into it)
create or replace procedure addCloth
("id" in integer,"brand" in varchar2,"type" in varchar2,"size" in integer,"price" in integer,"availability" in integer,"showroomid" in integer)
is
begin
addCloth(124,'Essa','shirt',32,1000,4,1);  --query
end;

--(2.Create a procedure to update a salary of employee with 2000 given by user) 
create or replace procedure inc_sal(eno in number,up_sal out number)
is
begin
update empl set e_salary=e_salary+1000 where e_id=eno;
commit;
select e_salary into up_sal from empl where e_id=eno;
end; --procedure completed

variable v number; --declartion

execute inc_sal(1, :v);   --execution of procedure

select * from empl where e_id=1; --to check output emploee detail

--(C.Triggers)
--(1.Create a trigger to display old salary and new salary of employees whenever insert or update operations performed on employee table)
create or replace trigger salary_change
before insert or update on empl
for each row
begin
dbms_output.put_line('Old salary= '|| :old.e_salary);
dbms_output.put_line('New salary= '|| :new.e_salary);
end;  --trigger created

insert into empl values(31,'Boss',9002861830,'Hubblli','11-sep-98',6000,2,2);   --inserting values and getting trigger result

update empl
set e_salary=e_salary+1000
where e_id=31;        --updating values and getting trigger result

--(2.Create a trigger to display old address and new address of suppliers whenever insert or update operations performed on supplier table)
create or replace trigger address_change
before delete or insert or update on supplier
for each row
begin
dbms_output.put_line('Old address= '|| :old.s_address);
dbms_output.put_line('New address= '|| :new.s_address);
end;   --trigger created

insert into supplier values(71,'Boss',6666161930,'Ilkal','21-jan-1997','Mumbai',5000,1);    --inserting values and getting trigger result

update supplier
set s_address='Hubballi'
where s_id=71;           --updating values and getting trigger result

--(D.Cursors)
--(1.By using Cursor retrive price of first ten cloths) 
declare
s cloth.c_price%type;
cursor price_cur is select c_price from cloth;
begin
open price_cur;
for i in 1..10 loop
fetch price_cur into s;
dbms_output.put_line(s);
end loop;
close price_cur;
end;

--(2.By using Cursor retrive name of clothshowrooms situated in Hubballi)
declare
cursor cur is select cs_name,cs_address from clothshowroom where cs_address='Hubballi';
n clothshowroom.cs_name%type;
l clothshowroom.cs_address%type;
begin
open cur;
loop
fetch cur into n,l;
exit when cur%notfound;
dbms_output.put_line('showroom name= '||n||' department location= '||l);
end loop;
close cur;
end;
