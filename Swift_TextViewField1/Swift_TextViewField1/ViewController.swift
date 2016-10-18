//
//  ViewController.swift
//  Swift_TextViewField1
//
//  Created by KatoTakashi on 2016/10/19.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var aiueoTextField: UITextField!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        aiueoTextField.delegate = self;
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //キーボードのリターンキーが呼ばれた時
        aiueoTextField.resignFirstResponder()
        
        //aiueoTextFieldをラベルに反映
        label.text = aiueoTextField.text
        
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }


}

