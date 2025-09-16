use InternationalTravelDB 
go 
drop table if exists CustomerFlight
go 
create table dbo.CustomerFlight(
    CustomerFlightId int not null identity primary key,
    FirstName varchar(30) not null constraint ck_CustomerFlight_FirstName_cannot_be_blank check(FirstName <> ''),
    MiddleName varchar(30) not null constraint d_CustomerFlight_MiddleName_blank default '',
    LastName varchar(30) not null constraint ck_CustomerFlight_LastName_cannot_be_blank check(LastName <> ''),
    Gender char(1) not null constraint ck_CustomerFlight_Gender_either_m_or_f check(Gender in('M','F')),
    SSN char(9) not null constraint ck_CustomerFlight_SSN_all_numeric check(SSN not like '%[^0-9]%'),
    BillingAddress varchar(50) not null constraint ck_CustomerFlight_BillingAddress_cannot_be_blank check(BillingAddress <> ''),
    City varchar(20) not null constraint ck_CustomerFlight_City_cannot_be_blank check(City <> ''),
    State char(2) not null constraint ck_CustomerFlight_State_cannot_be_blank check(State <> ''),
    Zip varchar(10) not null constraint ck_CustomerFlight_Zip_must_be_numeric check(zip not like '%[^0-9]%'),
    CountryOfResidence varchar(20) not null constraint ck_CustomerFlight_CountryOfResidence_not_blank check(CountryOfResidence <> ''),
    PurchasedDate date not null constraint ck_CustomerFlight_PurchasedDate_between_Janualy_15_2005_and_the_current_date check(PurchasedDate between '2005-01-19' and getdate()),
    FlightDate datetime not null,
    DepartingAirport char(3) not null constraint ck_CustomerFlight_DepartingAirport_cannot_be_blank check(DepartingAirport <> ''),
    ArrivingAirport char(3) not null constraint ck_CustomerFlight_ArrivingAirport_cannot_be_blank check(ArrivingAirport <> ''),
    Airline varchar(10) not null constraint ck_CustomerFlight_Airline_must_be_either_American_United_ElAl_Delta_airCanada_or_AirFrance check(Airline in ('American', 'United', 'El Al', 'Delta', 'AirCanada', 'AirFrance')),
    TicketPrice decimal(8,2) not null constraint ck_CustomerFlight_TicketPrice_must_be_greater_than_zero check(TicketPrice > 0),
    Class varchar(8) not null constraint ck_CustomerFlight_Class_must_be_Economy_Business_or_First check(Class in ('Economy', 'Business', 'First')),
    NumBags int not null constraint ck_CustomerFlight_NumBags_between_0_and_3 check(NumBags between 0 and 3),
    constraint check_CustomerFlight_PurchasedDate_must_be_within_12_months_of_FlightDate check(datediff(month, PurchasedDate, FlightDate) between 0 and 12)
)
go