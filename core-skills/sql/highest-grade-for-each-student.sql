SELECT DISTINCT ON (student_id)
    student_id,
    exam_id,
    score
FROM exam_results
ORDER BY
    student_id ASC,
    -- find each student's highest score along with the corresponding exam_id.
    score DESC,
    -- If a student has the same highest score on multiple exams,
    -- return the one with the smallest exam_id
    exam_id ASC;
