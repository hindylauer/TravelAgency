--1) In which year did International make the most money?    
select top 1 TotalProfit = sum(c.TicketPrice), TopYear = datepart(year, c.PurchasedDate)
from CustomerFlight c 
group by datepart(year, c.PurchasedDate)
order by TotalProfit desc
--2) What is the average time in advance that customers call International to book their flights?
select AvgMonthsBookedInAdvance = avg(datediff(month, c.PurchasedDate, c.FlightDate))
from CustomerFlight c 

--3) Average customer preferance for:
---Most preferable Airline
select top 1 PreferableAirline = count(*), c.Airline
from CustomerFlight c 
group by c.Airline
order by PreferableAirline desc
---Most preferable Airport to fly into
select top 1 PreferableAirport = count(*), c.ArrivingAirport
from CustomerFlight c 
group by c.ArrivingAirport
order by PreferableAirport desc

---Most preferable Class
select top 1 PreferableClass = count(*), c.Class
from CustomerFlight c 
group by c.Class
order by PreferableClass desc

---Least preferable time to depart
--AS There were 2 with only one person booked for that hour so displayed both.
select top 2 LeastPrefereableDepartTime = count(*), DepartingHour = datepart(hour, c.FlightDate)
from CustomerFlight c 
group by datepart(hour, c.FlightDate)
order by LeastPrefereableDepartTime

--4) Where are most of International's customers from? Include First name, middle name, last name, Address, Country
;with x as(
    select top 1 NumPpl = count(*), c.CountryOfResidence
    from CustomerFlight c 
    group by c.CountryOfResidence
    order by count(*) desc
)
select Name = concat(c.FirstName, ' ', c.MiddleName, ' ', c.LastName), Address = concat(c.BillingAddress, ', ', c.City, ', ', c.[State], ' ', c.Zip), c.CountryOfResidence
from CustomerFlight c
join x 
on c.CountryOfResidence = x.CountryOfResidence