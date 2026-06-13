-- create table
create table person(
  id serial primary key,
  username varchar(20) not null,
  email varchar(100) unique,
  age int check (age >= 20),
  isActive boolean default true
)

-- single-row insert
insert into person(id, username, email, age, isActive)
values(1, 'naim', 'naim@gmail.com', 23, true)

-- without isActive
insert into person(id, username, email, age)
values(2, 'naim1', 'naim1@gmail.com', 23)


-- Multi-row insert
insert into person(username, email, age, isActive)
values('naim3', 'naim3@gmail.com', 23, false),
      ('naim4', 'naim4@gmail.com', 23, true);


-- Without colum insert
insert into person
values(5, 'naim5', 'naim6@gmail.com', 23)

