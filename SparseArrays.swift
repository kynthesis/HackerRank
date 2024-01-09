func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var results = [Int]()
    
    for query in queries {
        results.append(strings.filter { $0 == query }.count)
    }
    
    return results
}
