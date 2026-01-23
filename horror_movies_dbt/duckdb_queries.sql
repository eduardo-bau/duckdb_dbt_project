show tables;

-- Get the top 3 movies with highest revenue

select title
    ,released_date
    ,popularity
    ,revenue_in_dollars
    --,revenue_in_dollars
from fact_movies
WHERE revenue_in_dollars > 0 
--group by 1,2,3
order by revenue_in_dollars DESC
limit 3;
