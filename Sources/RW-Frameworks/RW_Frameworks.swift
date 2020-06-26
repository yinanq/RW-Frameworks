import UIKit

public class RW_Frameworks {
    
    /// converts color from hex to UIColor
    /// - Parameters:
    ///   - hexString: color's name in 6-digit hex format, "#" prefix is unnecessary but compatible
    ///   - alpha: opacity, from 1 opacque to 0 transparent
    /// - Returns: given color converted
    internal class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
    
    /// return UIColor of color #006736
    public static var rwfColor: UIColor {
        return self.colorFromHexString("006736")
    }
    
}
