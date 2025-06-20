with movies as (
    select * from {{ref('stg_seed__horror_movies')}}
)

,final as (
    select movie_id
        ,title
        ,released_date
        ,popularity
        ,vote_count
        ,vote_average
        ,budget_in_dollars
        ,revenue_in_dollars
        ,runtime
        ,genre_names
        ,collection
        ,is_adult
    from movies
)

select * from final