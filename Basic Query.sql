-- CREATE DATABASE
create database school;

-- DELETE (drop) DATABASE
drop database school;

-- TABLE CREATEION
create table student (
  id serial,
  name varchar(50),
  age int,
  isActive boolean,
  dob date
)

-- TABLE DELETION
drop table student;

-- drop + recreate if already exists (safe way)
drop table if exists student;
