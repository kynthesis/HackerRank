func plusMinus(arr: [Int]) -> Void {
    print(String(format: "%.6f", Double(arr.filter { $0 > 0 }.count) / Double(arr.count)))
    print(String(format: "%.6f", Double(arr.filter { $0 < 0 }.count) / Double(arr.count)))
    print(String(format: "%.6f", Double(arr.filter { $0 == 0 }.count) / Double(arr.count)))
}
