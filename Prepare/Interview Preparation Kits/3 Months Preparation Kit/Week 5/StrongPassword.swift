func minimumNumber(n: Int, password: String) -> Int {
    func hasDigit(_ password: String) -> Bool {
        for c in password { if c.isNumber { return true } }
        return false
    }
    
    func hasLowerCase(_ password: String) -> Bool {
        let lowerCase = "abcdefghijklmnopqrstuvwxyz"
        for c in password { if lowerCase.contains(c) { return true } }
        return false
    }
    
    func hasUpperCase(_ password: String) -> Bool {
        let upperCase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for c in password { if upperCase.contains(c) { return true } }
        return false
    }
    
    func hasSpecialCharacter(_ password: String) -> Bool {
        let specialCharacters = "!@#$%^&*()-+"
        for c in password { if specialCharacters.contains(c) { return true } }
        return false
    }
    
    var needToAdd = 0
    if !hasDigit(password) { needToAdd += 1 }
    if !hasLowerCase(password) { needToAdd += 1 }
    if !hasUpperCase(password) { needToAdd += 1 }
    if !hasSpecialCharacter(password) { needToAdd += 1 }
    if needToAdd + n < 6 { return 6 - n}
    return needToAdd
}
