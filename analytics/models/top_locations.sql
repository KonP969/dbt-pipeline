SELECT
    job_location,
    count(*) as posting
    from
    {{ ref('job_postings')}}
    group by job_location
    order by posting desc
    limit 10