//
//  NextViewController.swift
//  SwiftButton1
//
//  Created by KatoTakashi on 2016/09/29.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func change(sender: AnyObject) {
        //次の画面
        changeLabel.text = "暗号解除されました"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}
