func sockMerchant(n: Int, ar: [Int]) -> Int {
    Set(ar).map { i in ar.filter { j in i == j }.count / 2 }.reduce(0, +)
}
