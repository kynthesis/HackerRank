func pageCount(n: Int, p: Int) -> Int {
    (p > n / 2) ? ((n / 2 * 2) - (p / 2 * 2)) / 2 : p / 2 
}
