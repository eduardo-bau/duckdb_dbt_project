with collection as (
    select *
    from {{ref('stg_movies')}}
)

,languages as (
    SELECT distinct
        {{ dbt_utils.generate_surrogate_key(['genre']) }} as language_id,
        ,original_language as language
    FROM collection
)

SELECT * FROM languages