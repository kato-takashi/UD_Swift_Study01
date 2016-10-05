//
//  ViewController.swift
//  wiftCountUp1
//
//  Created by KatoTakashi on 2016/10/06.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var countLabel: UILabel!
    
    var countNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func plus(sender: AnyObject) {
        //プラス
        countNum++
        countLabel.text = String(countNum)
    }
    
    
    @IBAction func minus(sender: AnyObject) {
        //マイナス
        countNum--
        countLabel.text = String(countNum)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

