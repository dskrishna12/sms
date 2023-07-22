CREATE DATABASE sms;
USE sms;
CREATE TABLE sms_fee_master (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    syl_type VARCHAR(15),
    class VARCHAR(10),
    tution_fee INT,
    transport_fee INT,
    accessory_fee INT,
    lib_fee INT,
    exam_fee INT,
    annual_fee INT,
    discount INT,
    t1 INT,
    t2 INT,
    t3 INT
);
ALTER TABLE sms_fee_master
CHANGE COLUMN fee_id fee_master_id INT;





CREATE TABLE sms_fee (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    ad_num INT,
    a_fee INT,
    d_fee INT,
    f_fee INT,
    t1 INT,
    t2 INT,
    t3 INT,
    balance INT,
    reference VARCHAR(255),
    updated_by VARCHAR(15),
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_by VARCHAR(15),
    last_updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE sms_student_master (
    student_master_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    father_name VARCHAR(100),
    mother_name VARCHAR(100),
    dob DATE,
    s_mobile BIGINT,
    p_mobile BIGINT,
    adhaar_no BIGINT,
    address VARCHAR(100),
    admission_no VARCHAR(20),
    doj DATE,
    joc VARCHAR(5),
    previous_school VARCHAR(25),
    tc_num INT,
    tc_check VARCHAR(10),
    fee_check VARCHAR(10)
);
