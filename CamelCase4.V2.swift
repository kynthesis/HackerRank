var inputs = [String]()

while let input = readLine() {
    inputs.append(input)
}

for input in inputs {
    let elements = input.split(separator: ";")
    let mode = "\(elements[0])\(elements[1])"
    let info = "\(elements[2])"
    
    switch mode {
        case "SM":
        doSplitMethod(info)
        case "SC":
        doSplitClass(info)
        case "SV":
        doSplitVariable(info)
        case "CM":
        doCombineMethod(info)
        case "CC":
        doCombineClass(info)
        case "CV":
        doCombineVariable(info)
        default:
        print("Error")
    }
}

func doSplitMethod(_ info: String) {
    let methodName = String(info.prefix(info.count - 2))
    print(splitTerms(from: methodName).joined(separator: " "))
}

func doSplitClass(_ info: String) {
    let className = info
    print(splitTerms(from: className).joined(separator: " "))
}

func doSplitVariable(_ info: String) {
    let variableName = info
    print(splitTerms(from: variableName).joined(separator: " "))
}

func splitTerms(from s: String) -> [String] {
    var terms = [String]()
    
    var tempTerm = "\(s.first!.lowercased())"
    
    for letter in s[s.index(s.startIndex, offsetBy: 1)..<s.endIndex] {
        if letter.isUppercase {
            terms.append(tempTerm)
            tempTerm = String(letter.lowercased())
        } else {
            tempTerm += String(letter)
        }
    }
    
    if !tempTerm.isEmpty {
        terms.append(tempTerm)
    }
    
    return terms
}

func doCombineMethod(_ info: String) {
    var terms = info.split(separator: " ")
    let methodName = "\(terms[0])"
    terms.removeFirst()
    print(methodName + combineTerms(from: terms) + "()")
}

func doCombineClass(_ info: String) {
    let terms = info.split(separator: " ")
    print(combineTerms(from: terms))
}

func doCombineVariable(_ info: String) {
    let terms = info.split(separator: " ")
    let variableName = "\(terms[0])"
    print(variableName + combineTerms(from: terms))
}

func combineTerms(from a: [Substring]) -> String {
    var tempName = ""
    
    for term in a {
        let tempTerm = String(term)
        tempName += "\(tempTerm.first!.uppercased())" + "\(tempTerm.substring(from: 1))"
    }
    
    return tempName
}
