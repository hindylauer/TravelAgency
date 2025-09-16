/*
InternationalTravelDB 

CustomerFlight
    CustomerFlightId pk
     First Name varchar(30) not null not blank
     Middle Name not null varchar(30) default blank
     Last Name varchar(30) not null not blank
     Gender char(1) not null must be m/f
     SSN char(9) not null must be all numeric
     Billing Address varchar(50) not null not blank
     City varchar(20) not null not blank
     State char(2) not null not blank
     Zip varchar(10) not null must be all numeric
     CustomerCountry varchar(20) not null not blank
     PurchasedDate date not null between 1/19/2005 and current
     FlightDate datetime not null 
     DepartingAirport char(3) not null not blank
     ArrivingAirport char(3) not null not blank
     Airline varchar(10) not null must be one of the following: American, United, El al, Delta, AirCanada, and AirFrance.
     TicketPrice decimal(8,2) not null greater than zero
     Class varchar(8) not null must be economy, business, first
     NumBags int not null must be between 0 and 3
     constraint flight date and purchased date max 12 months apart
*/