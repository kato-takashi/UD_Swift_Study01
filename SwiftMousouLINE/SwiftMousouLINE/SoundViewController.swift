//
//  ViewController.swift
//  SwiftMousouLINE
//
//  Created by KatoTakashi on 2016/10/25.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var imageView2: UIImageView!
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //非表示
        imageView2.hidden = true;
        timeLabel.hidden = true;
        
        //着信音を再生
        do {
            // 音楽ファイルが"sample.mp3"の場合
            let filePath = NSBundle.mainBundle().pathForResource("baby", ofType: "mp3")
            let audioPath = NSURL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
            audioPlayer.play()
        } catch {
            print("Error")
        }
        
    }
    
    @IBAction func catchBtn(sender: AnyObject) {
        print("catch")
        //imageView2を表示へ
        //        timerをスタート
        //        タイムラベルへ秒数を表示
        //        baby.mp3の音声を再生する
    }
    
    
    @IBAction func denyBtn(sender: AnyObject) {
        print("deny")
        
        //電話を切る
        //音声をストップ
        //画面をトップへ戻す
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}

