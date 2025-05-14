

-- AIRPORT
INSERT INTO Airport (Airport_code, city, statue, AIRPORT_NAME, Scheduled_dep_time, Scheduled_arr_time, dep_time, arr_time) VALUES
('MCT', 'Muscat', 'Operational', 'Muscat International', '08:00', '10:00', '08:10', '10:10'),
('SLL', 'Salalah', 'Operational', 'Salalah Airport', '12:00', '14:00', '12:05', '14:05'),
('SOH', 'Sohar', 'Operational', 'Sohar Airport', '16:00', '18:00', '16:15', '18:10'),
('NZW', 'Nizwa', 'Under Repair', 'Nizwa Regional', '09:00', '11:00', '09:10', '11:10'),
('SUR', 'Sur', 'Operational', 'Sur Airport', '18:00', '20:00', '18:10', '20:05');


-- FLIGHT
INSERT INTO Flight (NUMBER_OF_FLIGHT, airline, weekdays) VALUES
(1001, 'Oman Air', 'Monday,Wednesday,Friday'),
(1002, 'Salalah Express', 'Tuesday,Thursday'),
(1003, 'Sohar Connect', 'Monday,Saturday'),
(1004, 'Nizwa Shuttle', 'Sunday,Friday'),
(1005, 'Sur Wings', 'Wednesday,Saturday');


-- FLIGHT LEG
INSERT INTO FLIGHT_LEG (leg_no, Airport_code, NUMBER_OF_FLIGHT) VALUES
(1, 'MCT', 1001),
(2, 'SLL', 1002),
(3, 'SOH', 1003),
(4, 'NZW', 1004),
(5, 'SUR', 1005);


-- AIRPLANE TYPE
INSERT INTO AIRPLANE_TYPE (TYPE_NAME_AIRPLANE, COMPANY, MAX_SEAT) VALUES
('A320', 'Airbus', 150),
('B737', 'Boeing', 160),
('E175', 'Embraer', 88),
('ATR72', 'ATR', 72),
('Q400', 'Bombardier', 76);

-- AIRPLANE
INSERT INTO AIRLINE( total_no_of_seats, TYPE_NAME_AIRPLANE) VALUES
( 150, 'A320'),
( 160, 'B737'),
( 88, 'E175'),
( 72, 'ATR72'),
( 76, 'Q400');


-- CAN LAND
INSERT INTO CAN_LAND (Airport_code, TYPE_NAME_AIRPLANE) VALUES
('MCT', 'A320'),
('SLL', 'B737'),
('SOH', 'E175'),
('NZW', 'ATR72'),
('SUR', 'Q400');
-- FARES
INSERT INTO Fares (code, amount, Restrictions, NUMBER_OF_FLIGHT) VALUES
('F1', 100.00, 'No Refund', 1001),
('F2', 120.00, 'Refundable with fee', 1002),
('F3', 90.00, 'No Changes Allowed', 1003),
('F4', 130.00, 'Fully Flexible', 1004),
('F5', 110.00, 'No Baggage Included', 1005);
-- LEG INSTANCE
INSERT INTO LEG_INSTANCE (LEG_DATE, no_of_avail_seats, leg_no, Airport_code) VALUES
('2024-06-02', 130, 1, 'MCT'),
('2024-06-03', 150, 2, 'SLL'),
('2024-06-04', 80, 3, 'SOH'),
('2024-06-05', 65, 4, 'NZW'),
('2024-06-06', 70, 5, 'SUR');

select * from FLIGHT_LEG
-- SEAT
INSERT INTO Seat (seat_no, Customer_name, cphone,RESERVATION_DATE) VALUES
('1A', 'Ali Al-Zadjali', '91234567', '2024-06-02'),
('2B', 'Sara Al-Harthy', '92345678', '2024-06-03'),
('3C', 'Omar Al-Farsi', '93456789', '2024-06-04'),
('4D', 'Muna Al-Balushi', '94567890', '2024-06-05'),
('5E', 'Hassan Al-Lawati', '95678901', '2024-06-06');