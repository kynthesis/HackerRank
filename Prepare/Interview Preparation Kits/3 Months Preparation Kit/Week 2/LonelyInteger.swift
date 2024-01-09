func lonelyinteger(a: [Int]) -> Int {
    for e in Set(a) {
        if a.filter { $0 == e }.count == 1 {
            return e
        }
    }
    return 0
}
