CREATE TABLE "todos" (
  "id" uuid PRIMARY KEY,
  "matter" varchar NOT NULL,
  "teach" varchar UNIQUE NOT NULL,
  "qualification" float,
  "code" int
);


insert into todos
(
	id,
	matter,
	teach,
	qualification,
	code
) 
values
(
	'7d4221c4-9c21-4052-8691-93c0abf27e80',
	'fundamentos',
	'Juan', 
	 8.5,
	 1
),
(
	'44b914d6-28aa-40cd-9e5e-ed0d0ddda666',
	'React',
	'Benjamin', 
	 9.5,
	 2
),
(
	'890b76d2-7417-460a-9b03-a9bb6fb075df',
	'Node',
	'Said', 
	 9.7,
	 3
);

select * from todos

select id, matter, qualification from todos where qualification = 9.5 

