func breakingRecords(scores: [Int]) -> [Int] {
    var min = scores[0]
    var max = scores[0]
    
    var countMin = 0
    var countMax = 0
    
    for score in scores {
        if score < min {
            min = score
            countMin += 1
        } else if score > max {
            max = score
            countMax += 1  
        }
    }
    
    return [countMax, countMin]
}
