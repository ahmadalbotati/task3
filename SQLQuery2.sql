INSERT INTO Guests (FullName, Nationality, PassportNumber, DateOfBirth)
VALUES (N'John Smith', N'British', N'GB1234567', '1988-04-12');
INSERT INTO Guests (FullName, Nationality, PassportNumber, DateOfBirth) VALUES
(N'Layla Hassan', N'Egyptian', N'A12345678', '1995-09-30'),
(N'Maria Garcia', N'Spanish', N'ES7654321', '1990-01-15'),
(N'Omar Khaled', N'Egyptian', N'A98765432', '1985-06-20');
UPDATE Rooms
SET DailyRate = DailyRate * 1.15
WHERE RoomType = N'Suite';
UPDATE Reservations
SET ReservationStatus = CASE
WHEN CheckOutDate < GETDATE() THEN N'Completed'
WHEN CheckInDate > GETDATE() THEN N'Upcoming'
ELSE N'Active'
END;