 create table addresses(
	id int identity(1,1) primary key,
    city_name varchar(50) not null,
    country varchar(50) not null,
    state_region varchar(50),
    street varchar(50) not null,
    zip_code char(10) not null, 
);

create table people(
    passport_no char(9) primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex char(6) check(sex in('Female', 'Male')),
    date_of_birth date not null,
    phone_no char(11),
    email varchar(50),
    date_of_registration date, 
    address_id int references addresses(id) not null,
);

create table clients(
	client_id int identity(1,1) primary key,
    passport_no char(9) references people(passport_no) on delete cascade on update cascade not null,
    any_disability char(3) check(any_disability in('YES', 'NO')),
    is_child char(3) check(is_child in('YES', 'NO')),
    is_priority_needed char(3) check(is_priority_needed in('YES', 'NO')),
);

create table tickets(
    ticket_id int identity(1,1) primary key,
    price money,
    client_id int references clients(client_id) on delete cascade not null,
);

create table suitcases(
    id int identity(1,1) primary key,
    wage float,
    size char(6) check(size in('SMALL', 'MEDIUM', 'BIG')),
	on_board char(3) check(on_board in('YES', 'NO')),
	ticket_id int foreign key references tickets(ticket_id) on delete cascade not null,
);

create table airports(
	airport_code varchar(50) primary key,
	airport_name varchar(50),
);

create table flights(
	flight_no varchar(50) primary key,
	flight_from varchar(50) references airports(airport_code) not null, 
	flight_to varchar(50) references airports(airport_code) not null, 
	expiration_date date default('2030-01-01'),
);

create table airplanes(
	id int identity(1,1) primary key,
	no_of_seats int not null,
	airplane_type varchar(50) not null,
	max_load float not null,
);

create table flights_dates(
	id int identity(1,1) primary key,
	departure_date date not null, 
	departure_time time not null,
	arrival_date date not null,
	arrival_time time not null,
	flight_delay time not null, 
	flight_no varchar(50) references flights(flight_no) on delete cascade on update cascade not null,
	airplane_id int references airplanes(id) not null,
);

create table boarding_pass(
	id int identity(1,1) primary key,
	checked_in char(3) check(checked_in in('YES', 'NO')) default('NO'),
	entered_board char(3) check(entered_board in('YES', 'NO')) default('NO'),
);

create table single_flight(
	seat_no int,
	class char(8) check(class in('ECONOMY','BUSINESS', 'PREMIUM')),
	flight_date_id int foreign key references flights_dates(id) on delete cascade not null,
	ticket_id int foreign key references tickets(ticket_id) on delete cascade not null,
	boarding_pass_id int references boarding_pass(id) on delete cascade not null,
);

