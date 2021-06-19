create table publisher(
       id INTEGER primary key,
       name TEXT not NULL,
       country TEXT not NULL
       );

create table books(
       id INTEGER primary key,
       title TEXT not NULL,
       publisher INTEGER, 
       Foreign key(publisher) references publisher(id)
       );
       
create table subjects(
       id INTEGER primary key,
       name TEXT not NULL
       );
     
create table books_subjects(
       book INTEGER,
       subject INTEGER,
       Foreign key(book) references books(id),
       Foreign key(subject) references subjects(id)
       );         