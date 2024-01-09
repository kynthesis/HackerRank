func countingValleys(steps: Int, path: String) -> Int {
    var elevation = 0
    var isInValley = false
    var countValley = 0
    
    for step in path {
        elevation += (step == "D") ? -1 : 1
        if elevation < 0 { isInValley = true }
        else if elevation > 0 { isInValley = false }
        else if isInValley { countValley += 1 }
    }
    
    return countValley
}
