-- Xoa database
DROP DATABASE IF EXISTS assignment_01;
CREATE DATABASE assignment_01;
USE assignment_01;

-- Tao bang department
DROP TABLE IF EXISTS  department;
CREATE TABLE department (
department_id INT,
department_name VARCHAR(50)
);

-- Tao bang position
DROP TABLE IF EXISTS position;
CREATE TABLE `position` (
position_id INT,
position_name ENUM("Dev","Test","Scrum Master","PM")
);

-- Tao bang account
DROP TABLE IF EXISTS account;
CREATE TABLE account(
account_id INT,
email VARCHAR(50),
usename VARCHAR(50),
full_name VARCHAR(50),
department_id INT,
position_id INT,
create_date DATE
);

-- Tao bang Group
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`(
group_id INT,
group_name VARCHAR(50),
creator_id INT,
create_date DATE
);

-- Tao bang GroupAccount
DROP TABLE group_account;
CREATE TABLE group_account(
group_id INT,
account_id INT,
join_date DATE
);

-- Tao bang TypeQuestion
DROP TABLE type_question;
CREATE TABLE type_question(
type_id INT,
type_name ENUM("Essay","Multiple-Choice")
);

-- Tao bang CategoryQuestion
DROP TABLE category_question;
CREATE TABLE category_question(
category_id INT,
category_name ENUM("Java",".NET","SQL","Postman","Ruby","...")
);

-- Tao bang Question
DROP TABLE question;
CREATE TABLE question(
question_id INT,
content VARCHAR(50),
category_id INT,
type_id INT,
Creator_id INT,
create_date DATE
);

-- Tao bang answer
DROP TABLE answer;
CREATE TABLE answer(
answer_id INT,
content VARCHAR(50),
question_id INT,
is_correct BOOLEAN
);

-- Tao bang Exam
DROP TABLE exam;
CREATE TABLE exam(
exam_id INT,
`code` INT UNSIGNED,
title VARCHAR(50),
category_id INT,
duration TIME,
creator_id INT,
create_date DATE
);

-- Tao bang ExamQuestion
DROP TABLE exam_question;
CREATE TABLE exam_question(
exam_id INT,
question_id INT
);