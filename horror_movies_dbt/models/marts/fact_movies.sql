with movies as (
    select * from {{ref('stg_movies')}}
)

,master_intermediate as (
    select movie_id
        ,title
        ,release_date
        ,popularity
        ,vote_count
        ,vote_average
        ,budget
        ,revenue
        ,runtime
        ,genre_id (FK opcional si lo normalizas)
        ,collection_id (FK opcional si lo normalizas)
        ,is_adult (boolean)
    from movies
)

select * from final