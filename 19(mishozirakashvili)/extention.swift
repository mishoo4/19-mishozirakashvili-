//
//  extention.swift
//  19(mishozirakashvili)
//
//  Created by misho zirakashvili on 21.07.22.
//

import Foundation

import UIKit
extension UITextField {
    func textPadding(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
