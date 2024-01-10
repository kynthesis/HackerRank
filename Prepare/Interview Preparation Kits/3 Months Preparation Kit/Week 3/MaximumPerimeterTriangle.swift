func maximumPerimeterTriangle(sticks: [Int]) -> [Int] {
    let sortedSticks = sticks.sorted()
    
    for i in (2...sticks.count-1).reversed() {
        for j in (1...i-1).reversed() {
            for k in (0...j-1).reversed() {
                if isTriangleValid(sortedSticks[i], sortedSticks[j], sortedSticks[k]) {
                    return [sortedSticks[k], sortedSticks[j], sortedSticks[i]]
                }
            }
        }
    }
    
    return [-1]
}
