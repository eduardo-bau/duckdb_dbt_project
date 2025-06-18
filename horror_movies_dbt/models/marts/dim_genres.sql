with source as (
    select * from {{ ref('stg_movies') }}
)

,genre as (
  SELECT
    trim(unnest(split(genre_names, ','))) as genre
  FROM source
  WHERE genre_names IS NOT NULL
) 

,distinct_genres as (
    select distinct genre
    from genre
)

,id_key as (
  select
    {{ dbt_utils.generate_surrogate_key(['genre']) }} as genre_id
    ,genre as genre_name
  from distinct_genres
)

select * from id_key
