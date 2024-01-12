func anagram(s: String) -> Int {
    let size = s.count
    if size % 2 == 1 { return -1 }
    
    let half = size / 2
    let part1 = s.prefix(half)
    let part2 = s.suffix(half)
    
    let set1 = Set(part1)
    let set2 = Set(part2)
    
    let set3 = set1.intersection(set2)
    
    var sum = 0
    
    for c in set3 {
        let count1 = part1.filter { $0 == c }.count
        let count2 = part2.filter { $0 == c }.count
        sum += min(count1, count2)
    }
    
    return half - sum
}
