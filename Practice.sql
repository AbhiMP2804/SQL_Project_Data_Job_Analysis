
with remote_jobs_skills as (
    select 
        skill_id,
        Count(*) as skill_count  
    from 
        skills_job_dim as sk
    inner join job_postings_fact as jb on sk.job_id = jb.job_id
    where jb.job_work_from_home = TRUE and jb.job_title_short = 'Data Analyst'
    group BY skill_id
)

select sd.skill_id,skills as skill_name,skill_count
from remote_jobs_skills
inner JOIN skills_dim sd on sd.skill_id=remote_jobs_skills.skill_id
order by skill_count desc limit 5


select 
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.salary_year_avg,
    quarter1_job_postings.job_posted_date:: Date as date
From (
    select * from january_jobs

    union all

    select * from february_jobs

    union all

    select * from march_jobs
) as quarter1_job_postings
where quarter1_job_postings.salary_year_avg>70000 and quarter1_job_postings.job_title_short = 'Data Analyst'
order by quarter1_job_postings.salary_year_avg DESC
