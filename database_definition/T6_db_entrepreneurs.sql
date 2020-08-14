drop database if exists T6_Entrepreneurs;
create database if not exists T6_Entrepreneurs;

use T6_Entrepreneurs;

create table T6_Entrepreneurs.post
(
    id                 int          not null auto_increment primary key,
    title              varchar(250) not null,
    subtitle           varchar(250),
    date_published     date         not null,
    author_fn          varchar(50),
    author_ln          varchar(50),
    image_main         varchar(250) not null,
    image_middle       varchar(250),
    image_bottom       varchar(250),
    excerpt            varchar(500),
    intro_text         mediumtext,
    main_text          mediumtext,
    outro_text         mediumtext,
    post_type          varchar(50)  not null,

    strike_date_time   datetime,
    strike_str_name_nr varchar(250),
    strike_city        varchar(50),
    strike_zipcode     int,
    strike_country     varchar(50),

    b_logo             varchar(250),
    b_name             varchar(250),
    b_branch           varchar(250),
    b_str_name_nr      varchar(250),
    b_city             varchar(50),
    b_zipcode          int,
    b_country          varchar(50),
    b_e_mail           varchar(250),
    b_webpage          varchar(250),
    b_gmaploc          varchar(1000)
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
# CREATE TABLE T6_Entrepreneurs.user
# (
#     id       int(11)                                 not null auto_increment,
#     email    varchar(180) collate utf8mb4_unicode_ci not null,
#     roles    longtext collate utf8mb4_unicode_ci     not null comment '(DC2Type:json)',
#     password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
#     primary key (id),
#     unique key UNIQ_8D93D649E7927C74 (email)
# );


CREATE TABLE  T6_Entrepreneurs.user
(
    `id`       int(11)                                 NOT NULL AUTO_INCREMENT,
    `email`    varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
    `roles`    longtext COLLATE utf8mb4_unicode_ci     NOT NULL COMMENT '(DC2Type:json)',
    `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;


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

create table T6_Entrepreneurs.signatory
(
    id            int         not null auto_increment primary key,
    fk_cause      int         not null,
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
    country       varchar(50) not null,
    foreign key (fk_cause) references T6_Entrepreneurs.cause (id)
);
