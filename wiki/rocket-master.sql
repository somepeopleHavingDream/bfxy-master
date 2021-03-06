drop database if exists rocket_order;
create database rocket_order character set utf8mb4;

use rocket_order;
drop table if exists t_order;
create table t_order
(
    order_id     varchar(256) not null default '' primary key,
    order_type   varchar(256) not null default '',
    city_id      varchar(256) not null default '',
    platform_id  varchar(256) not null default '',
    user_id      varchar(256) not null default '',
    supplier_id  varchar(256) not null default '',
    goods_id     varchar(256) not null default '',
    order_status varchar(256) not null default '',
    remark       varchar(256) not null default '',
    create_by    varchar(256) not null default '',
    create_time  datetime     not null default current_timestamp,
    update_by    varchar(256) not null default '',
    update_time  datetime     not null default current_timestamp on update current_timestamp
) engine = InnoDB
  default charset = utf8mb4;

insert into rocket_order.t_order(order_id, order_type, city_id, platform_id, user_id, supplier_id, goods_id, order_status, remark, create_by)
values ('33bfffaa-65e7-45d9-9a40-e349983e', '1', '1001', '001', '001', '1', '001', '1', '', 'admin');

drop database if exists rocket_store;
create database rocket_store character set utf8mb4;

use rocket_store;
drop table if exists t_store;
create table t_store
(
    store_id    varchar(256) not null default '' primary key,
    goods_id    varchar(256) not null default '',
    supplier_id varchar(256) not null default '',
    goods_name  varchar(256) not null default '',
    store_count int unsigned not null default 0,
    version     int unsigned not null default 0,
    create_by   varchar(256) not null default '',
    create_time datetime     not null default current_timestamp,
    update_by   varchar(256) not null default '',
    update_time datetime     not null default current_timestamp on update current_timestamp
) engine = InnoDB
  default charset = utf8mb4;

insert into rocket_store.t_store(store_id, goods_id, supplier_id, goods_name, store_count, version, create_by,
                                 update_by)
values ('001', '001', '001', 'Logitech', 10, 0, 'admin', 'admin');

drop database if exists rocket_pay_a;
create database rocket_pay_a character set utf8mb4;

use rocket_pay_a;
drop table if exists t_customer_account;
create table t_customer_account
(
    account_id varchar(256) not null default '' primary key,
    account_no varchar(256) not null default '' unique,
    date_time datetime not null default current_timestamp,
    current_balance decimal not null default 0,
    version int not null default 0,
    create_time datetime     not null default current_timestamp,
    update_time datetime     not null default current_timestamp on update current_timestamp
) engine = InnoDB
  default charset = utf8mb4;

insert into t_customer_account(account_id, account_no, current_balance, version)
values ('user001', '123456', 1000, 0);

drop database if exists rocket_pay_b;
create database rocket_pay_b character set utf8mb4;

use rocket_pay_b;
drop table if exists t_platform_account;
create table t_platform_account
(
    account_id varchar(256) not null default '' primary key,
    account_no varchar(256) not null default '' unique,
    date_time datetime not null default current_timestamp,
    current_balance decimal not null default 0,
    version int not null default 0,
    create_time datetime     not null default current_timestamp,
    update_time datetime     not null default current_timestamp on update current_timestamp
) engine = InnoDB
  default charset = utf8mb4;

insert into t_platform_account(account_id, account_no, current_balance, version)
values ('platform001', '654321', 1000, 0);

drop database if exists rocket_pkg;
create database rocket_pkg character set utf8mb4;