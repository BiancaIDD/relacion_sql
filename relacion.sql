create table persona(
nombre name,
edad integer,
id serial,
primary key (id)
); 

create table tienda(
soda text,
papas text,
id serial,
persona_id serial not null,
primary key (id),
foreign key (persona_id) references persona(id) on delete cascade 
);

insert into persona (nombre, edad) values ('johnny', 24);
insert into persona (nombre, edad) values ('bianca', 20);

select * from persona p

insert into tienda (soda, papas, persona_id) values ('sprite', 'margaritas', 1);
insert into tienda (soda, papas, persona_id) values ('fanta', 'chetos flammin', 2);

select * from tienda t 

select * from tienda 
where persona_id= 1

select * from tienda t 
inner join persona p on t.persona_id= p.id
where t.persona_id= 1