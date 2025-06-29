/*
4. What are top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focused on roles with specified salaries, regardless of location
*/


SELECT 
    skills,
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
    skills
ORDER BY 
    avg_salary DESC

    
/* 

[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  },
  {
    "skills": "crystal",
    "avg_salary": "120100"
  },
  {
    "skills": "go",
    "avg_salary": "115320"
  },
  {
    "skills": "confluence",
    "avg_salary": "114210"
  },
  {
    "skills": "db2",
    "avg_salary": "114072"
  },
  {
    "skills": "hadoop",
    "avg_salary": "113193"
  },
  {
    "skills": "snowflake",
    "avg_salary": "112948"
  },
  {
    "skills": "git",
    "avg_salary": "112000"
  },
  {
    "skills": "ibm cloud",
    "avg_salary": "111500"
  },
  {
    "skills": "azure",
    "avg_salary": "111225"
  },
  {
    "skills": "bigquery",
    "avg_salary": "109654"
  },
  {
    "skills": "aws",
    "avg_salary": "108317"
  },
  {
    "skills": "shell",
    "avg_salary": "108200"
  },
  {
    "skills": "unix",
    "avg_salary": "107667"
  },
  {
    "skills": "java",
    "avg_salary": "106906"
  },
  {
    "skills": "ssis",
    "avg_salary": "106683"
  },
  {
    "skills": "jira",
    "avg_salary": "104918"
  },
  {
    "skills": "oracle",
    "avg_salary": "104534"
  },
  {
    "skills": "dax",
    "avg_salary": "104500"
  },
  {
    "skills": "looker",
    "avg_salary": "103795"
  },
  {
    "skills": "sap",
    "avg_salary": "102920"
  },
  {
    "skills": "nosql",
    "avg_salary": "101414"
  },
  {
    "skills": "python",
    "avg_salary": "101397"
  },
  {
    "skills": "r",
    "avg_salary": "100499"
  },
  {
    "skills": "redshift",
    "avg_salary": "99936"
  },
  {
    "skills": "qlik",
    "avg_salary": "99631"
  },
  {
    "skills": "tableau",
    "avg_salary": "99288"
  },
  {
    "skills": "ssrs",
    "avg_salary": "99171"
  },
  {
    "skills": "spark",
    "avg_salary": "99077"
  },
  {
    "skills": "c++",
    "avg_salary": "98958"
  },
  {
    "skills": "c",
    "avg_salary": "98938"
  },
  {
    "skills": "sas",
    "avg_salary": "98902"
  },
  {
    "skills": "sql server",
    "avg_salary": "97786"
  },
  {
    "skills": "javascript",
    "avg_salary": "97587"
  },
  {
    "skills": "rust",
    "avg_salary": "97500"
  },
  {
    "skills": "power bi",
    "avg_salary": "97431"
  },
  {
    "skills": "sql",
    "avg_salary": "97237"
  },
  {
    "skills": "phoenix",
    "avg_salary": "97230"
  },
  {
    "skills": "flow",
    "avg_salary": "97200"
  },
  {
    "skills": "bash",
    "avg_salary": "96558"
  },
  {
    "skills": "t-sql",
    "avg_salary": "96365"
  },
  {
    "skills": "visio",
    "avg_salary": "95842"
  },
  {
    "skills": "unity",
    "avg_salary": "95500"
  },
  {
    "skills": "powershell",
    "avg_salary": "95275"
  },
  {
    "skills": "mysql",
    "avg_salary": "95224"
  },
  {
    "skills": "php",
    "avg_salary": "95000"
  },
  {
    "skills": "mariadb",
    "avg_salary": "95000"
  },
  {
    "skills": "matlab",
    "avg_salary": "94200"
  },
  {
    "skills": "alteryx",
    "avg_salary": "94145"
  },
  {
    "skills": "cognos",
    "avg_salary": "93264"
  },
  {
    "skills": "spss",
    "avg_salary": "92170"
  },
  {
    "skills": "pascal",
    "avg_salary": "92000"
  },
  {
    "skills": "github",
    "avg_salary": "91580"
  },
  {
    "skills": "outlook",
    "avg_salary": "90077"
  },
  {
    "skills": "clickup",
    "avg_salary": "90000"
  },
  {
    "skills": "vb.net",
    "avg_salary": "90000"
  },
  {
    "skills": "sqlite",
    "avg_salary": "89167"
  },
  {
    "skills": "vba",
    "avg_salary": "88783"
  },
  {
    "skills": "powerpoint",
    "avg_salary": "88701"
  },
  {
    "skills": "microsoft teams",
    "avg_salary": "87854"
  },
  {
    "skills": "excel",
    "avg_salary": "87288"
  },
  {
    "skills": "c#",
    "avg_salary": "86540"
  },
  {
    "skills": "html",
    "avg_salary": "86438"
  },
  {
    "skills": "sheets",
    "avg_salary": "86088"
  },
  {
    "skills": "ms access",
    "avg_salary": "85519"
  },
  {
    "skills": "chef",
    "avg_salary": "85000"
  },
  {
    "skills": "node.js",
    "avg_salary": "83500"
  },
  {
    "skills": "arch",
    "avg_salary": "82750"
  },
  {
    "skills": "word",
    "avg_salary": "82576"
  },
  {
    "skills": "spring",
    "avg_salary": "82000"
  },
  {
    "skills": "spreadsheet",
    "avg_salary": "81892"
  },
  {
    "skills": "sharepoint",
    "avg_salary": "81634"
  },
  {
    "skills": "webex",
    "avg_salary": "81250"
  },
  {
    "skills": "zoom",
    "avg_salary": "80740"
  },
  {
    "skills": "terminal",
    "avg_salary": "80625"
  },
  {
    "skills": "express",
    "avg_salary": "80000"
  },
  {
    "skills": "plotly",
    "avg_salary": "78750"
  },
  {
    "skills": "seaborn",
    "avg_salary": "77500"
  },
  {
    "skills": "planner",
    "avg_salary": "76800"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "76301"
  },
  {
    "skills": "ggplot2",
    "avg_salary": "75000"
  },
  {
    "skills": "windows",
    "avg_salary": "74124"
  },
  {
    "skills": "erlang",
    "avg_salary": "72500"
  },
  {
    "skills": "julia",
    "avg_salary": "71148"
  },
  {
    "skills": "colocation",
    "avg_salary": "67500"
  },
  {
    "skills": "sass",
    "avg_salary": "67500"
  },
  {
    "skills": "mongodb",
    "avg_salary": "66020"
  },
  {
    "skills": "smartsheet",
    "avg_salary": "63000"
  },
  {
    "skills": "visual basic",
    "avg_salary": "62500"
  },
  {
    "skills": "ruby",
    "avg_salary": "61780"
  },
  {
    "skills": "css",
    "avg_salary": "52500"
  },
  {
    "skills": "ruby on rails",
    "avg_salary": "51059"
  },
  {
    "skills": "wire",
    "avg_salary": "42500"
  }
]

*/