//
//  ViewController.swift
//  testFieldAutoSpace
//
//  Created by Adsum MAC 1 on 17/11/21.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        let count = text.count
        if string != "" {
            
            if count > 7{
                return false
            }
            if count % 4 == 0{
                textField.text?.append(" ")
            }
            return true
        }
        return true
    }
}


