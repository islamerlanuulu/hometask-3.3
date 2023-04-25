//
//  ViewController.swift
//  hometask 3.3
//
//  Created by Islam Erlan Uulu on 18/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfill: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

    
    @IBAction func logit(_ sender: Any) {
        let login = textfill.checkForEmptiness()
        if login {
            self.performSegue(withIdentifier: "seg", sender: self)
        }
    }
    
    
    
}

extension UITextField {
    func checkForEmptiness() -> Bool {
            if self.text?.isEmpty == true {
                self.placeholder = "Заполните, пожалуйста"
                let color: UIColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                self.layer.borderColor =  #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
                return false
            } else {
                let color: UIColor =  #colorLiteral(red: 0.6470588446, green: 0.6470588446, blue: 0.6470588446, alpha: 0.4804852214)
                self.layer.borderColor =  #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
                self.placeholder = "Login"
                self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : color])
                return true
            }
    }
}
