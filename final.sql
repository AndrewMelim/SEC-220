create table actors
(
    id         int auto_increment,
    first_name varchar(20) not null,
    last_name  varchar(20) not null,
    actorid    int         null,
    constraint id
        unique (id)
);

create table movie_actor_association
(
    id       int auto_increment
        primary key,
    movie_id int not null,
    actor_id int not null,
    constraint id
        unique (id)
);

create table movies
(
    id           int auto_increment,
    title        varchar(20) not null,
    release_year varchar(20) not null,
    genre        varchar(20) not null,
    movieId      int         null,
    constraint id
        unique (id)
);

create table directorsss
(
    id         int auto_increment,
    first_name varchar(20) not null,
    last_name  varchar(20) not null,
    directorid int         null,
    constraint id
        unique (id),
    constraint directorsss_ibfk_1
        foreign key (directorid) references movies (id)
);

create index directorid
    on directorsss (directorid);


