create table hotels 
(id serial primary key,
name text not null,
address text not null
);

create table hotel_room_types 
(id serial primary key,
name text not null unique
);

create table hotel_rooms
(id serial primary key,
hotel_id integer not null references hotels,
room_type_id integer not null references hotel_room_types,
room_number text not null,
unique (hotel_id, room_number)
);