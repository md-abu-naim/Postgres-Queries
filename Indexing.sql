EXPLAIN analyze
select * from all_users 
where email = 'user15@gmail.com'

-- Create index
create index idx_users_email
on all_users(email)


EXPLAIN analyze
select * from all_users 
where email = 'user15@gmail.com'



create table all_users (
  id serial primary key,
  name varchar(50),
  email varchar(100),
  country varchar(50),
  signup_date time 
)

INSERT INTO all_users (name, email, country, signup_date)
SELECT
    'User ' || gs,
    'user' || gs || '@gmail.com',
    (ARRAY[
        'Bangladesh',
        'India',
        'Pakistan',
        'Nepal',
        'Sri Lanka',
        'USA',
        'Canada',
        'UK'
    ])[floor(random() * 8 + 1)],
    (TIME '00:00:00' + (random() * INTERVAL '24 hours'))
FROM generate_series(1, 100000) AS gs;

select count(*) from all_users
