drop database if exists T6_Entrepreneurs;
create database if not exists T6_Entrepreneurs;

create table T6_Entrepreneurs.post
(
    id             int          not null auto_increment primary key,
    title          varchar(250) not null,
    subtitle       varchar(250),
    date_published date         not null,
    author_fn      varchar(50),
    author_ln      varchar(50),
    image_main     varchar(250) not null,
    image_middle   varchar(250),
    image_bottom   varchar(250),
    excerpt        varchar(500),
    intro_text     mediumtext,
    main_text      mediumtext,
    outro_text     mediumtext,
    post_type      varchar(50) not null
);


create table T6_Entrepreneurs.business
(
    id           int          not null auto_increment primary key,
    name         varchar(250) not null,
    branch       varchar(250) not null,
    nr_employees int,
    str_name_nr  varchar(250),
    city         varchar(50),
    zipcode      int,
    country      varchar(50),
    e_mail       varchar(250),
    webpage      varchar(250),
    tel_nr       varchar(250),
    logo         varchar(250),
    image        varchar(250),
    description  mediumtext,
    moto         varchar(500),
    gmaploc      varchar(1000)
);

# created via symfony
# create table T6_Entrepreneurs.users
# (
#     id               int not null auto_increment primary key,
#     first_name       varchar(250),
#     last_name        varchar(250),
#     e_mail           varchar(250),
#     password         varchar(500),
#     status           varchar(20),
#     date_of_birth    date,
#     str_name_nr      varchar(250),
#     city             varchar(50),
#     zipcode          int,
#     country          varchar(50),
#     terms_conditions boolean
# );

create table T6_Entrepreneurs.stories
(
    id          int not null auto_increment primary key,
    fk_post     int not null,
    fk_business int not null,
    foreign key (fk_post) references T6_Entrepreneurs.post (id),
    foreign key (fk_business) references T6_Entrepreneurs.business (id)
);

create table T6_Entrepreneurs.signatory
(
    id            int         not null auto_increment primary key,
    document_type varchar(50) not null,
    number        varchar(50) not null,
    f_name        varchar(50) not null,
    l_name        varchar(50),
    dob           date,
    place_ob      varchar(50),
    nationality   varchar(250),
    address       varchar(250),
    zipcode       int,
    city          varchar(50),
    country       varchar(50) not null
);

create table T6_Entrepreneurs.cause
(
    id          int not null auto_increment primary key,
    title       varchar(250),
    subtitle    varchar(250),
    excerpt     varchar(1000),
    image       varchar(250),
    description mediumtext,
    date_start  date,
    date_end    date
);

create table T6_Entrepreneurs.signatures
(
    id           int not null auto_increment primary key,
    fk_cause     int not null,
    fk_signatory int not null,
    foreign key (fk_cause) references T6_Entrepreneurs.cause (id),
    foreign key (fk_signatory) references T6_Entrepreneurs.signatory (id)
);