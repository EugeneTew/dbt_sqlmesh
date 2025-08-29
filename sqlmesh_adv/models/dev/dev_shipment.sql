select
    *
from {{ source('raw_data', 'shipment') }}