-- Create users table
create table users(
  id serial primary key,
  username varchar(50) not null
)

-- inset users into table
insert into users(username)
values('akash'), ('batash'), ('sagor')


-- Create Posts table
create table posts (
  id serial primary key,
  title text not null,
  user_id int references users (id)
)

-- insert post into table
insert into posts(title, user_id)
values('habi jabi kichu ekta', 1),
('tui jabini ami jamu', 2),
('tor o jaowa lagbe na amaro na', 2)


-- Inner join oparetor
select * from posts
join users on posts.user_id = user_id
  
select title, username from posts
join users on posts.user_id = user_id
  
select posts.id, title, username from posts
join users on posts.user_id = user_id

  -- Shorthand
select p.id, title, username from posts as p
join users as u on p.user_id = u.id


  -- Left join
select * from posts as p
left join users as u on p.user_id = u.id

  -- Right join
select * from posts as p
right join users as u on p.user_id = u.id

  -- full join
select * from posts as p
full join users as u on p.user_id = u.id
  
  -- cross join
select * from posts as p
cross join users
  
  -- natural join
select * from posts as p
natural join users