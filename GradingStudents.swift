func gradingStudents(grades: [Int]) -> [Int] {
    return grades.map { ($0 < 38) ? $0 : (($0 / 5 * 5 + 5) - $0 < 3) ? ($0 / 5 * 5 + 5) : $0 }
}
