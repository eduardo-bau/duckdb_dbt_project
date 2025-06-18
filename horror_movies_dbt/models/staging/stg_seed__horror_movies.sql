WITH source AS (
    SELECT * FROM {{source('horror_movies_source')}}
)

,cleaned as (
    SELECT DISTINCT
        id as movie_id
        ,title
        ,original_language
        ,overview
        ,tagline
        ,release_date::DATE as released_date
        ,poster_path
        ,ROUND(popularity, 2) as popularity
        ,vote_count
        ,vote_average
        ,budget::NUMERIC(15, 2) as budget_in_dollars
        ,revenue::NUMERIC(15, 2) as revenue_in_dollars
        ,runtime
        ,status
        ,adult as is_adult
        ,backdrop_path
        ,genre_names
        ,collection
        ,collection_name
    FROM source
)

SELECT * FROM cleaned