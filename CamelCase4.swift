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
    let methodName = info.prefix(info.count - 2)
    var terms = [String]()
    
    var tempTerm = "\(methodName.first!)"
    
    for letter in methodName[methodName.index(methodName.startIndex, offsetBy: 1)..<methodName.endIndex] {
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
    
    print(terms.joined(separator: " "))
}

func doSplitClass(_ info: String) {
    let className = info
    var terms = [String]()
    
    var tempTerm = "\(className.first!.lowercased())"
    
    for letter in className[className.index(className.startIndex, offsetBy: 1)..<className.endIndex] {
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
    
    print(terms.joined(separator: " "))
}

func doSplitVariable(_ info: String) {
    let variableName = info
    var terms = [String]()
    
    var tempTerm = "\(variableName.first!)"
    
    for letter in variableName[variableName.index(variableName.startIndex, offsetBy: 1)..<variableName.endIndex] {
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
    
    print(terms.joined(separator: " "))
}

func doCombineMethod(_ info: String) {
    let terms = info.split(separator: " ")
    var methodName = "\(terms[0])"
    
    for term in terms[terms.index(terms.startIndex, offsetBy: 1)..<terms.endIndex] {
        let tempTerm = String(term)
        methodName += "\(tempTerm.first!.uppercased())" + "\(tempTerm.substring(from: 1))"
    }
    
    methodName += "()"
    print(methodName)
}

func doCombineClass(_ info: String) {
    let terms = info.split(separator: " ")
    var className = ""
    
    for term in terms {
        let tempTerm = String(term)
        className += "\(tempTerm.first!.uppercased())" + "\(tempTerm.substring(from: 1))"
    }
    
    print(className)
}

func doCombineVariable(_ info: String) {
    let terms = info.split(separator: " ")
    var variableName = "\(terms[0])"
    
    for term in terms[terms.index(terms.startIndex, offsetBy: 1)..<terms.endIndex] {
        let tempTerm = String(term)
        variableName += "\(tempTerm.first!.uppercased())" + "\(tempTerm.substring(from: 1))"
    }
    
    print(variableName)
}
