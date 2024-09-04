
{{ config(materialized='table') }}

with TB1C as (

    select * 
    from {{source('DBT_SOURCE','customer_data02')}})
    select *
    from TB1c