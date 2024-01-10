func pickingNumbers(a: [Int]) -> Int {
    if Set(a).count == 1 { return a.count }
    
    var max = 0
    let range = a.min()!..<a.max()!
    
    for n in range {
        let count = a.filter { $0 == n }.count + a.filter { $0 == n + 1 }.count
        if count > max { max = count }
    }
    
    return max
}