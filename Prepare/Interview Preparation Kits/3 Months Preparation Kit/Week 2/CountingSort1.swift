func countingSort(arr: [Int]) -> [Int] {
    var freqArr = [Int](repeating: 0, count: 100)
    for num in arr { freqArr[num] += 1 }
    return freqArr
}
