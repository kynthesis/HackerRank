func twoArrays(k: Int, A: [Int], B: [Int]) -> String {
    zip(A.sorted(), B.sorted().reversed()).map { $0 + $1 < k }.filter { $0 == true }.count == 0 ? "YES" : "NO"
}
