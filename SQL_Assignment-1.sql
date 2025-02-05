/* 1. Count the number of Salesperson whose name begin with ‘a’/’A’*/                                  

select count(*) from SalesPeople where Sname like 'A%' or 'a%';

/* 2. Display all the Salesperson whose all orders worth is more than Rs. 2000.*/

select s.Sname from SalesPeople s join Orders o on s.Snum = o.Snum 
where o.Amt > 2000;

/* 3. Count the number of Salesperson belonging to Newyork.*/

select count(*) from SalesPeople where City = 'Newyork';

/* 4. Display the number of Salespeople belonging to London and belonging to Paris.*/ 

select count(*) from SalesPeople where City in ('London','Paris');

/*5. Display the number of orders taken by each Salesperson and their date of orders.*/

select count(*) as OrdersCount,o.Odate from Orders o join SalesPeople s on s.Snum = o.Snum
group by o.Snum;

















