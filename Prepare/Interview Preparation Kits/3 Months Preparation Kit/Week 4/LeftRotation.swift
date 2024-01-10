func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    [Int](arr.suffix(from: d)) + [Int](arr.prefix(upTo: d))
}
