func miniMaxSum(arr: [Int]) -> Void {
    var sum = 0
    for e in arr {
        sum += e
    }
    
    var min = sum - arr[0]
    var max = sum - arr[0]
    
    for e in arr {
        if sum - e < min {
            min = sum - e
        }
        
        if sum - e > max {
            max = sum - e
        }
    }
    
    print("\(min) \(max)")
}
