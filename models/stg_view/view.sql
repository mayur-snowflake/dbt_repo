{{ config(materialized='view') }}

with TB1 as (

    select * 
    from {{source('DBT_SOURCE','customer_data02')}})
    select *
    from TB1