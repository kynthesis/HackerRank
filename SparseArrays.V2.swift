func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    return queries.map{ query in strings.filter{ string in string == query }.count }
}
