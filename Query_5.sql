# 5. Identify the patient who has received the maximum number of different medications.

SELECT 
    P.Patient_ID,
    P.fname,
    P.lname,
    COUNT(DISTINCT MP.Medication_ID) AS Medication_Count
FROM
    PATIENT P
        JOIN
    MEDICATION_PRESCRIBED MP ON P.Patient_ID = MP.Patient_ID
GROUP BY P.Patient_ID
ORDER BY Medication_Count DESC
LIMIT 1;
