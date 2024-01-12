func minimumAbsoluteDifference(arr: [Int]) -> Int {
    return zip(arr.sorted().prefix(upTo: arr.count), arr.sorted().suffix(from: 1)).map { abs($0 - $1 )}.min()!
}
