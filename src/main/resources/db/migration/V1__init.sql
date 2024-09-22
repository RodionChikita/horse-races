CREATE TYPE genre AS ENUM ('MALE', 'FEMALE');

create table
owners(
    id bigserial,
    name varchar(255),
    address varchar(255),
    phone_number varchar(255),
    primary key (id)
);

create table
horses(
    id bigserial,
    nickname varchar(255),
    genre varchar(255),
    age smallint,
    owner_id bigint references owners(id) on delete cascade,
    primary key (id)
);

create table
jockeys(
    id bigserial,
    name varchar(255),
    address varchar(255),
    age smallint,
    rating int,
    primary key (id)
);

create table
books_genres(
    book_id bigint references books(id) on delete cascade,
    genre_id bigint references genres(id) on delete cascade,
    primary key (book_id, genre_id)
);

create table
comments(
    id bigserial,
    book_id bigint references books(id) on delete cascade,
    text varchar(255),
    primary key (id)
);

insert into authors(full_name)
values ('Author_1'), ('Author_2'), ('Author_3');

insert into genres(name)
values ('Genre_1'), ('Genre_2'), ('Genre_3'),
       ('Genre_4'), ('Genre_5'), ('Genre_6');

insert into books(title, author_id)
values ('BookTitle_1', 1), ('BookTitle_2', 2), ('BookTitle_3', 3);

insert into books_genres(book_id, genre_id)
values (1, 1),   (1, 2),
       (2, 3),   (2, 4),
       (3, 5),   (3, 6);

insert into comments(text, book_id)
values ('comment_01', 1), ('comment_02', 1), ('comment_03', 1), ('comment_04', 1), ('comment_05', 1), ('comment_06', 2),
       ('comment_07', 2), ('comment_08',3), ('comment_09', 3), ('comment_10', 3), ('comment_11', 3), ('comment_12', 3);