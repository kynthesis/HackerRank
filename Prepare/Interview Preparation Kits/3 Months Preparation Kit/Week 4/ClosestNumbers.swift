func closestNumbers(arr: [Int]) -> [Int] {
    let uniqueSortedArr = [Int](Set(arr)).sorted()
    
    var absArray = [Int]()
    for i in 1..<arr.count { absArray.append(uniqueSortedArr[i] - uniqueSortedArr[i-1]) }
    
    let min = absArray.min()
    let minAbsIndexArr = absArray.indices.filter { absArray[$0] == min }
    
    var result = [Int]()
    minAbsIndexArr.forEach { result += [uniqueSortedArr[$0], uniqueSortedArr[$0 + 1]]}
    
    return result
}
