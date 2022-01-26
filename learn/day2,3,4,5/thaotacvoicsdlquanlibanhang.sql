-- 2 
SELECT 
od.oID 'id don hang',
o.cID 'id nguoi mua',
c.cName 'ten nguoi mua',
od.pID as 'id san pham',
p.pName 'ten san pham'
FROM orderdetail as od
join `order` as o on o.oID = od.oID
join customer as c on c.cID = o.cID
join product as p on p.pID = od.pID;
-- 3
select cName from customer as c
where not exists (select distinct o.cID from `order` o where o.cID=c.cID);

select cName from customer as c
left join `order` o on o.cID=c.cID where o.cID is null ;
-- 4 
select 
o.oID,
o.oDate,
p.pPrice'Giá',
od.odQTY'số lượng',
p.pPrice*od.odQTY'Tổng giá đơn hàng'
from `order` o 
join orderdetail od on o.oID=od.oID
join product p on p.pID=od.pID;

-- TINH TONG CUA TAT CA HOA DON

 SELECT O.oID as 'MA HD',
O.oDate as 'NGAY BAN',
(
SELECT SUM(OD.odQTY*P.pPrice)
FROM QuanLiBanHang.OrderDetail OD
INNER JOIN  Product P
ON OD.pID=P.pID
WHERE OD.oID=O.oID
) as 'TONG TIEN'
FROM QuanLiBanHang.Order Oorderdetail

