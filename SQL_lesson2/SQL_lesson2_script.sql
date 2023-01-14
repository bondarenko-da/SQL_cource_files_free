drop table if exists cars;
create table cars (
	car_id varchar(50) NOT NULL,
	brand varchar(50) NOT NULL,
	model varchar(50) NULL,
	color varchar(50) NULL,
	type varchar(50) NULL,
	transmission varchar(50) NULL,
	arrival_date date NULL,
	CONSTRAINT PK_car_id PRIMARY KEY CLUSTERED (car_id)
);

delete from cars;
insert into cars values
('0001_bmw_a','BMW','525','red','sedan','auto','2022-01-15'),
('0002_bmw_m','BMW','X5','black','jeep','manual','2022-02-05'),
('0003_mrc_a','Mercedes','A 200 Elegance','white','minivan','auto','2022-01-20'),
('0004_mrc_a','Mercedes','C 180 Kompressor ','gold','sedan','auto','2021-12-12'),
('0005_tyt_a','Toyota','Corolla','green',null,'auto','2022-02-17'),
('0006_tyt_a','Toyota','RAV 4','black','jeep','auto','2022-03-22'),
('0007_tyt_m','Toyota','Camry ','white','sedan','manual','2022-01-20'),
('0008_mbs_a','Mitsubisi','Lancer 2.0 Sport',null,'sedan','auto','2022-02-05'),
('0009_mbs_m','Mitsubisi','Lancer 1.6','red','universal','manual','2022-02-06'),
('0010_mbs_a','Mitsubisi','Outlander','silver','universal','auto','2022-03-31')
;


drop table if exists managers;
create table managers (
	man_id int NOT NULL,
	FIO varchar(50) NULL,
	salary int NULL,
	date_of_birth date NULL,
	start_date date NULL,
	CONSTRAINT PK_man_id PRIMARY KEY CLUSTERED (man_id)
); 

delete from managers;
insert into managers values
('1','Кондратова Лейла Фёдоровна','100000','1984-04-10','2019-05-13'),
('2','Королев Михаил Дмитриевич','110000','1979-05-01','2021-02-08'),
('3','Осипова Карина Константиновна','100000','1983-11-09','2019-11-27'),
('4','Денисов Али Александрович','110000','1989-03-28','2020-02-25'),
('5','Трошин Иван Александрович','120000','1981-06-05','2022-02-15'),
('6','Родионова Александра Максимовна','100000','1986-04-02','2019-04-17')
;


drop table if exists clients;
create table clients (
	client_id int NOT NULL,
	client_name varchar(50) NULL,
	gender varchar(1) NULL,
	date_of_birth date NULL,
	CONSTRAINT PK_client_id PRIMARY KEY CLUSTERED (client_id)
);

delete from clients;
insert into clients values
('1','Полякова Мария Семёновна','f','1985-01-03'),
('2','Щукин Макар Георгиевич','m','1982-08-31'),
('3','Романова Асия Максимовна','f','1982-12-30'),
('4','Крылова Анна Андреевна','f','1985-06-28'),
('5','Кольцов Константин Макарович','m','1986-09-02'),
('6','Устинов Николай Ярославович','m','1988-01-18'),
('7','Сидоров Али Максимович','m',null),
('8','Леонтьева Софья Глебовна','f','1994-05-20'),
('9','Измайлова Алина Германовна','f','1989-08-16'),
('10','Федорова Елизавета Дмитриевна','f','1994-10-04'),
('11','Соколов Пётр Ильич','m','1978-10-19'),
('12','Гуляев Эмир Алексеевич','m','1992-12-10'),
('13','Лазарева Александра Макаровна','f',null),
('14','Соколов Тимофей Ильич','m','1993-10-29'),
('15','Фокина Аиша Ярославовна','f','1984-04-16'),
('16','Григорьев Ярослав Кириллович','m','1991-10-28'),
('17','Смирнов Андрей Матвеевич','m','1992-06-19'),
('18','Антонов Илья Александрович','m','1991-11-11'),
('19','Захаров Александр Артёмович','m','1983-05-19'),
('20','Новикова Александра Мироновна','f',null)
;

drop table if exists sales;
create table sales (
	date date NULL,
	summa numeric(18, 0) NULL,
	client_id int NULL,
	manager_id int NULL,
	car_id varchar(50) NULL
);

delete from sales;
insert into sales values
('2019-06-10','4900986','14','2','0010_mbs_a'),
('2019-06-26','3399580','8','1','0009_mbs_m'),
('2019-07-02','6786172','18','1','0005_tyt_a'),
('2019-10-17','6211593','1','2','0001_bmw_a'),
('2019-12-27','7496270','17','6','0002_bmw_m'),
('2020-01-16','3560764','20','3','0009_mbs_m'),
('2020-01-17','6747500','16','1','0001_bmw_a'),
('2020-02-11','3309362','6','4','0007_tyt_m'),
('2020-02-21','5564622','5','2','0005_tyt_a'),
('2020-03-17','3993745','3','2','0003_mrc_a'),
('2020-04-16','5237086','2','6','0002_bmw_m'),
('2020-05-25','4187935','7','2','0008_mbs_a'),
('2020-10-01','6349274','11','3','0001_bmw_a'),
('2020-11-16','3947898','10','4','0001_bmw_a'),
('2020-12-15','5703139','13','6','0004_mrc_a'),
('2021-01-13','5540066','10','3','0007_tyt_m'),
('2021-07-30','4672989','15','4','0005_tyt_a'),
('2021-10-29','4474154','9','4','0010_mbs_a'),
('2021-11-05','4835323','6','4','0006_tyt_a'),
('2022-01-18','7167319','19','1','0003_mrc_a'),
('2022-01-26','5919082','12','1','0007_tyt_m'),
('2022-03-02','4077226','4','1','0004_mrc_a')
;