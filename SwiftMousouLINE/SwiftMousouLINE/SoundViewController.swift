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
    var count = 0
    //経過時間用のタイマー
    var countTimer:NSTimer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //非表示
        imageView2.hidden = true;
        timeLabel.hidden = true;
        
        //着信音を再生
        playSound("callMusic")
        
    }
    
    @IBAction func catchBtn(sender: AnyObject) {
        print("catch")
        //imageView2を表示へ
        imageView2.hidden = false
        
        //timelabelを表示
        timeLabel.hidden = false
        
        //        timerをスタート
        //経過時間用のタイマー
        countTimer = NSTimer.scheduledTimerWithTimeInterval(
            1.0,    //何秒ごとにこのメソッドを実行するか。
            target: self,
            selector: "timerCountUp",  //どの関数を実行するか
            userInfo: nil,
            repeats: true    //繰り返し実行するかどうか
        )
        
        
        //        タイムラベルへ秒数を表示
        //        baby.mp3の音声を再生する
        playSound("baby")
    }
    
    func timerCountUp(){
        count = count + 1
        timeLabel.text = String(count)

    }
    
    func playSound(soundName:String){
        //着信音を再生
        do {
            // 音楽ファイルが"sample.mp3"の場合
            let filePath = NSBundle.mainBundle().pathForResource(soundName, ofType: "mp3")
            let audioPath = NSURL(fileURLWithPath: filePath!)
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
            audioPlayer.play()
        } catch {
            print("Error")
        }
    }
    
    @IBAction func denyBtn(sender: AnyObject) {
        print("deny")
        
        //電話を切る
        
        //音声をストップ
        audioPlayer.stop()
        
        //画面をトップへ戻す
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet var denyBtn: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}

