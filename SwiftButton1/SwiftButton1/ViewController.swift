//
//  ViewController.swift
//  SwiftButton1
//
//  Created by KatoTakashi on 2016/09/29.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //count変数の中に5が入っています
    var count = 5
    var moji = "あいうえお"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        count = 10
        print(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

