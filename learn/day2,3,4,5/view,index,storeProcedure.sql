use demo;
create table products(
Id int auto_increment not null primary key,
productCode int,
productName varchar(50),
productPrice double,
productAmount int,
productDescription text,
productStatus bit
);
select*from products;
-- bước 3
alter table products add unique index_chiso(productCode);
explain select*from products where productCode = 456;

alter table products add unique index_chisotonghop(productName,productPrice);
explain select*from products where productName ='iphone 13' or productPrice>2000;

-- bước 4
create view view_buoc4 as select productCode,productName,productPrice,productStatus  from products;
select*from view_buoc4;

update view_buoc4
set productPrice= 60000
where productName='iphone 13';
drop view view_buoc4;

-- bước 5
-- hiển thị danh sách
DELIMITER //
create procedure getproducts()
begin 
select*from products;
end //
DELIMITER ;
call getproducts();
-- thêm sản phẩm
DELIMITER //
create procedure addproduct()
begin 
insert into products
values(5,5468,'Iphone 12',100,45,'của iphone 12',1);
end //
DELIMITER ;
call addproduct();
-- sửa sản phẩm theo id
delimiter //
create procedure updateproductbyid( in inputid int)
begin
update products
set productCode=99,productName='iphone 13 update'
where id=inputid;
end //
delimiter ;
select*from products;
call updateproductbyid(1);
-- xóa sản phẩm theo id
delimiter //
create procedure deleteproductbyid( in inputid int)
begin
delete from products 
where id=inputid;
end //
delimiter ;
call deleteproductbyid(5);