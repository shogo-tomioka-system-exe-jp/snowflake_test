{{ config(
    materialized='table',
    alias='test'
) }}

with source_data as (
    select
        PREF
    from TEST.PUBLIC.WEATHER2
),

final as (
    select
        distinct PREF
    from source_data
)

select * from final