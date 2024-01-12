func towerBreakers(n: Int, m: Int) -> Int {
    return (n % 2 == 0) || (m == 1) ? 2 : 1
}
