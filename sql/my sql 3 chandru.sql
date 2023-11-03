SELECT * FROM syngrow.users;

create table syngrow.Users
(
user_id varchar(255)primary key ,
User_dob Date,
User_account_created_date date,
User_address varchar(100),
User_gender varchar(100),
User_mail_id varchar(50),
User_name varchar(30),
User_password varchar(64),
User_phone_number bigint 
);
Users
select * from syngrow.;

drop table  syngrow.Users;

INSERT INTO syngrow.users VALUES ('USER001', '2001-08-01','2001-04-18', '567 Maple st','male','chandruchandru7175@gmail.com', 'Chandru', 'chandru4115$',' 9344537718');
INSERT INTO syngrow.users VALUES ('USER002', '2023-10-21' , '2001-10-30','234,Nehru str','male','abilash650@gmail.com', 'Abilash','abilash@123','9245670191'); 
INSERT INTO syngrow.users VALUES ('USER003', '2002-06-15','2001-04-12' ,'234,bharathi str','Female','bharathibala123@gmail.com','Bharathi','bharathib@123','7709826252');
INSERT INTO syngrow.users VALUES ('USER004', '2023-08-02','2001-02-15' , '567,kambar str','male' ,'anand48@gmail.com', 'Anand','anand@234','9817162738'); 
INSERT INTO syngrow.users VALUES ('USER005','2001-03-30','2001-12-05' ,'456,thevar str','male', 'sureshsuresh456@gmail.com','Suresh','suresh@123','9910162537');

CREATE TABLE sequence_user (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_user(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_user

DROP TRIGGER user_before_insert


DELIMITER //

CREATE TRIGGER user_before_insert
BEFORE INSERT ON user
FOR EACH ROW

BEGIN

    DECLARE next_val INT;

    UPDATE sequence_user
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';


    SELECT seq_value INTO next_val
    FROM sequence_user
    WHERE seq_name = 'user_sequence';

    SET NEW.user_id = CONCAT('USER', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;

