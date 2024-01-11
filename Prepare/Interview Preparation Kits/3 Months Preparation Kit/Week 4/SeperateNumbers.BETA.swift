func separateNumbers(s: String) -> Void {
    let size = s.count
    
    if size == 1 { 
        print("NO")
        return
    }
    
    let half = size / 2
    for len in 1...half {
        var arr = [Int]()
        var arrStr = [String]()
        
        var flag = false
        var dynamicLen = len
        var countLen = 0
        
        var i = 0
        
        while i <= size - dynamicLen {
            let leftIndex = s.index(s.startIndex, offsetBy: i)
            let rightIndex = s.index(leftIndex, offsetBy: dynamicLen - 1)
            var sub = s[leftIndex...rightIndex]
            
            if (sub.first == "0") {
                flag = true
                break
            }
            
            let strSub = String(sub)
            arrStr.append(strSub)
            countLen += strSub.count
            
            let tempSet = Set(sub)
            if tempSet.contains("9") && tempSet.count == 1 {
                dynamicLen += 1
                i -= 1
            }
            
            i += dynamicLen
        }
        
        if flag { continue }
        if countLen != size { continue }
        
        // print(arrStr)
        arr = arrStr.map { Int($0)! }
        // print(countLen)
        for j in 1...arr.count-1 {
            if arr[j] - arr[j-1] != 1 {  break }
            if j == arr.count - 1 { 
                print("YES \(arr[0])")
                return
            }
        }
    }
    print("NO")
}
