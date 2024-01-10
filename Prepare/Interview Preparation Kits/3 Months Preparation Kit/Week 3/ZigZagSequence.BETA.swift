func findZigZagSequence(_ a: [Int], _ n: Int) {
    var z = a.sorted()
    z.swapAt(n/2, n-1)
    let y = [Int](z[n/2+1...n-2].reversed())
    z[n/2+1...n-2] = y[0...y.count-1]
    print(z.map { String($0) }.joined(separator: " "))
}

var t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let a = [Int](readLine()!.split(separator: " ").map { Int($0)! })
    findZigZagSequence(a, n)
}
