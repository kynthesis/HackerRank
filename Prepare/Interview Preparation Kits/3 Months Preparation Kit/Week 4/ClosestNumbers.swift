func closestNumbers(arr: [Int]) -> [Int] {
    let uniqueSortedArr = [Int](Set(arr)).sorted()
    let absArray = zip(uniqueSortedArr.prefix(uniqueSortedArr.count-1), uniqueSortedArr.suffix(from: 1)).map{ abs($0 - $1) }
    let minAbsIndexArr = absArray.indices.filter { absArray[$0] == absArray.min() }
    
    var result = [Int]()
    
    minAbsIndexArr.forEach { result += [uniqueSortedArr[$0], uniqueSortedArr[$0 + 1]]}
    
    return result
}
