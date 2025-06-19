with collection as (
    select *
    from {{ref('stg_seed__horror_movies')}}
),

languages as (
    SELECT distinct
        {{ dbt_utils.generate_surrogate_key(['original_language']) }} as language_id
        ,original_language as language
    FROM collection
)

SELECT * FROM languages