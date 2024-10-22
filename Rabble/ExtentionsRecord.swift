//
//  ExtentionsRecord.swift
//  Rabble
//
//  Created by Mujahed Ansari on 17/10/24.
//

import Foundation
import UIKit

extension UIColor {
    
    class var appBgColor: UIColor  { return UIColor(named: Constants.colorName.appColorLabel) ?? .white   }
    class var aapTextHeadingColor: UIColor  { return UIColor(named: Constants.colorName.colorHeadingText) ?? .black   }
    class var appButtonColor: UIColor  { return UIColor(named: Constants.colorName.buttonColor) ?? .blue   }
    class var aapButtonTextColor : UIColor  { return UIColor(named: Constants.colorName.buttonTextColor) ?? .darkText   }
    class var appTextColor : UIColor  { return UIColor(named: Constants.colorName.textColor) ?? .colorText   }
    class var appContinueButtonText : UIColor  { return UIColor(named: Constants.colorName.colorContinueButtonText) ?? .colorText   }
    
}


extension UIView {
    
    var width: CGFloat { return frame.width }
    var height: CGFloat { return frame.height }
}


 extension String {
    func setColor(_ color: UIColor, ofSubstring substring: String) -> NSMutableAttributedString {
        let range = (self as NSString).range(of: substring)
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        return attributedString
    }
}
