//
//  ViewController.swift
//  Localise-Demo
//
//  Created by LA Argon on 11/04/17.
//  Copyright © 2017 LA Argon. All rights reserved.
//

import UIKit

class ViewController: MirroringViewController {
    
    @IBOutlet weak var localMe: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var textV: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.localMe.local(with: "localize me please")
        self.textF.localPlaceholder(with: "placeholder")
        self.textV.localPlaceholder(with: "placeholder")
        self.textV.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchLanguage(_ sender: Any) {
        if !UIApplication.isRTL() {
            L102Language.setAppleLAnguageTo(lang: "ar")
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        } else {
            L102Language.setAppleLAnguageTo(lang: "en")
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        UIView.transition(with: mainwindow, duration: 0.55001, options: .transitionFlipFromLeft, animations: { () -> Void in
        }) { (finished) -> Void in
        }
        
    }


}

