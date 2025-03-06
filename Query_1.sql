# 1. Find all the doctors who have treated  a patient for 'Diabetes'

Select d.doctor_id, fname, lname, gender, Illness, Patient_ID 
from doctor d
join worker w on d.D_Worker_ID = w.Worker_ID
join diagnosis di on di.doctor_id = d.doctor_id
where Illness = 'Diabetes'
