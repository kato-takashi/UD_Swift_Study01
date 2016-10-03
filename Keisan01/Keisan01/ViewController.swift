//
//  ViewController.swift
//  Keisan01
//
//  Created by KatoTakashi on 2016/10/04.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0 //0の入った変数
    var kakezan = 0
    var minus = 0
    var warizan = 0
    
    var takashi = "たかし"
    var kato = "加藤"
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 10
        count = 11
        
        count = count + 1
        
        //引き算
        minus = 10
        minus = minus - 5
        
        //掛け算
        kakezan = 10
        kakezan = kakezan * 10
        
        //割り算
        warizan = 10
        warizan = warizan / 2
        
        result = kato + " " + takashi
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

