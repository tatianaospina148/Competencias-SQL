USE Chinook
--1
SELECT c.Firstname
, c.Lastname
, c.City
, c.Email
, count(i.invoiceId) as total_invoices
FROM Customer as c
LEFT JOIN invoice as i ON c.CustomerId=i.CustomerId
GROUP BY c.Firstname, c.Lastname, c.City, c.Email;
--2
SELECT a.Title as Album_Title
, t.TrackId
, ar.Name as Artist_Name
--, a.ArtistId
, t.Name as Track_Name
FROM  Album as a
LEFT JOIN Track as t ON a.AlbumId=t.AlbumId 
left join Artist as ar ON a.ArtistId= ar.ArtistId
WHERE a.Title = 'For Those About To Rock We Salute You' and t.TrackId = 12
;

