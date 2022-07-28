create table users (
	id int (11) unsigned auto_increment primary key,
    name VARCHAR(100),
    lastname varchar(100),
    email varchar(200),
    password varchar(255),
    image varchar(200),
    token varchar(200),
    bio text
);

create table movies(
	id int(11) unsigned auto_increment primary key,
    title varchar(100),
    description text,
    image varchar(200),
    trailer varchar(150),
    category varchar(50),
    length varchar(50),
    users_id int(11) unsigned, 
    foreign key(users_id) references users(id)
);

create table reviews(
	id int(11) unsigned auto_increment primary key,
    rating int,
    review text,
    users_id int(11) unsigned,
    movies_id int(11) unsigned,
    foreign key (users_id) references users(id),
    foreign key(movies_id) references movies(id)
);