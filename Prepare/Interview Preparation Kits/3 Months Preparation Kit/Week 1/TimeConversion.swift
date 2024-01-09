func timeConversion(s: String) -> String {
    let AM_PM = s.suffix(2)
    let hh = Int(s.prefix(2))!
    let mm_ss = s[s.index(s.startIndex, offsetBy: 2)...s.index(s.endIndex, offsetBy: -3)]
    
    print(AM_PM)
    print(hh)
    print(mm_ss)
    
    if AM_PM == "AM" {
        if hh == 12 {
            return "00\(mm_ss)"
        } else {
            return "\(s.prefix(2))\(mm_ss)"
        }
    } else {
        if hh < 12 {
            return "\(hh+12)\(mm_ss)"
        } else {
            return "\(s.prefix(2))\(mm_ss)"
        }
    }
}
