--1 Creación de tabla USERS

create table users (
id serial primary key,
firstName varchar(30),
lastName varchar (30),
email varchar(100)
);

--Datos de la tabla USER

insert into users (firstName, lastName, email)
values
('James','Patiño','jamesp@gmail.com'),
('Ana','Rodriguez','AnaR@gmail.com'),
('Pablo','Rueda','p.rueda@gmail.com');

-- Tabla POSTS

create table posts (
id serial primary key,
creator_id int references users(id),
tittle varchar (50),
text text
);

--Datos de la tabla POSTS

insert into posts(creator_id, tittle, text)
values
(3, 'First Post', 'Description of the text in the first post'),
(2, 'Second Post', 'Description of the text in the second post'),
(1, 'Third Post', 'Description of the text in the third post'),
(1, 'Fourth Post', 'Description of the text in the fourth post'),
(3, 'Fifth Post', 'Description of the text in the fifth post');

-- Tabla USERS INNER JOIN POST

select * from users U inner join posts P
on U.id = P.creator_id;

-- Tabla LIKES

create table likes (
id serial primary key,
user_id int references users (id),
post_id int references posts(id)
);

--Datos de la tabla LIKES

insert into likes (user_id, post_id)
values
(1, 5),
(2, 4),
(3, 3),
(2, 2),
(1, 1);

-- tabla USERS INNER JOIN LIKES INNER JOIN POSTS

select * from users U inner join likes L
on U.id = L.user_id inner join posts P
on L.post_id = P.id;



