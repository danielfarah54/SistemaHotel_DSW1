drop database Sistema;
create database Sistema;

use Sistema

create table Admin(
	id bigint not null auto_increment,
	nome varchar(256) not null,
	login varchar(20) not null unique,
	senha varchar(64) not null,
	primary key (id)
);

create table Hotel(
	id bigint not null auto_increment,
	cnpj varchar(18) not null,
	nome varchar(250) not null,
	cidade varchar(250) not null,
	email varchar(200) not null,
	senha varchar(20) not null,
	primary key (id)
);

create table SiteReserva(
	id bigint not null auto_increment,
	url varchar(250) not null,
	nome varchar(250) not null,
	telefone varchar(14),
	email varchar(200) not null,
	senha varchar(20) not null,
	primary key (id)
);

create table PromoHotel(
	id bigint not null auto_increment,
	preco float not null,
	iniciopromo date not null,
	fimpromo date not null,
	Hotel_id bigint not null,
	Sitereserva_id bigint not null,
	foreign key (Hotel_id) references Hotel(id) on delete cascade,
	foreign key (Sitereserva_id) references SiteReserva(id) on delete cascade,
	primary key (id)
);

insert into Hotel(cnpj, nome, cidade, email, senha)
	values ('55.789.390/0008-99',
			'Hotel Boa Viagem',
			'São Carlos',
			'hotel1@hotel.com',
			'hotel1');

insert into Hotel(cnpj, nome, cidade, email, senha)
	values ('71.150.470/0001-40',
			'Hotel Bela Vista',
			'São Paulo',
			'hotel2@hotel.com',
			'hotel2');

insert into Hotel(cnpj, nome, cidade, email, senha)
	values ('32.106.536/0001-82',
			'Hotel Bienvenido',
			'Uberaba',
			'hotel3@hotel.com',
			'hotel3');

insert into SiteReserva(url, nome, telefone, email, senha)
	values ('www.sitereservabrasil.com',
			'Reserva Brasil',
			'(16)1234-5678',
			'site1@siteres.com',
			'site1');

insert into SiteReserva(url, nome, telefone, email, senha)
	values ('www.siteboareserva.com',
			'Boa Reserva',
			'(16)1234-5688',
			'site2@siteres.com',
			'site2');

insert into SiteReserva(url, nome, telefone, email, senha)
	values ('www.sitebelareserva.com',
			'Bela Reserva',
			'(16)1234-5699',
			'site3@siteres.com',
			'site3');

insert into PromoHotel(preco, iniciopromo, fimpromo,
	Hotel_id, SiteReserva_id)
	values (220.5, '2020-11-11', '2020-12-11', 1, 1);

insert into PromoHotel(preco, iniciopromo, fimpromo,
	Hotel_id, SiteReserva_id)
	values (430.5, '2020-11-11', '2020-12-11', 2, 2);

insert into PromoHotel(preco, iniciopromo, fimpromo,
	Hotel_id, SiteReserva_id)
	values (355.5, '2020-11-11', '2020-12-11', 3, 3);

insert into Admin(nome, login, senha)
	values ('Daniel', 'daniel@admin.com', 'daniel');

insert into Admin(nome, login, senha)
	values ('Luis', 'luis@admin.com', 'luis');

insert into Admin(nome, login, senha)
	values ('Rennes', 'rennes@admin.com', 'rennes');
