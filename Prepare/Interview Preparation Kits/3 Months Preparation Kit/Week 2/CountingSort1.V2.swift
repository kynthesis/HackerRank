func countingSort(arr: [Int]) -> [Int] {
    var freqArr = [Int](repeating: 0, count: 100)
    arr.forEach { freqArr[$0] += 1 }
    return freqArr
}
