
/*
1. What are the top-paying data analyst jobs?
- Find the top 10 highest paying data analyst jobs that are remote
- Remove null salary jobs
*/


select 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    name as Company_name,
    company_dim.company_id,
    job_posted_date
from job_postings_fact
left JOIN company_dim ON job_postings_fact.company_id=company_dim.company_id
where 
    job_title_short = 'Data Analyst' 
    and job_location = 'Anywhere'
    And salary_year_avg is not NULL
order by 
    salary_year_avg desc
limit 10

