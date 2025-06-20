with source as (
    select * from {{ref('stg_seed__horror_movies')}}
),

movies_with_genres as (
    SELECT
        movie_id
        ,trim(unnest(split(genre_names, ','))) as genre
    FROM source
    where genre_names is not null
),

join_movies_id as (
    select
        mwg.movie_id as movie_id
        ,dg.genre_id as genre_id
    from movies_with_genres mwg
    join {{ref('dim_genres')}} dg
        on mwg.genre = dg.genre_name
)

select * from join_movies_id