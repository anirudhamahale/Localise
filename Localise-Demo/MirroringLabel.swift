//
//  MirroringLabel.swift
//  Localise-Demo
//
//  Created by LA Argon on 11/04/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class MirroringLabel: UILabel {

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

extension UILabel {
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
    
    public func local(with key: String, comment: String? = "") {
        self.text = NSLocalizedString(key, comment: comment!)
    }
}
