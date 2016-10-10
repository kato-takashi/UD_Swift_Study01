//
//  ViewController.swift
//  SwiftRunner1
//
//  Created by KatoTakashi on 2016/10/07.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    @IBOutlet var runnerImageView: UIImageView!
    
    var imageArray = [UIImage]()
    
    //経過時間用のタイマー
    var timer1:NSTimer?
    
    //画像を配列から出すスピード
    var timer2:NSTimer?
    
    var countUp = 0
    var updateCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像を格納
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")
        
        imageArray = [image0!, image1!, image2!, image3!, image4!, image5!]
        
        
    
    }

    @IBAction func start(sender: AnyObject) {
        updateCount = 0
        countUp = 0
        //経過時間用のタイマー
        timer1 = NSTimer.scheduledTimerWithTimeInterval(
            1.0,    //何秒ごとにこのメソッドを実行するか。
            target: self,
            selector: "keikajikan",  //どの関数を実行するか
            userInfo: nil,
            repeats: true    //繰り返し実行するかどうか
        )
        
        timer2 = NSTimer.scheduledTimerWithTimeInterval(
            0.1,    //何秒ごとにこのメソッドを実行するか。
            target: self,
            selector: "updateCount01",  //どの関数を実行するか
            userInfo: nil,
            repeats: true    //繰り返し実行するかどうか
        )
    }
    
    
    @IBAction func stop(sender: AnyObject) {
        timer1?.invalidate()
        timer2?.invalidate()
    }
    
    func keikajikan(){
        countUp = countUp + 1
        countLabel.text = String(countUp)
    }
    
    func updateCount01(){
        updateCount = updateCount + 1
        
        if(updateCount > 5){
            updateCount = 0
        }else{
            runnerImageView.image = imageArray[updateCount]
            
        }
            
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

