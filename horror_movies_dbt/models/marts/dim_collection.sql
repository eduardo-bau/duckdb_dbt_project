with collection as (
    select *
    from {{ref('stg_seed__horror_movies')}}
)

,distinct_collection as (
    select
        collection as collection_id
        ,collection_name
    from collection
    where collection <> 'NA'
)

select * from distinct_collection