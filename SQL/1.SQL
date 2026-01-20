-- reset --
SELECT * 
  FROM [company_db].[dbo].[employees]

-- I want the job tittle, salary last_name --
SELECT last_name,salary,job_title
  FROM [company_db].[dbo].[employees]


-- I want employees working in the marketing department-
SELECT * 
  FROM [company_db].[dbo].[employees]
  WHERE department = 'Marketing'

-- Sort employees salaries in decending order --
SELECT * 
 FROM [company_db].[dbo].[employees]
 ORDER BY salary DESC;

 -- By using case statements provide salary bteween 70k and 90 and provide status --
 SELECT first_name,last_name,salary,
 CASE 
	WHEN salary > 90000 THEN 'High'
	WHEN salary BETWEEN 70000 AND 90000 THEN 'Medium'
	ELSE 'Low'
	END AS salary_category
 FROM [company_db].[dbo].[employees];
