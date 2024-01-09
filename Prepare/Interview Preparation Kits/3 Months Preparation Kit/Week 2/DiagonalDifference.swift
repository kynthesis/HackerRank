func diagonalDifference(arr: [[Int]]) -> Int {
    var LTR = 0
    var RTL = 0
    
    for i in 0..<arr.count {
        LTR += arr[i][i]
        RTL += arr[i][arr.count-i-1]
    }
    
    return abs(LTR - RTL)
}
