select
    *
from {{ source('raw_data', 'support_ticket') }}