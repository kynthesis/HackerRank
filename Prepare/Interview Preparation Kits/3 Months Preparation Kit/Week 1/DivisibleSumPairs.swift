func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    
    for j in 1..<ar.count {
        for i in 0..<j {
            if (ar[i] + ar[j]).isMultiple(of: k) { count += 1 }
        }
    }
    
    return count
}
