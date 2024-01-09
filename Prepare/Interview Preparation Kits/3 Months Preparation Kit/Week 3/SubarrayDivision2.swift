func birthday(s: [Int], d: Int, m: Int) -> Int {
    var count = 0
    var sum = 0
    
    for i in 0..<m {
        sum += s[i]
    }
    
    if sum == d { count += 1 }
    
    for i in 1..<s.count-m+1 {
        sum -= s[i-1]
        sum += s[i+m-1]
        
        if sum == d { count += 1}
    }
    
    return count
}
