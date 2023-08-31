SELECT DISTINCT
    G.group_name
FROM Schedule S
JOIN student_groups G ON S.group_id = G.group_id
WHERE S.classroom = '212'
    AND S.day_of_week = 'ср';