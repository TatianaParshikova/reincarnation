

create table if not exists domain_pools
(
    id                 int generated always as identity primary key,
    tenant_id          bigint      not null,
    product            varchar(24) not null,
    ma_domain_category int         not null
);

