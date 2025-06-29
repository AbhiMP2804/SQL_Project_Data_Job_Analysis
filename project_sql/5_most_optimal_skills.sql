/*
5. What are the most optimal skills to learn for Data Analysts?
- Identify skills with high demands and high salaries average for Data Analyst positions
- Focus on remote positions with specified salaries
*/


with skills_demand as (
    select 
        skills_dim.skill_id,
        skills_dim.skills,
        COUNT(skills_job_dim.job_id) as demand_count
    from 
        job_postings_fact
    inner join 
        skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    inner join 
        skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    where 
        job_postings_fact.job_title_short = 'Data Analyst'
        and salary_year_avg is not null
        and job_work_from_home = true
    group by 
        skills_dim.skill_id
),


average_salary AS (
    SELECT 
        skills_job_dim.skill_id,
        ROUND(AVG(job_postings_fact.salary_year_avg),0) AS avg_salary
    FROM 
        job_postings_fact
    INNER JOIN  skills_job_dim ON
        job_postings_facT.job_id=skills_job_dim.job_id
    INNER JOIN skills_dim ON    
        skills_job_dim.skill_id=skills_dim.skill_id
    WHERE 
        job_title_short='Data Analyst' 
        AND salary_year_avg IS NOT NULL
        AND job_work_from_home=TRUE
    GROUP BY    
        skills_job_dim.skill_id
)

select 
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary
from skills_demand inner join average_salary on skills_demand.skill_id=average_salary.skill_id
where demand_count>10
order by avg_salary desc,demand_count desc
limit 25



