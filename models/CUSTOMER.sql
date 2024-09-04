{{ config(materialized='table') }}

with TB1 as (

    select * 
    from {{source('DBT_SOURCE','customer_data01')}})
    select *
    from TB1