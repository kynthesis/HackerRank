func maxMin(k: Int, arr: [Int]) -> Int {
    let sortedArr = arr.sorted()
    return (0...sortedArr.count-k).map { sortedArr[$0+k-1] - sortedArr[$0] }.min()!
}