SELECT
    S.classroom,
    S.start_time,
    S.end_time,
    Su.subject_name,
    T.full_name
FROM Schedule S
JOIN student_groups G ON S.group_id = G.group_id
JOIN Subjects Su ON S.subject_id = Su.subject_id
JOIN Teachers T ON S.teacher_id = T.teacher_id
WHERE G.group_name = 'ИСТ-311'
    AND S.day_of_week = 'пн'
    AND S.week_type = 1;