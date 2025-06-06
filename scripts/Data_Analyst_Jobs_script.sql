--1.  How many rows are in the data_analyst_jobs table?

--select count (*)
--from public.data_analyst_jobs;
 --Answer 1793

 --2.  Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?

 --Select *
-- from public.data_analyst_jobs
 --limit 10;

 --ExxonMobil

 --3.  How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

 --SELECT *
 --FROM public.data_analyst_jobs
 --WHERE location = 'TN';

 --TN - 21
 
 --SELECT *
 --FROM public.data_analyst_jobs
 --WHERE location = 'TN' OR location = 'KY';
 

 --27

--4. How many postings in Tennessee have a star rating above 4?

--SELECT  *
--FROM public.data_analyst_jobs
--WHERE location = 'TN' AND star_rating > '4';

--3

--5. How many postings in the dataset have a review count between 500 and 1000?

--SELECT *
--FROM public.data_analyst_jobs
--WHERE review_count BETWEEN 500 AND 1000;

--Answer - 151

--6. Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?

--SELECT location, AVG(star_rating) AS avg_rating
--FROM public.data_analyst_jobs
--WHERE star_rating IS NOT NULL
--GROUP BY location
--ORDER BY avg_rating DESC;

--Answer 46

--7.  Select unique job titles from the data_analyst_jobs table. How many are there?

--SELECT DISTINCT title
--FROM public.data_analyst_jobs;

--881

--8.  How many unique job titles are there for California companies?

--SELECT DISTINCT title
--FROM public.data_analyst_jobs
--WHERE location = 'CA';

--230

--9.  Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?

--SELECT company, AVG(star_rating) AS avg_rating
--FROM public.data_analyst_jobs
--WHERE review_count > 5000
--GROUP BY company;

--41

--10. Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?

--SELECT company, AVG(star_rating) AS avg_rating
--FROM public.data_analyst_jobs
--WHERE review_count > 5000
--GROUP BY company
--ORDER BY avg_rating DESC;

--General Motors

--11. Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?

--SELECT title
--FROM public.data_analyst_jobs
--WHERE title LIKE '%Analyst%';

--1636

--12.  How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?

--SELECT title
--FROM public.data_analyst_jobs
--WHERE title NOT LIKE '%Analyst%'
--AND title NOT LIKE '%Analytics%'
--AND title NOT LIKE '%ANALYST%'
--AND title NOT LIKE '%analyst%'
--AND title NOT LIKE '%ANALYTICS%'
--AND title NOT LIKE '%analytics%';

--4, Most have the word DATA in common

--BONUS: You want to understand which jobs requiring SQL are hard to fill. Find the number of jobs by industry (domain) that require SQL and have been posted longer than 3 weeks.

--SELECT  skill, domain, days_since_posting
--FROM public.data_analyst_jobs
--WHERE days_since_posting > 21
--AND skill = 'SQL'
--AND domain IS NOT NULL;

-- 15, then 11 after Not Null

--SELECT  skill, domain, days_since_posting
--FROM public.data_analyst_jobs
--WHERE days_since_posting > 21
--AND skill = 'SQL'
--AND domain IS NOT NULL
--ORDER BY days_since_posting DESC;

-- Majority are tied at 30
