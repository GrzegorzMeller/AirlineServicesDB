select * from clients where client_id=1;
update people set passport_no = 'A1234567'
where passport_no='0101010';
select * from clients where client_id=1;

select * from flights_dates where id=1;
update flights set flight_no = 'GM 555'
where flight_no = 'GM 445';
select * from flights_dates where id=1;

select * from clients where client_id=1;
select * from tickets where client_id=1;
select * from suitcases where ticket_id=1;
select * from single_flight where ticket_id=1;
delete from people where passport_no = 'A1234567';
select * from clients where client_id=1;
select * from tickets where client_id=1;
select * from suitcases where ticket_id=1;
select * from single_flight where ticket_id=1;