create table Race.user(
  user_id VARCHAR(6) unique not null,
  email VARCHAR(50) unique not null,
  make_at TIMESTAMP not null
);
create table Race.car(
  user_id VARCHAR(6) not null,
  car_name VARCHAR(25) not null,
  id_car VARCHAR(22) unique not null,
  make_at TIMESTAMP not null
);
