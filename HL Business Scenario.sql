/*
Travel Agent CEO: I am a travel agent and owner of the company International. We have been specializing in non-stop, one way airplane tickets since January 19, 2005.
Business is booming and I need your help to keep track of our sales and customer information.

I need to record the customer First Name, Middle Name, Last Name, Gender (M/F), SSN, Billing Address, Country Customer From, Date Purchased, Date and time of Flight,
Airport departing from, Airport arriving at, Airline, Price of Ticket, Class, and Amount of Checked Baggage allowed

Questions:
Q: Do you sell tickets for all airlines or only some?
A: Great question! We sell tickets for American, United, El al, Delta, AirCanada, and AirFrance.

Q: Do you only sell to specific destinations?
A: Wherever these airlines fly, we sell

Q: Do you want the date Purchased to include the time?
A: No, no need.

Q: How do you want the name of the airport to be formatted?
A: How they are refered to online- 3 characters and all CAPS. Ex: Telaviv= TLV

Q: How much in advance do you sell tickets?
A: We sell tickets 12 months in advance to the date of booking.

Q: Is there an additional travel agent fee, bag fee...?
A: ALL fees (and tax) are included in the ticket price.

Q: What are the classes that you sell?
A: Economy, Business, First

Q: Is there a min or max for the amount of bags a customer can have?
A: There is no minimum, but the max is 3.

Q: Do you only sell international tickets?
A: No, we just felt the name international was catchy:)

I am going to need the following reports:

1) In which year did International make the most money?    
2) What is the average time in advance that customers call International to book their flights?
3) Average customer preferance for:
-Most preferable Airline
-Most preferable Airport to fly into
-Most preferable Class
-Least preferable time to depart
4) Where are most of International's customers from? Include First name, middle name, last name, Address, Country

Sample Data:
firstname, middlename, lastname, gender, ssn, address, country, datepurchased, DatetimeofFlight, Airportdepart, Airportarrive, Airline, PriceofTicket, Class, AmountCheckedBaggage
John, Edward, Smith, M, 123456789, 3739 Crain St Skokie, IL 60076, USA, 2020-08-13, 2020-09-15 10:31:54, ORD, TLV, United, 2000, Business, 1
Joe, Jack, Cohen, M, 123056789, 40 Main St Monsey, NY 60234, USA, 2022-10-20, 2023-09-14 10:31:54, JFK, FLL, American, 400, Economy 1
Samantha, R, Katz, F, 158964782, 3 Jant Rd Paris, France 48957, France, 2020-07-12, 2020-10-14 09:32:54, CDG, TLV, AirFrance, Economy, 1200, 1
Hindy, P, Lauer, F, 856321479, 38 Sorotzkin Jerusalem, IL 0234, Israel, 2023-06-20, 2024-06-20 11:33:28, TLV, ORD, El al, 3000, First, 2
Amelia, S, Bedelia, F, 563289000, 2 Coconut St, Montreal, Quibec, Canada, 2010-06-20, 2010-08-15 06:11:24, YUL, TLV, Air Canda, 1600, Economy, 0
Peter, T, Pick, M, 145879325, 21 Main Plaza, Miami, Florida, USA, 2006-07-22, 2006-08-15 09:15:24, MIA, BWI, American, 350, Economy, 1
John, Roger, Jones, M, 555569832, 562 Dempster St, Baltimore, Maryland, USA, 2012-05-22, 2013-04-15 09:15:24, BWI, CDG, AirFrance, 1250, Economy, 0
Sarah, Debra, Dick, 777854120, F, 55 Crawford St, Phoenix, Arizona, USA, 2013-08-21, 2014-08-15 06:14:24, PHX, TLV, American, 1450, Economy, 1

*/
