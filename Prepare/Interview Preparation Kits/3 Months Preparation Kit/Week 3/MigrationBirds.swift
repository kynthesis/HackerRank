func migratoryBirds(arr: [Int]) -> Int {
    let uniqueArray = [Int](Set(arr)).sorted()
    let countArray = uniqueArray.map { i in arr.filter { j in i == j}.count }
    return uniqueArray[countArray.firstIndex(of: countArray.max()!)!]
}
