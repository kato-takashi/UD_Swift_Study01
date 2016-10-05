//
//  ViewController.swift
//  SwiftImageVIew
//
//  Created by KatoTakashi on 2016/10/04.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backImageView: UIImageView!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 1
    }
    
    
    @IBAction func changeBtn(sender: AnyObject) {
        
        
        if(count == 0){
            //backImageViewのパーツ画像を変更
            backImageView.image = UIImage(named: "back1.jpg")
            count = 1
        }else if(count == 1){
            //backImageViewのパーツ画像を変更
            backImageView.image = UIImage(named: "back2.jpg")
            count = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

