-- This query extracts dose+durations of vasopressin administration
select
  stay_id, linkorderid
  , rate as vaso_rate
  , amount as vaso_amount
  , starttime
  , endtime
  into mimic_derived.vasopressin
from mimic_icu.inputevents
where itemid = 222315 -- vasopressin