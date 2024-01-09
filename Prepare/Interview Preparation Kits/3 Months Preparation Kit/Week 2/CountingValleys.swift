func countingValleys(steps: Int, path: String) -> Int {
    var levels = [0]
    path.forEach { levels.append(levels.last! + ($0 == "D" ? -1 : 1)) }
    var isInValley = false
    var countValley = 0
    for level in levels { 
        if level > 0 {
            isInValley = false
        } else if level < 0 {
            isInValley = true
        } else if level == 0 && isInValley {
            countValley += 1
        }
    }
    return countValley
}
