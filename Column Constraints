create table students(
  id serial primary key,
  username varchar(20) not null,
  email varchar(100) unique,
  age smallint check (age <= 10),
  isActive boolean default true
)

-- Multiple constraint
create table student(
  id serial,
  username varchar(20) not null,
  email varchar(100),
  age smallint check (age <= 10),
  isActive boolean default true,
  primary key(id),
  unique(username, email)
)