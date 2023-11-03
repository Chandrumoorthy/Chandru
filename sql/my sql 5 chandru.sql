SELECT * FROM syngrow.admin;

create table syngrow.Admin(
Admin_ID varchar(100) primary key  ,
Admin_password varchar(30),
Admin_name varchar(64)
);

drop table syngrow.admin;
	
    

create table syngrow.NGO(
ngo_id varchar (50) primary key  not null  ,
ngo_name varchar(30),
ngo_phone_number bigint,
ngo_mail_id varchar(100),
ngo_focus_area varchar(100),
ngo_website varchar(100),
ngo_address varchar(100),
ngo_legal_status varchar(100),
ngo_founded_year int,
ngo_subscription varchar(20),
ngo_password varchar(50)
);

INSERT INTO `syngrow`.`ngo` (ngo_name, ngo_phone_number, ngo_mail_id, ngo_focus_area, ngo_website, ngo_address, ngo_legal_status, ngo_founded_year, ngo_subscription, ngo_password) VALUES ('Maatram', '9551555550', 'maatram456@gmail.com', 'Education', 'https://maatramfoundation.com/', 'No. 47.7th cross street Rengareddy Gardens ,Neelangarai 600115, Tamil Nadu 600097', 'Active', '2007', 'Subscribed', 'maatram@123');
INSERT INTO `syngrow`.`ngo`(ngo_name, ngo_phone_number, ngo_mail_id, ngo_focus_area, ngo_website, ngo_address, ngo_legal_status, ngo_founded_year, ngo_subscription, ngo_password) VALUES ('Thagam', '9169695959', 'thagamfoundation45@gmail.com', 'Social', 'http://thaagam.org/', 'No.6, Dhanammal street, Spurtank road, chetpet Chennai 600-031', 'Active', '2000', 'Subscribed', 'thagama@456');
INSERT INTO `syngrow`.`ngo` (ngo_name, ngo_phone_number, ngo_mail_id, ngo_focus_area, ngo_website, ngo_address, ngo_legal_status, ngo_founded_year, ngo_subscription, ngo_password) VALUES ('uravugal', '9500098735', 'uravugaltrust@gmail.com', 'Social', 'https://uravugaltrust.com/', '\'21, Abdulla Street Srirampuram, Sakthi Nagar, Sankarapuram, Choolaimedu, Chennai, Tamil Nadu 600094', 'Active', '1995', 'Subscribed', 'uravugal@789');
INSERT INTO `syngrow`.`ngo` (ngo_name, ngo_phone_number, ngo_mail_id, ngo_focus_area, ngo_website, ngo_address, ngo_legal_status, ngo_founded_year, ngo_subscription, ngo_password) VALUES ('Agaram', '9841891000', 'agaramfoundatio@gmail.com', 'Education', 'https://agaram.in', '29,Vijay Enclave Krishna Street, T.Nagar, Chennai - 600 017', 'Active', '2000', 'Subscribed', 'agaram@!23');
INSERT INTO `syngrow`.`ngo` (ngo_name, ngo_phone_number, ngo_mail_id, ngo_focus_area, ngo_website, ngo_address, ngo_legal_status, ngo_founded_year, ngo_subscription, ngo_password) VALUES ('Sevalaya', '9444333529', '\'sevalayasv@gmail.com', 'Social', 'https://sevalaya.org/', '12, F-2, First Floor, Pushkarani Apartments, Ananda Rd, Alwarpet, Chennai, Tamil Nadu 600018', 'Active', '2004', 'Subscribed', 'sevalaya@123');
 
 
CREATE TABLE sequence_ngo (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT
);
-- drop table sequence_ngo;

INSERT INTO sequence_ngo(seq_name, seq_value) VALUES ('user_sequence', 0);

DELIMITER //

CREATE TRIGGER ngo_before_insert
BEFORE INSERT ON ngo
FOR EACH ROW

BEGIN

    DECLARE next_val INT;
    
    UPDATE sequence_ngo
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';

    SELECT seq_value INTO next_val
    FROM sequence_ngo
    WHERE seq_name = 'user_sequence';

    SET NEW.ngo_id = CONCAT('NGO', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;

select * from syngrow.NGO;
-- drop trigger ngo_before_insert;

-- drop table syngrow.ngo;

-- truncate table syngrow.ngo;

delete  from syngrow.NGO
where ngo_id="NGO007";

delete  from syngrow.NGO
where ngo_id="NGO008";

delete  from syngrow.NGO
where ngo_id="NGO006";


SELECT * FROM syngrow.queries;

create table syngrow.Queries(
Query_id varchar(50) primary key  ,
Query_description varchar(100),
Query_Datetime datetime,
USER_ID varchar(50),
foreign key(USER_ID) references Users(User_ID)
);


drop table syngrow.queries;


INSERT INTO syngrow.queries(`Query_Id`,`Query_description`,`Query_datetime`,`User_Id`) VALUES ("QRY001"," How do I register? ","2023-08-12","USER003");
INSERT INTO syngrow.queries(`Query_Id`,`Query_description`,`Query_datetime`,`User_Id`) VALUES ("QRY002"," Can I donate online? ","2023-05-24","USER002");
INSERT INTO syngrow.queries(`Query_Id`,`Query_description`,`Query_datetime`,`User_Id`) VALUES ("QRY003"," Are there any discounts for students? ","2023-03-07","USER004");
INSERT INTO syngrow.queries(`Query_Id`,`Query_description`,`Query_datetime`,`User_Id`) VALUES ("QRY004","What's the dress code? ","2023-09-25","USER001");
INSERT INTO syngrow.queries(`Query_Id`,`Query_description`,`Query_datetime`,`User_Id`) VALUES ("QRY005"," How can I become a sponsor? ","2023-08-05","USER005");

SELECT * FROM syngrow.registration;


create table syngrow.Registration(
Registration_id varchar(50) primary key  ,
Registration_datetime datetime,
User_ID varchar(50), 
Event_ID varchar(50),
foreign key(User_ID) references syngrow.Users(User_ID),
foreign key(Event_ID) references syngrow.Events(Event_ID)
);
drop table syngrow.registration;

INSERT INTO syngrow.registration(`Registration_Id`,`Registration_dateTime`,`User_Id`,`Event_Id`) VALUES ("REG001 "," 2023-08-03","USER005", "EVT001");
INSERT INTO syngrow.registration(`Registration_Id`,`Registration_dateTime`,`User_Id`,`Event_Id`) VALUES ("REG002 "," 2023-09-15","USER003", "EVT002");
INSERT INTO syngrow.registration(`Registration_Id`,`Registration_dateTime`,`User_Id`,`Event_Id`) VALUES ("REG003 "," 2023-07-28","USER004", "EVT003");
INSERT INTO syngrow.registration(`Registration_Id`,`Registration_dateTime`,`User_Id`,`Event_Id`) VALUES ("REG004 "," 2023-04-31","USER005", "EVT003");
INSERT INTO syngrow.registration(`Registration_Id`,`Registration_dateTime`,`User_Id`,`Event_Id`) VALUES ("REG005 "," 2023-02-25","USER002", "EVT004");
 SELECT * FROM syngrow.donation;

create table syngrow.Donation(
Donation_ID varchar(50) primary key,
Event_reg_fees int,
Additional_donation_amount int, 
Total_donation_amount int,
Donation_type varchar(50),
User_ID varchar(50),
Event_ID varchar(50),
foreign key(User_ID) references syngrow.Users(User_ID),
foreign key(Event_ID) references syngrow.Events(Event_ID)
);
INSERT INTO syngrow.donation(`Donation_ID`,`Event_reg_fees`,`Additional_donation_amount`,`Total_donation_amount`,`Donation_type`,`User_Id`,`Event_Id`) VALUES ("DON001", 1000,100,1100,"Online","USER001","EVT001");
INSERT INTO syngrow.donation(`Donation_ID`,`Event_reg_fees`,`Additional_donation_amount`,`Total_donation_amount`,`Donation_type`,`User_Id`,`Event_Id`) VALUES ("DON002", 1500,200,1700,"Online","USER002","EVT002");
INSERT INTO syngrow.donation(`Donation_ID`,`Event_reg_fees`,`Additional_donation_amount`,`Total_donation_amount`,`Donation_type`,`User_Id`,`Event_Id`) VALUES ("DON003", 1200,150,1350,"Online","USER003","EVT003");
INSERT INTO syngrow.donation(`Donation_ID`,`Event_reg_fees`,`Additional_donation_amount`,`Total_donation_amount`,`Donation_type`,`User_Id`,`Event_Id`) VALUES ("DON004", 3000,500,3500,"Online","USER004","EVT004");
INSERT INTO syngrow.donation(`Donation_ID`,`Event_reg_fees`,`Additional_donation_amount`,`Total_donation_amount`,`Donation_type`,`User_Id`,`Event_Id`) VALUES ("DON005", 2500,200,2700,"Online","USER005","EVT005");

drop table  syngrow.donation;

CREATE TABLE sequence_donation (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_donation(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_events;

 

DELIMITER //

CREATE TRIGGER donation_before_insert
BEFORE INSERT ON admin
FOR EACH ROW

BEGIN

    DECLARE next_val INT;

    UPDATE sequence_donation
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';

    SELECT seq_value INTO next_val
    FROM sequence_donation
    WHERE seq_name = 'user_sequence';

    SET NEW.donation_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;

-- Query for Total Donation amount

select total_donation_amount as Totalamount
from syngrow.donation
order by total_donation_amount

