/*
3. What are the most in-demand skills for data analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for data analysts
- Focus on all job postings
*/

select 
    skills,
    count(skills_job_dim.skill_id) as demand_count
from 
    job_postings_fact
inner join 
    skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
inner join 
    skills_dim on skills_job_dim.skill_id=skills_dim.skill_id
where 
    job_postings_fact.job_title_short='Data Analyst'
GROUP BY 
    skills
order by 
    demand_count desc
limit 5


