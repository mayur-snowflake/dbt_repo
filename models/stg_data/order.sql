{{ config(materialized='view') }}

with TB1 as (

    select * 
    from {{source('DBT_SOURCE','customer_data03')}})
    select *
    from TB1