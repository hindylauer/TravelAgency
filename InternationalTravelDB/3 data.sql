union select 'Sarah', 'Debra', 'Dick', '777854120', 'F', '55 Crawford St', 'Phoenix', 'AZ', '123212', 'USA', '2013-08-21', '2014-08-15 06:14:24', 'PHX', 'TLV', 'American', 1450, 'Economy', 1
use InternationalTravelDB
go 
delete CustomerFlight 
go 

insert CustomerFlight(FirstName, MiddleName, LastName, Gender, SSN, BillingAddress, City, [State], Zip, CountryOfResidence, PurchasedDate, FlightDate, DepartingAirport, ArrivingAirport, Airline, TicketPrice, Class, NumBags)
select 'John', 'Edward', 'Smith', 'M', '123456789', '3739 Crain St', 'Skokie', 'IL', '60076', 'USA', '2020-08-13', '2020-09-15 10:31:54', 'ORD', 'TLV', 'United', 2000, 'Business', 1
union select 'Joe', 'Jack', 'Cohen', 'M', '123056789', '40 Main St', 'Monsey', 'NY', '60234', 'USA', '2022-10-20', '2023-09-14 10:31:54', 'JFK', 'FLL', 'American', 400, 'Economy', 1
union select 'Samantha', 'R', 'Katz', 'F', '158964782', '3 Jant Rd', 'Paris', 'FR', '48957', 'France', '2020-07-12', '2020-10-14 09:32:54', 'CDG', 'TLV', 'AirFrance', 1200, 'Economy', 1
union select 'Hindy', 'P', 'Lauer', 'F', '856321479', '38 Sorotzkin', 'Jerusalem', 'IL', '0234', 'Israel', '2023-06-20', '2024-06-20 11:33:28', 'TLV', 'ORD', 'El Al', 3000, 'First', 2
union select 'Amelia', 'S', 'Bedelia', 'F', '563289000', '2 Coconut St', 'Montreal', 'QC', '12345', 'Canada', '2010-06-20', '2010-08-15 06:11:24', 'YUL', 'TLV', 'AirCanada', 1600, 'Economy', 0
union select 'Peter', 'T', 'Pick', 'M', '145879325', '21 Main Plaza', 'Miami', 'FL', '12121', 'USA', '2006-07-22', '2006-08-15 09:15:24', 'MIA', 'BWI', 'American', 350, 'Economy', 1
union select 'John', 'Roger', 'Jones', 'M', '555569832', '562 Dempster St', 'Baltimore', 'MD','12321', 'USA', '2012-05-22', '2013-04-15 09:15:24', 'BWI', 'CDG', 'AirFrance', 1250, 'Economy', 0
union select 'Sarah', 'Debra', 'Dick', '777854120', 'F', '55 Crawford St', 'Phoenix', 'AZ', '123212', 'USA', '2013-08-21', '2014-08-15 06:14:24', 'PHX', 'TLV', 'American', 1450, 'Economy', 1
