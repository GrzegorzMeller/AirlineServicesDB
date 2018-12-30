insert into addresses(city_name, country, street, zip_code) values('Gdansk', 'Poland','Nowiec 41', '80-293');
insert into addresses(city_name, country, street, zip_code) values('Warsaw', 'Poland','Grunwaldzka 56', '80-345');
insert into addresses(city_name, country, street, zip_code) values('Krakow', 'Poland','Florianska 4', '81-265');
insert into addresses(city_name, country, street, zip_code) values('Malbork', 'Poland','Torunska 3', '85-765');
insert into addresses(city_name, country, street, zip_code) values('Tczew', 'Poland','Mickiewicza 8', '82-454');
insert into addresses(city_name, country, street, zip_code) values('Berlin', 'Germany','Danziger Strasse 5', '86-565');
insert into addresses(city_name, country, street, zip_code) values('Oslo', 'Norway','Akersgata 54', '81-343');
insert into addresses(city_name, country, street, zip_code) values('Moscow', 'Russia','Arbat Street 53', '87-453');
insert into addresses(city_name, country, street, zip_code) values('London', 'England','Rosebery Avenue 43', '81-653');
insert into addresses(city_name, country, street, zip_code) values('Berlin', 'Germany','Alexander Platz 33', '85-4543');
select * from addresses;

insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0101010', 'Grzegorz', 'Meller','Male', '1998-01-01','607231109','grzesek@gmail.com','2010-01-01', 1);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0202020', 'Ignacy', 'Lukasiewicz','Male', '1990-01-01','60231444','ignacy@outlook.com','2014-02-01', 2);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0303030', 'Zygmunt', 'Krakowiak','Male', '1955-05-06','505653323','zygmunt@wp.pl','2012-02-01', 3);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0404040', 'Jadwiga', 'Mazurkiewicz','Female', '1970-03-06','550574245','jadwiga111@o2.pl','2018-02-01', 4);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0505050', 'Malgorzata', 'Mazurek','Female', '1978-03-06','550222245','malgosia23@o2.pl','2017-02-01', 5);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0606060', 'Klaus', 'Schlecht','Male', '1990-04-09','333111897','schelcht.klaus@xing.de','2016-11-11', 6);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0707070', 'Manfred', 'Aaberg','Male', '1996-11-09','754982342','manfred@onedrive.com','2015-10-11', 7);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0808080', 'Alexander', 'Popov','Male', '1976-12-01','954983341','alexander.popov@mail.ru','2014-11-04', 8);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('0909090', 'Harry', 'Smith','Male', '1960-05-05','984567322','harry.smith@outlook.com','2012-05-12', 9);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('979797C', 'Theresa', 'Smith','Female', '1975-05-05','457394063','theresa.smith@outlook.com','2012-05-16', 9);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('101010A', 'Nina', 'Witt','Female', '2000-04-02','875235893','wittnina@outlook.com','2018-09-12', 10);
insert into people(passport_no, first_name, last_name, sex, date_of_birth, phone_no, email, date_of_registration, address_id) 
			values('234012B', 'Lukas', 'Witt','Male', '1970-09-11','533552356','lukas111@gmail.com','2018-09-12', 10);
select * from people;

insert into clients(passport_no, any_disability, is_priority_needed)
			values('0101010', 'NO', 'NO'); 
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0202020', 'NO', 'NO'); 
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0303030', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0404040', 'YES', 'YES');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0505050', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0606060', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0707070', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0808080', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('0909090', 'NO', 'NO');
insert into clients(passport_no, any_disability, is_priority_needed)
			values('101010A', 'NO', 'YES');
select * from clients;

insert into airports(airport_code, airport_name)
		values('GDN', 'Lech Wa³êsa Airport Gdañsk');
insert into airports(airport_code, airport_name)
		values('WAW', 'Warsaw Chopin Airport');
insert into airports(airport_code, airport_name)
		values('TRF','Oslo-Sandefjord-Torp');
insert into airports(airport_code, airport_name)
		values('CRL','Bruksela-Charleroi');
insert into airports(airport_code, airport_name)
		values('VIE','Vienna Airport');
insert into airports(airport_code, airport_name)
		values('LTN','Londyn-Luton');
insert into airports(airport_code, airport_name)
		values('LGW','Londyn-Gatwick');
insert into airports(airport_code, airport_name)
		values('BCN','Barcelona El Prat');
insert into airports(airport_code, airport_name)
		values('LYS','Lyon -Saint-Exupéry');
insert into airports(airport_code, airport_name)
		values('TLV','Tel Awiw');
select * from airports;

insert into flights(flight_no, flight_from, flight_to)
		values('GM 445', 'VIE', 'BCN')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 553', 'TLV', 'LYS')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 244', 'LGW', 'BCN')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 865', 'BCN', 'GDN')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 342', 'GDN', 'TLV')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 243', 'TLV', 'GDN')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 543', 'WAW', 'TRF')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 765', 'TRF', 'GDN')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 976', 'TRF', 'WAW')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 856', 'CRL', 'WAW')
insert into flights(flight_no, flight_from, flight_to)
		values('GM 111', 'GDN', 'WAW');
insert into flights(flight_no, flight_from, flight_to)
		values('GM 211', 'WAW', 'GDN');
insert into flights(flight_no, flight_from, flight_to)
		values('GM 222', 'BCN', 'LGW');
select * from flights;

insert into airplanes(no_of_seats, airplane_type)
		values(104,'Boeing 737');
insert into airplanes(no_of_seats, airplane_type)
		values(108,'Boeing 737-100');
insert into airplanes(no_of_seats, airplane_type)
		values(111,'Boeing 737-300');
insert into airplanes(no_of_seats, airplane_type)
		values(104,'Boeing 737');
insert into airplanes(no_of_seats, airplane_type)
		values(134,'Boeing 737 MAX');
insert into airplanes(no_of_seats, airplane_type)
		values(180,'Airbus A320');
insert into airplanes(no_of_seats, airplane_type)
		values(180,'Airbus A320-200');
select * from airplanes;

insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-13', '13:10', '2018-12-13', '16:30','GM 445', 1);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-13', '18:20', '2018-12-13', '22:00','GM 865', 1);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-14', '6:30', '2018-12-14', '10:25','GM 543', 2);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-14', '15:30', '2018-12-14', '18:35','GM 765', 2);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-14', '19:30', '2018-12-14', '20:55','GM 111', 2);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-15', '7:30', '2018-12-15', '10:00','GM 856', 3);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-15', '11:00', '2018-12-15', '12:20','GM 211', 3);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-16', '9:00', '2018-12-16', '14:20','GM 342', 5);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-19', '18:00', '2018-12-19', '23:20','GM 243', 5);
insert into flights_dates(departure_date, departure_time, arrival_date, arrival_time, flight_no, airplane_id)
		values('2018-12-13', '16:00', '2018-12-13', '18:45','GM 243', 4);
select * from flights_dates;

insert into tickets(price, client_id)
		values(300, 10);
insert into tickets(price, client_id)
		values(150, 10);
insert into tickets(price, client_id)
		values(50, 2);
insert into tickets(price, client_id)
		values(100, 2);
insert into tickets(price, client_id)
		values(30, 3);
insert into tickets(price, client_id)
		values(60, 4);
insert into tickets(price, client_id)
		values(100, 5);
insert into tickets(price, client_id)
		values(140, 6);
insert into tickets(price, client_id)
		values(74, 7);
insert into tickets(price, client_id)
		values(35, 8);
insert into tickets(price, client_id)
		values(190, 9);
insert into tickets(price, client_id)
		values(330, 10);
insert into tickets(price, client_id)
		values(357, 12);
select * from tickets;


insert into suitcases(size, on_board, ticket_id)
		values('BIG', 'NO', 1);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 1);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 2);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 2);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 4);
insert into suitcases(size, on_board, ticket_id)
		values('BIG', 'NO', 5);
insert into suitcases(size, on_board, ticket_id)
		values('BIG', 'NO', 6);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 6);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 7);
insert into suitcases(size, on_board, ticket_id)
		values('BIG', 'NO', 9);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 9);
insert into suitcases(size, on_board, ticket_id)
		values('MEDIUM', 'NO', 10);
insert into suitcases(size, on_board, ticket_id)
		values('SMALL', 'YES', 10);
select * from suitcases;

insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
insert into boarding_pass(checked_in)
		values('NO');
select * from boarding_pass; 

insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(12, 'BUSINESS', 1, 1, 1);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(12, 'ECONOMY', 1, 16, 11);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(45, 'BUSINESS', 2, 1, 2);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(45, 'BUSINESS', 2, 15, 12);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(85, 'PREMIUM', 3, 2, 3);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(36, 'PREMIUM', 4, 2, 4);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(11, 'PREMIUM', 5, 2, 5);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(42, 'PREMIUM', 6, 3, 6);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(8, 'PREMIUM', 7, 3, 7);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(8, 'PREMIUM', 8, 4, 8);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(8, 'PREMIUM', 9, 4, 9);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(8, 'PREMIUM', 10, 5, 10);
insert into single_flight(seat_no, class, flight_date_id, ticket_id, boarding_pass_id)
		values(56, 'ECONOMY', 1, 20, 11);
select * from single_flight; 