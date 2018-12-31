--1. For each flight calculate how many suitcases will be taken on board 
 select flights.flight_no,flights_dates.departure_date,  count(suitcases.on_board) as "No of suitcases taken on board"
  from flights, flights_dates, single_flight, tickets, suitcases
  where flights.flight_no = flights_dates.flight_no and single_flight.flight_date_id = flights_dates.id and 
  single_flight.ticket_id=tickets.ticket_id and suitcases.ticket_id = tickets.ticket_id
  group by flights.flight_no, flights_dates.departure_date;

--2. Select 3 top passengers who paid the most for flights (with city they are from)
select top(3) people.first_name, people.last_name, addresses.city_name, sum(tickets.price) as "Money paid to airline" 
 from people, clients, tickets, addresses
 where clients.client_id = tickets.client_id and clients.passport_no = people.passport_no and people.address_id=addresses.id
 group by people.first_name, people.last_name, addresses.city_name
 order by "Money paid to airline" desc;

--3. Select passenger who had the biggest no of single flights on one ticket and show how much passenger paid for that ticket
select top(1) people.first_name, people.last_name, tickets.price, count(single_flight.flight_date_id) as "No of flights on one ticket"
from tickets, single_flight, clients, people
where tickets.ticket_id = single_flight.ticket_id and clients.client_id = tickets.client_id and people.passport_no = clients.passport_no
group by people.first_name, people.last_name, tickets.price, clients.passport_no
order by "No of flights on one ticket" desc;

--4. Show people who live toogether
select people.first_name, people.last_name, addresses.city_name, addresses.street
from people, addresses 
where addresses.id = people.address_id and people.address_id in(
select distinct p1.address_id
from people p1
where exists
(select * from people p2
where p2.address_id = p1.address_id and 
p2.passport_no <> p1.passport_no))
order by people.last_name;


--5. What is the average suitcase wage of women passengers from Poland, traveling in a premium class? 
select avg(wage) as "Average suitcase wage in kg of women passengers from Poland travelling in premium class" from suitcases
where ticket_id in(
select ticket_id from tickets 
join clients on clients.client_id = tickets.client_id
where ticket_id in(
select ticket_id from single_flight
where class = 'PREMIUM'
) and clients.passport_no in(
select people.passport_no from people, addresses
where people.sex='Female' and  people.address_id = addresses.id and addresses.country='Poland'
));

--6. For each flight calculate average age of passengers
create view all_flights (id, average_age_on_flight) as
select id, avg(abs(datediff(year, getdate(), people.date_of_birth))) from flights_dates
join single_flight on single_flight.flight_date_id=id
join tickets on single_flight.ticket_id = tickets.ticket_id
join clients on tickets.client_id = clients.client_id
join people on people.passport_no=clients.passport_no
group by id;

--7. For each passenger calculate how many days passed from date of registration to the day they will have at least two flights in one day
select people.first_name, people.last_name,people.date_of_registration,
datediff(day,people.date_of_registration, max(flights_dates.departure_date)) as "Days passed from regiistering till first flight with transfers",
max(flights_dates.departure_date) as "Departure date",
count(flights_dates.departure_date) as "No of single flights in that day" from people
join clients on clients.passport_no = people.passport_no
join tickets on clients.client_id = tickets.client_id
join single_flight on tickets.ticket_id=single_flight.ticket_id
join flights_dates on single_flight.flight_date_id=flights_dates.id
group by people.first_name, people.last_name,people.date_of_registration;
