# 4. Identify Patients with Prescribed Medications Expiring in 2024

SELECT DISTINCT P.fname, P.lname, M.Medication_ID, M.Expiration_Date
FROM PATIENT P
JOIN MEDICATION_PRESCRIBED MP ON P.Patient_ID = MP.Patient_ID
JOIN MEDICATION M ON MP.Medication_ID = M.Medication_ID
WHERE YEAR(M.Expiration_Date) = 2024;
