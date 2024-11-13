INSERT INTO artist(artist_id,artist_full_name) 
VALUES ('001','Shadmehr')
('002','Billy joel'),
('003','Shajarian'),
('004','Bilie Eilish'),
('005','Reza Bahram');
 SELECT * FROM artist;

INSERT INTO album(album_id,title,release_date)
VALUES('11','Tarafdar','1391-05-01'),
 ('12','Fantastic','1380-3-1'),
('13','Raze del','1358-4-15'),
('14','Happier','1399-6-30'),
('15','hich','1402-10-17');
 SELECT * FROM album;


 INSERT INTO track (track_id,artist_id,album_id,price,title,track_size,track_type,genre,duration )
 VALUES ('111','1','11','1000000','a','320','MP3','pop','0:03:20'),
 ('112','2','12','1500000','bb','320','MP3','rock','0:03:14'),
 ('113','3','13','2000000','c','320','MP3','traditional','0:05:30'),
 ('114','4','14','3000000','e','320','MP3','R&B','0:04:10'),
 ('115','5','15','100000','r','320','MP3','pop','0:03:26');
  SELECT * FROM track;

 INSERT INTO customer(customer_id,customer_name,phone_number,email)
VALUES ('1111','mozhgan','09338319195','mozhganrajabi@gmail.com'),
('1112','ali','09120952488',''),
('1113','mohammad','09184086133',''),
('1114','reza','09181126133',''),
('1115','fatemeh','09337753919','')
 SELECT * FROM customer;

INSERT INTO sales(sales_id,customer_id,sales_item,quantity,sales_date ,sales_price)
VALUES('1','1111','Raze del','2','1403-02-21','100'),
('2','1112','Fantastic','8','1399-10-17','150');


 
