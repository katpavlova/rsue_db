SELECT
    S.start_time,
    S.end_time,
    G.group_name,
    S.classroom,
    Su.subject_name,
    S.day_of_week,
    S.week_type
FROM Schedule S
JOIN Teachers T ON S.teacher_id = T.teacher_id
JOIN student_groups G ON S.group_id = G.group_id
JOIN Subjects Su ON S.subject_id = Su.subject_id
WHERE T.full_name = 'Долженко А.И.';