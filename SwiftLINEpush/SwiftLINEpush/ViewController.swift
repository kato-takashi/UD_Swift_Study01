//
//  ViewController.swift
//  SwiftLINEpush
//
//  Created by KatoTakashi on 2016/11/09.
//  Copyright © 2016年 KatoTakashi. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var whoTextfield: UITextField!
    @IBOutlet var honbunTextField: UITextField!
    var resultString = ""
    var ketsugouString = ":"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whoTextfield.delegate = self
        honbunTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField:UITextField) -> Bool{
        //キーボードのリターンキーが押されたときに呼ばれるデリゲートメソッド
        
        //whoTextFieldのテキストとhonbunTextFieldのテキストを統合したい
        resultString = whoTextfield.text! + ketsugouString + honbunTextField.text!
        
        //キーボードを閉じる
        textField.resignFirstResponder()
        
        
        return true
    }

    
    @IBAction func Tao(_ sender: Any) {
        //プッシュ通知を発動
        startPush()
    }
    
    //プッシュ通知に関するメソッド
    func startPush(){
        print("push start")

        let content = UNMutableNotificationContent()
        
        //テキストフィールドの文字を代入
        content.body = resultString
        
        //どのタイミングでPush通知を発火させるか
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 4.0, repeats:false)
        let requestidentifier = "LINE_Push"
        let request = UNNotificationRequest(identifier: requestidentifier, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: {err in
            //エラー処理
        })
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

