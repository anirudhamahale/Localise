//
//  MirroringTextField.swift
//  Localise-Demo
//
//  Created by LA Argon on 11/04/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class MirroringTextField: UITextField {

    override func layoutSubviews() {
        if self.tag < 0 {
            if UIApplication.isRTL()  {
                if self.textAlignment == .right {
                    return
                }
            } else {
                if self.textAlignment == .left {
                    return
                }
            }
        }
        if self.tag < 0 {
            if UIApplication.isRTL()  {
                self.textAlignment = .right
            } else {
                self.textAlignment = .left
            }
        }
    }
}

extension UITextField {
    public func cstmlayoutSubviews() {
        self.cstmlayoutSubviews()
        if self.tag <= 0  {
            if UIApplication.isRTL()  {
                if self.textAlignment == .right {
                    return
                }
            } else {
                if self.textAlignment == .left {
                    return
                }
            }
        }
        if self.tag <= 0 {
            if UIApplication.isRTL()  {
                self.textAlignment = .right
            } else {
                self.textAlignment = .left
            }
        }
    }
    
    public func localPlaceholder(with key: String, comment: String? = "") {
        self.placeholder = NSLocalizedString(key, comment: comment!)
    }
}
