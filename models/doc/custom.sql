{{ config(materialized='table') }}

with Tbz as (

    select CUSTOMER_PK,GENDER,MARITAL_STATUS
    from {{source('DBT_SOURCE','customer_data02')}})
    select *
    from TBz