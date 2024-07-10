select * from student
	create table student(
	Gender varchar,
	ethnicity varchar,
	parental_level_education varchar,
	lunch varchar,
	test_preparation_course varchar,
	math_score int,
	reading_score  int,
	writing_score int
)
select * from student
--- import

select * from people
	create table  people(
	Index int,
	User_Id varchar,
	First_Name varchar,
	Last_Name varchar,
	gender varchar,
	Email varchar,
	Phone varchar,
	DOB varchar,
	Job_Title varchar,
	Income int
)

select * from people
-- import

select * from retail_sales
	create table  retail_sales(
	Transaction_ID int,
	Date varchar,
	Customer_ID varchar,
	Gender varchar,
	Age int,
	Product_Category varchar,
	Quantity int,
	Price_per_Unit int,
	Total_Amount int
)

select * from retail_sales
----import

	
-----inner join example

select index, user_id ,first_name, last_name from people
select gender , math_score from student

select index, p.user_id,p.first_name, p.last_name ,s.gender , s.math_score from people as p
inner join student as s
on p. index = s.math_score

---innner join example

	select * from retail


select  transaction_id , product_category,total_amount from retail_sales
select index , income  from people
	
select r.transaction_id ,r. product_category,r.total_amount , p.index , p.income from retail_sales as r
inner join people as p
on p. index = r.total_amount
group by r.transaction_id , r.product_category, r.total_amount ,p.index , p.income
having income >10000

	--- left join 
	
select index,job_title, gender from people

select gender,reading_score from student
	
	select index,p.job_title, p.gender,s.reading_score from people as p
	left join  student as s
	on p. job_title = s.gender

	
----union example
	
select gender, writing_score from student  where writing_score >90
union
select gender,income from people where income > 10000


--- union example

select  product_category , gender from retail_sales where product_category ='Beauty'
UNION
select gender, ethnicity from student  where ethnicity ='group A'

--multiple join example
	
select p.index ,p. first_name , p.income ,r.transaction_id , r.gender from people as p
inner join retail_sales as r
on p.index = r.transaction_id
inner join student as  s
on p.index = s.math_score







