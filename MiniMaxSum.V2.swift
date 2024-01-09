func miniMaxSum(arr: [Int]) -> Void {
    let min = arr.sorted()[0...3].reduce(0,+)
    let max = arr.sorted()[1...4].reduce(0,+)
    
    print("\(min) \(max)")
}
