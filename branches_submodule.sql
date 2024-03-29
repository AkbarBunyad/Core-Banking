CREATE TABLE cb_branches (
    id number generated always as identity primary key,
    name VARCHAR2(30),
    address VARCHAR2(30)
);

create or replace procedure cb_branches_insert
    (p_name varchar2, p_address varchar2) is
    begin
        insert into cb_branches(name, address) values (p_name, p_address);
        commit;
    end;
    
create or replace procedure cb_branches_update
(p_id number, p_name varchar2 default null, p_address varchar2 default null)
is
begin
update cb_branches set name = nvl(p_name, name), address = nvl(p_address, address)
where id = p_id;
commit;
end;

begin
    --cb_branches_insert('Ahmadli', 'Ali_Aliyev');
    --cb_branches_update(1, p_address=>'Ali Aliyev 5 kuc');
end;

select * from cb_branches;