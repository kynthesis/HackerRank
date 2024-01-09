func flippingMatrix(matrix: [[Int]]) -> Int {
    let size = matrix.count
    var sum = 0
    
    for i in 0..<size/2 {
        for j in 0..<size/2 {
            var tempArr = [Int]()
            tempArr.append(matrix[i][j])
            tempArr.append(matrix[i][size-j-1])
            tempArr.append(matrix[size-i-1][j])
            tempArr.append(matrix[size-i-1][size-j-1])
            sum += tempArr.max()!
        }
    }
    
    return sum
}
