-- *********-- *Trigger function-- ********/

CREATE TABLE sequence_admin (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_admin(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_admin;

 

DELIMITER //

CREATE TRIGGER admin_before_insert
BEFORE INSERT ON admin
FOR EACH ROW

BEGIN

    DECLARE next_val INT;





    UPDATE sequence_admin
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';


    SELECT seq_value INTO next_val
    FROM sequence_admin
    WHERE seq_name = 'user_sequence';

    SET NEW.admin_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;

DELIMITER //
CREATE TABLE sequence_user (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_user(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_user;


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

    SET NEW.user_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;


CREATE TABLE sequence_events (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_events(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_events;

 

DELIMITER //

CREATE TRIGGER events_before_insert
BEFORE INSERT ON admin
FOR EACH ROW

BEGIN

    DECLARE next_val INT;


    UPDATE sequence_events
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';


    SELECT seq_value INTO next_val
    FROM sequence_events
    WHERE seq_name = 'user_sequence';

    SET NEW.events_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;

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
CREATE TABLE sequence_ngo (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);
drop table sequence_ngo;

INSERT INTO sequence_ngo(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_ngo;

 

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


CREATE TABLE sequence_queries (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_queries(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_events;

 

DELIMITER //

CREATE TRIGGER queries_before_insert
BEFORE INSERT ON queries
FOR EACH ROW

BEGIN

    DECLARE next_val INT;


    UPDATE sequence_queries
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';


    SELECT seq_value INTO next_val
    FROM sequence_queries
    WHERE seq_name = 'user_sequence';

    SET NEW.queries_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;


CREATE TABLE sequence_registration (
    seq_name VARCHAR(50) PRIMARY KEY,
    seq_value INT

);

INSERT INTO sequence_registration(seq_name, seq_value) VALUES ('user_sequence', 0);
select *  from sequence_registration;

 

DELIMITER //

CREATE TRIGGER registration_before_insert
BEFORE INSERT ON registration
FOR EACH ROW


BEGIN

    DECLARE next_val INT;


    UPDATE sequence_registration
    SET seq_value = seq_value + 1
    WHERE seq_name = 'user_sequence';


    SELECT seq_value INTO next_val
    FROM sequence_registration
    WHERE seq_name = 'user_sequence';

    SET NEW.registration_id = CONCAT('OR', LPAD(next_val, 3, '0'));
END;
//
DELIMITER ;





