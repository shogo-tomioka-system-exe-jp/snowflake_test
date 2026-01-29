{{ config(materialized='table') }}

with source_data as (
    select
        PREF
    -- 直接Snowflakeのテーブルを指定（ダブルクォーテーションが必要な場合あり）
    from IDENTIFIER('TEST.PUBLIC.WEATHER2')
),

final as (
    select
        distinct PREF
    from source_data
)

select * from final