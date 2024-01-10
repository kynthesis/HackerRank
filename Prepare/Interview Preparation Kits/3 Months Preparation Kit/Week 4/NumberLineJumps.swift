func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if v1 <= v2 { return "NO" }
    var (p1, p2) = (x1, x2)
    
    while p1 < p2 {
        p1 += v1
        p2 += v2
    }
    
    if p1 == p2 { return "YES" }
    
    return "NO"
}
