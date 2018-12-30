alter table airplanes drop column max_load;
alter table flights_dates drop column flight_delay;
alter table flights_dates add flight_delay bigint default(0) null;
alter table boarding_pass add gave_suitcase char(3) check(gave_suitcase in('YES', 'NO')) default('NO');
alter table boarding_pass add picked_suitcase char(3) check(picked_suitcase in('YES', 'NO')) default('NO');
