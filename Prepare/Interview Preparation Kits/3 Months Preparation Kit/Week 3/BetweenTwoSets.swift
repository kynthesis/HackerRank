func getTotalX(a: [Int], b: [Int]) -> Int {
    let min = a.max()!
    let max = b.min()!
    var count = 0
    
    var i = min
    
    while i <= max {
        var flag = false
        
        for j in a {
            if i % j != 0 {
                flag = true
                break
            }
        }
        
        if flag {
            i += min
            continue
        }
        
        for k in b {
            if k % i != 0 {
                flag = true
                break
            }
        }
        
        if flag {
            i += min
            continue
        }
        
        count += 1
        i += min
    }
    
    return count
}
