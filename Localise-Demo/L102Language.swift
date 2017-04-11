//
//  L102Language.swift
//  Localise-Demo
//
//  Created by LA Argon on 11/04/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

// constants
let APPLE_LANGUAGE_KEY = "AppleLanguages"

/// L102Language
class L102Language {
    /// get current Apple language
    class func currentAppleLanguage() -> String {
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        let current = langArray.firstObject as! String
        let endIndex = current.startIndex
        let currentWithoutLocale = current.substring(to: current.index(endIndex, offsetBy: 2))
        return currentWithoutLocale
    }
    /// set @lang to be the first in Applelanguages list
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        userdef.set([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
    
}
